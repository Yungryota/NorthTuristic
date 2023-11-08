#from django.conf.urls import url
from django.urls import path
from . import views
from django.urls import path, include



urlpatterns = [
    path('',views.pprincipal, name='pprincipal'),
    path('login',views.login, name='login'),
    path('registro',views.registro, name='registro'),
    path('viajar',views.viajar, name='viajar'),
    path('nosotros',views.nosotros, name='nosotros'),
    path('crud', views.crud, name='crud'),
    path('personasAdd', views.personasAdd, name='personasAdd'),
    path('personas_del/<int:pk>/', views.personas_del, name='personas_del'),
    path('personas_findEdit/<int:pk>/', views.personas_findEdit, name='personas_findEdit'),
    path('personas_list', views.personas_list, name='personas_list'),
    path('contacto',views.contacto, name='contacto'),
]