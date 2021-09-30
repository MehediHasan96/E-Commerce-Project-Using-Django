from django.shortcuts import render, redirect, HttpResponseRedirect, reverse, get_object_or_404
from Product.models import Product
from django.contrib import messages
from OrderApp.models import ShopCart, Order, BillingAddress
from EcomApp.models import Setting
from django.contrib.auth.decorators import login_required
from OrderApp.forms import BillingForm
# for payment
from sslcommerz_python.payment import SSLCSession
from decimal import Decimal
from django.views.decorators.csrf import csrf_exempt


@login_required(login_url='/user/login')
def Add_to_Shoping_cart(request, id):

    item = get_object_or_404(Product, id=id)
    print("Item")
    print(item)
    order_item = ShopCart.objects.get_or_create(
        product=item, user=request.user, purchased=False)
    print("Order Item Object:")
    print(order_item)
    print(order_item[0])
    order_qs = Order.objects.filter(user=request.user, ordered=False)

    # print(order_qs[0])
    if order_qs.exists():
        order = order_qs[0]
        #print("If Order exist")
        # print(order)
        if order.orderitems.filter(product=item).exists():
            order_item[0].quantity += 1
            order_item[0].save()
            return redirect("home")
        else:
            order.orderitems.add(order_item[0])
            return redirect("home")
    else:
        order = Order(user=request.user)
        order.save()
        order.orderitems.add(order_item[0])
        return redirect("home")


@login_required
def cart_view(request):
    setting = Setting.objects.get(id=1)
    carts = ShopCart.objects.filter(user=request.user, purchased=False)
    orders = Order.objects.filter(user=request.user, ordered=False)
    if carts.exists() and orders.exists():
        order = orders[0]
        return render(request, 'cart_details.html', context={'carts': carts, 'order': order, "setting": setting, })
    else:
        return redirect("home")


@login_required
def remove_from_cart(request, id):
    item = get_object_or_404(Product, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(product=item).exists():
            order_item = ShopCart.objects.filter(
                product=item, user=request.user, purchased=False)[0]
            order.orderitems.remove(order_item)
            order_item.delete()
            return redirect("cart")
        else:
            return redirect("home")
    else:
        return redirect("home")


@login_required
def increase_cart(request, id):
    item = get_object_or_404(Product, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(product=item).exists():
            order_item = ShopCart.objects.filter(
                product=item, user=request.user, purchased=False)[0]
            if order_item.quantity >= 1:
                order_item.quantity += 1
                order_item.save()
                return redirect("cart")
        else:
            return redirect("home")
    else:
        return redirect("home")


@login_required
def decrease_cart(request, id):
    item = get_object_or_404(Product, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(product=item).exists():
            order_item = ShopCart.objects.filter(
                product=item, user=request.user, purchased=False)[0]
            if order_item.quantity > 1:
                order_item.quantity -= 1
                order_item.save()
                return redirect("cart")
            else:
                order.orderitems.remove(order_item)
                order_item.delete()
                return redirect("cart")
        else:
            return redirect("home")
    else:
        return redirect("home")


@login_required
def checkout(request):
    setting = Setting.objects.get(id=1)
    saved_address = BillingAddress.objects.get_or_create(user=request.user)
    saved_address = saved_address[0]
    print(saved_address)
    form = BillingForm(instance=saved_address)
    if request.method == "POST":
        form = BillingForm(request.POST, instance=saved_address)
        if form.is_valid():
            form.save()
            form = BillingForm(instance=saved_address)
            messages.success(request, f"Shipping Address Saved!")
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    order_items = order_qs[0].orderitems.all()
    order_total = order_qs[0].get_totals()
    return render(request, 'checkout.html', context={"form": form, "order_items": order_items, "order_total": order_total, "saved_address": saved_address, "setting": setting, })


@login_required
def payment(request):
    saved_address = BillingAddress.objects.get_or_create(user=request.user)
    saved_address = saved_address[0]
    if not saved_address.is_fully_filled():
        messages.info(request, f"Please complete shipping address!")
        return redirect("checkout")

    if not request.user.profile.is_fully_filled():
        messages.info(request, f"Please complete profile details!")
        return redirect("userprofile")

    store_id = 'none5e026730bdf7f'
    API_key = 'none5e026730bdf7f@ssl'
    mypayment = SSLCSession(sslc_is_sandbox=True,
                            sslc_store_id=store_id, sslc_store_pass=API_key)

    status_url = request.build_absolute_uri(reverse("complete"))
    # print(status_url)
    mypayment.set_urls(success_url=status_url, fail_url=status_url,
                       cancel_url=status_url, ipn_url=status_url)

    order_qs = Order.objects.filter(user=request.user, ordered=False)
    order_items = order_qs[0].orderitems.all()
    order_items_count = order_qs[0].orderitems.count()
    order_total = order_qs[0].get_totals()

    mypayment.set_product_integration(total_amount=Decimal(order_total), currency='BDT', product_category='Mixed',
                                      product_name=order_items, num_of_item=order_items_count, shipping_method='Courier', product_profile='None')

    current_user = request.user
    mypayment.set_customer_info(name=current_user.first_name, email=current_user.email, address1=current_user.profile.address, address2=current_user.profile.address,
                                city=current_user.profile.city, postcode=current_user.profile.zipcode, country=current_user.profile.country, phone=current_user.profile.phone)

    mypayment.set_shipping_info(shipping_to=current_user.first_name, address=saved_address.address,
                                city=saved_address.city, postcode=saved_address.zipcode, country=saved_address.country)

    response_data = mypayment.init_payment()
    return redirect(response_data['GatewayPageURL'])


@csrf_exempt
def complete(request):
    if request.method == 'POST' or request.method == 'post':
        payment_data = request.POST
        status = payment_data['status']

        if status == 'VALID':
            val_id = payment_data['val_id']
            tran_id = payment_data['tran_id']
            messages.success(
                request, f"Your Payment Completed Successfully! Page will be redirected!")
            return HttpResponseRedirect(reverse("purchase", kwargs={'val_id': val_id, 'tran_id': tran_id},))
        elif status == 'FAILED':
            messages.warning(
                request, f"Your Payment Failed! Please Try Again! Page will be redirected!")

    return render(request, "complete.html", context={})


@login_required
def purchase(request, val_id, tran_id):
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    order = order_qs[0]
    orderId = tran_id
    order.ordered = True
    order.orderId = orderId
    order.paymentId = val_id
    order.save()
    cart_items = ShopCart.objects.filter(user=request.user, purchased=False)
    for item in cart_items:
        item.purchased = True
        item.save()
    return HttpResponseRedirect(reverse("home"))


@login_required
def order_view(request):
    try:
        orders = Order.objects.filter(user=request.user, ordered=True)
        setting = Setting.objects.get(id=1)
        context = {"orders": orders, "setting": setting, }
    except:
        return redirect("home")
    return render(request, "order.html", context)
