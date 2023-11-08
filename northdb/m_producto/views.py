from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from sweetify import success, warning
from .models import Viaje

# Create your views here.

def mostrar_viajes(request):
    viajes = Viaje.objects.all()
    contexto = {
        'viajes': viajes
    }
    return render(request,'productos.html', contexto)