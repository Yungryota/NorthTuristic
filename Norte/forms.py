from django import forms 
from .models import *
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm


class PersonaForm(forms.ModelForm):
    run = forms.IntegerField(label='RUN')

    class Meta:
        model = Persona
        fields = ('run', 'nombre', 'apellido', 'password', 'edad')
    

class CustomeUserCreationForm(UserCreationForm):
    pass
