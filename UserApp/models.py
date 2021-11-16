from django.db import models
from django.contrib.auth.models import User
from django.utils.safestring import mark_safe
from django.dispatch import receiver
from django.db.models.signals import post_save



# Create your models here.




class UserProfile(models.Model):
	user=models.OneToOneField(User,on_delete=models.CASCADE, related_name='profile')
	phone=models.CharField(blank=True,max_length=20)
	address = models.CharField(blank=True,max_length=200)
	city = models.CharField(blank=True,max_length=200)
	country = models.CharField(blank=True,max_length=200)
	zipcode=models.CharField(blank=True,max_length=20)#done
	image=models.ImageField(blank=True,upload_to='user_img')

	def __str__(self):
		return self.user.username


	def user_name(self):
		return self.user.first_name+' '+ self.user.last_name+'['+self.user.username+']'

	def  image_tag(self):
		return mark_safe('<img src="{}" heights="50" width="50" />'.format(self.image.url))
	image_tag.short_description='Image'
	
	def imageUrl(self):
		if self.image:
			return self.image.url
		else:
			return 
    
	def is_fully_filled(self):#done
		field_names = [f.name for f in self._meta.get_fields()]

		for field_name in field_names:
			value =getattr(self,field_name)
			if value is None or value=='':
				return False
		return True		


        	

	
	

	