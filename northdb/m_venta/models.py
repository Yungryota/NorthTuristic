from django.db.models import *
from django.contrib.auth.models import User
from m_producto.models import Viaje

# Create your models here.
class Venta(Model):
    total_cant = CharField(max_length=20, null=True)
    user = ForeignKey(User, on_delete=CASCADE)
    fecha_venta = DateTimeField(auto_now=True)

    def __str__(self):
        return f"Venta {self.pk} - Usuario: {self.user.username}"

class Carrito(Model):
    user = ForeignKey(User, on_delete=CASCADE)

class ItemCarrito(Model):
    carrito = ForeignKey(Carrito, on_delete=CASCADE)
    viaje = ForeignKey(Viaje, on_delete=CASCADE)

class ViajeVenta(Model):
    venta = ForeignKey(Venta, on_delete=CASCADE)
    titulo = ForeignKey(Viaje, on_delete=CASCADE)
