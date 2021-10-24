from django.shortcuts import render, redirect
from EcomApp.models import Setting, ContactMessage, ContactForm
from django.contrib import messages
from Product.models import Product, Images, Category, Comment
from OrderApp.models import ShopCart
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def Home(request):
    current_user = request.user
    cart_product = ShopCart.objects.filter(user_id=current_user.id)
    setting = Setting.objects.get(pk=1)
    total_amount = 0
    for p in cart_product:
        total_amount += p.product.new_price*p.quantity

    sliding_images = Product.objects.all().order_by('id')[:2]
    latest_products = Product.objects.all().order_by('-id')
    products = Product.objects.all()

    total_quan = 0
    for p in cart_product:
        total_quan += p.quantity

    context = {
        'sliding_images': sliding_images,
        'latest_products': latest_products,
        'products': products,
        'cart_product': cart_product,
        'total_amount': total_amount,
        'total_quan': total_quan,
        'setting': setting,
    }
    return render(request, 'home.html', context)


def About(request):
    setting = Setting.objects.get(pk=1)
    context = {
        'setting': setting,
    }
    return render(request, 'about.html', context)


def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            data = ContactMessage()
            data.name = form.cleaned_data['name']
            data.email = form.cleaned_data['email']
            data.subject = form.cleaned_data['subject']
            data.message = form.cleaned_data['message']
            data.ip = request.META.get('REMOTE_ADDR')
            data.save()
            messages.success(request, 'Profile details updated.')

            return redirect('contact_dat')

    form = ContactForm
    setting = Setting.objects.get(pk=1)

    context = {
        'form': form,
        'setting': setting,
    }
    return render(request, 'contact_form.html', context)


def SearchView(request):

    if request.method == 'GET':
        search = request.GET.get('search')
        data = Product.objects.filter(title__icontains=search)
        setting = Setting.objects.get(id=1)
        return render(request, 'search.html', context={'data': data,  'setting': setting, })


def product_single(request, id):
    category = Category.objects.all()
    setting = Setting.objects.get(id=1)
    product = Product.objects.get(id=id)
    images = Images.objects.filter(product_id=id)
    products = Product.objects.all().order_by('id')[:5]
    comment_show = Comment.objects.filter(product_id=id, status='True')

    context = {
        'category': category,
        'setting': setting,
        'single_product': product,
        'images': images,
        'products': products,
        'comment_show': comment_show
    }

    return render(request, 'product-single.html', context)


def category_product(request, id, slug):
    category = Category.objects.all()
    setting = Setting.objects.get(id=1)
    sliding_images = Product.objects.all().order_by('id')[:2]
    product_cat_list = Product.objects.filter(category_id=id)
    paginator = Paginator(product_cat_list, 3)
    page = request.GET.get('page')
    try:
        product_cat = paginator.page(page)
    except PageNotAnInteger:
        product_cat = paginator.page(1)

    except EmptyPage:
        product_cat = paginator.page(paginator.num_pages)
    context = {
        'category': category,
        'setting': setting,
        'product_cat': product_cat,
        'sliding_images': sliding_images,
    }
    return render(request, 'category_products.html', context)
