from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views
from.views import user_signout


urlpatterns = [
    path('admin/', admin.site.urls),
    path('logout/', user_signout, name='logout'),
    path('', include('EcomApp.urls')),
    path('order/', include('OrderApp.urls')),
    path('user/', include('UserApp.urls')),
    path('product/', include('Product.urls')),
    path('accounts/', include('django.contrib.auth.urls')),

]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
