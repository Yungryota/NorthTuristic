from django.urls import path
from .views import *

urlpatterns = [
    path('productos/', mostrar_viajes, name='mostrar_viajes')
]