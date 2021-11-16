from django.contrib.auth.models import User
from django.dispatch import receiver
from django.db.models.signals import post_save
from .models import UserProfile


@receiver(post_save, sender=User)
def create_profile(sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user=instance)
        
        
@receiver(post_save, sender=User)
def update_profile(sender, instance, created, **kwargs):
    if created==False:
        instance.profile.save()