from django.db.models import *
from django.contrib.auth.models import User


# Create your models here.
def default_foto():
    return 'img/default.jpg'
  
class Viaje(Model):
    titulo   = CharField(max_length=20, null=False)
    ciudad   = CharField(max_length=20, null=False)
    descripcion = CharField(max_length=400, null=False)
    duracion = CharField(max_length=20, null=False)
    precio   = IntegerField(null=False)
    cantidad = IntegerField(null=False)
    foto = ImageField(upload_to='img/', default=default_foto)


def default_foto():
    return 'img/'

class Producto(Model):
    nombre   = CharField(max_length=20, null=False)
    precio   = IntegerField(null=False)
    cantidad = IntegerField(null=False)
    foto     = ImageField(upload_to='img/', null=False, default=default_foto)