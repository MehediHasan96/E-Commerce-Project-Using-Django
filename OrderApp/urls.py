from django.urls import path
from OrderApp.views import(
    Add_to_Shoping_cart, 
  checkout,payment,complete,purchase, order_view, cart_view, increase_cart, decrease_cart, remove_from_cart,
)
urlpatterns = [
    path('addingcart/<int:id>/', Add_to_Shoping_cart, name='Add_to_Shoping_cart'),
    path('checkout/', checkout, name="checkout"),
    path('pay/', payment, name="payment"),
    path('status/', complete, name="complete"),
    path('purchase/<val_id>/<tran_id>/', purchase, name="purchase"),
    path('orders/', order_view, name="orders"),
    path('cart/', cart_view, name="cart"),
    path('increase/<int:id>/', increase_cart, name="increase"),
    path('decrease/<int:id>/', decrease_cart, name="decrease"),
    path('remove/<int:id>/', remove_from_cart, name="remove"),
]



    
   


