from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from .models import *
from django.template.context_processors import csrf
from .forms import *  
from django import forms
from django.forms import ModelForm
from django.contrib import messages
from django.contrib.auth import authenticate,login
from .forms import PersonaForm
from django.http import HttpResponse
import os

# Create your views here.

def pprincipal(request):
    context={}
    return render(request,'Norte/pprincipal.html',context)


def salir(request):
    logout(request)
    return redirect('/')


def registro(request):
    data = {
        'form':CustomeUserCreationForm()
    }

    if request.method =='POST':
        formulario= CustomeUserCreationForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username=formulario.cleaned_data['username'], password=formulario.cleaned_data['password1'])
            login(request,user)
            messages.success(request,'Bienvenido, Te has registrado correctame')
            return redirect(to="pprincipal")
        data['form'] = formulario
    return render(request,'registration/registro.html',data)

def nosotros(request):
    context={}
    return render(request,'Norte/nosotros.html',context)

def viajar(request):
    context={}
    return render(request, 'Norte/viajar.html', context)

def contacto(request):
    context={}
    return render(request,'Norte/contacto.html',context)
                
def crud(request):
     personas = Persona.objects.all()
     context = {'personas': personas}
     return render (request, 'Norte/personas_list.html',context)

def personasAdd(request):
     personas = Persona.objects.all()
     context = {'personas': personas}
     return render (request, 'Norte/personas_add.html',context)

def personasAdd(request):
    if request.method == 'POST':
        form = PersonaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('crud')
    else:
        form = PersonaForm()
    context = {'form': form}
    return render(request, 'Norte/personas_add.html', context)


def personas_findEdit(request, pk):
    try:
        persona = Persona.objects.get(pk=pk)
    except Persona.DoesNotExist:
        return HttpResponse("La persona no existe")

    if request.method == 'POST':
        persona.nombre = request.POST.get('nombre')
        persona.apellido = request.POST.get('apellido')
        persona.edad = request.POST.get('edad')
        persona.save()
        return redirect('personas_list')  # Redirige a la lista de personas después de guardar los cambios

    context = {
        'persona': persona
    }
    return render(request, 'Norte/personas_findEdit.html', context)

def personas_del(request):
     personas = Persona.objects.all()
     context = {'personas': personas}
     return render (request, 'Norte/personas_del.html',context)

def personas_del(request, pk):
    try:
        persona = Persona.objects.get(pk=pk)
        persona.delete()
        return redirect('crud')
    except Persona.DoesNotExist:
        return HttpResponse("La persona no existe")

def personas_list(request):
     personas = Persona.objects.all()
     context = {'personas': personas}
     return render (request, 'Norte/personas_list.html',context)
