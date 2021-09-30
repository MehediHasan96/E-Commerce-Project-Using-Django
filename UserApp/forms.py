from django.contrib.auth.models import User
from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.forms import ModelForm, TextInput, NumberInput, EmailInput, PasswordInput, Select, FileInput
from UserApp.models import UserProfile


class SignUpForm(UserCreationForm):
    username = forms.CharField(max_length=100, label="Username", widget=forms.TextInput(
        attrs={'placeholder': 'Write Your username', }))
    email = forms.EmailField(max_length=200, label='Email', widget=forms.EmailInput(
        attrs={'placeholder': 'Write Your email'}))
    first_name = forms.CharField(max_length=100, label="First Name", widget=forms.TextInput(
        attrs={'placeholder': 'Write Your first name'}))
    last_name = forms.CharField(max_length=100, label="Last Name", widget=forms.TextInput(
        attrs={'placeholder': 'Write Your last name'}))

    class Meta:
        model = User
        fields = ['username', 'email', 'first_name',
                  'last_name', 'password1', 'password2']
        widgets = {
            'password1': forms.PasswordInput(attrs={'placeholder': 'Enter New Password',
                                                    'class': 'form-control'}),
            'password2': forms.PasswordInput(attrs={'placeholder': 'Enter Repeat password',
                                                    'class': 'form-control'}),
        }


class UserUpdateForm(UserChangeForm):
    class Meta:
        model = User
        fields = ('username', 'email', 'first_name', 'last_name')
        widgets = {
            'username': TextInput(attrs={'class': 'input', 'placeholder': 'username'}),
            'email': EmailInput(attrs={'class': 'input', 'placeholder': 'email'}),
            'first_name': TextInput(attrs={'class': 'input', 'placeholder': 'first_name'}),
            'last_name': TextInput(attrs={'class': 'input', 'placeholder': 'last_name'}),

        }


CITY = [
    ('Dhaka', 'Dhaka'),
    ('Cumilla', 'Cumilla'),
    ('Chattogram', 'Chattogram'),
    ('Gazipur', 'Gazipur'),
    ('Rajshahi', 'Rajshahi'),
    ('Rangpur', 'Rangpur'),
    ('Barisal', 'Barisal'),
    ('Khulna', 'Khulna'),

]


class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ('phone', 'address', 'city', 'country', 'image', 'zipcode')
        widgets = {
            'phone': TextInput(attrs={'class': 'input', 'placeholder': 'phone'}),
            'address': TextInput(attrs={'class': 'input', 'placeholder': 'address'}),
            # done
            'zipcode': TextInput(attrs={'class': 'input', 'placeholder': 'zipcode'}),
            'city': Select(attrs={'class': 'input', 'placeholder': 'city'}, choices=CITY),
            'country': TextInput(attrs={'class': 'input', 'placeholder': 'country'}),
            'image': FileInput(attrs={'class': 'input', 'placeholder': 'image', }),
        }
