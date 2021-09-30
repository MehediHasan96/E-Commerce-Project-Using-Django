from django.shortcuts import render, redirect
from django.contrib.auth import logout
from django.contrib.auth import admin



def user_signout(request):
    logout(request)
    return redirect("/admin/")
