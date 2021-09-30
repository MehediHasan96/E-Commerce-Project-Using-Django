from django.contrib import admin
from OrderApp.models import ShopCart, Order, BillingAddress


class ShopCartAdmin(admin.ModelAdmin):
    list_display = ['product', 'user', 'quantity', 'price', 'amount']
    list_filter = ['user']


admin.site.register(ShopCart, ShopCartAdmin)
admin.site.register(Order)
admin.site.register(BillingAddress)
