from django.db import models
from Product.models import Product
from django.contrib.auth.models import User
from django.forms import ModelForm
from django.utils.safestring import mark_safe
from django.conf import settings


class ShopCart(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    purchased = models.BooleanField(default=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return f'{self.quantity} X {self.product}'

    def get_total(self):
        total = self.product.new_price * self.quantity
        float_total = format(total, '0.2f')
        return float_total

    def price(self):
        return self.product.new_price

    @property
    def amount(self):
        return self.quantity*self.product.new_price


class Order(models.Model):
    orderitems = models.ManyToManyField(ShopCart)
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.CASCADE)
    ordered = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=True)
    paymentId = models.CharField(max_length=264, blank=True, null=True)
    orderId = models.CharField(max_length=200, blank=True, null=True)

    def get_totals(self):
        total = 0
        for order_item in self.orderitems.all():
            total += float(order_item.get_total())
        return total

    def __str__(self):
        return str(self.orderId)
       

class BillingAddress(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.CASCADE)
    address = models.CharField(max_length=264, blank=True)
    zipcode = models.CharField(max_length=10, blank=True)
    city = models.CharField(max_length=30, blank=True)
    country = models.CharField(max_length=20, blank=True)

    def __str__(self):
        return f"{self.user.profile.user}'s billing address"

    def is_fully_filled(self):
        field_names = [f.name for f in self._meta.get_fields()]

        for field_name in field_names:
            value = getattr(self, field_name)
            if value is None or value == '':
                return False
        return True
