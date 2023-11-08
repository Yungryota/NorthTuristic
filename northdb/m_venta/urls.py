from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .views import *
from m_producto.views import mostrar_viajes

urlpatterns = [
    path('viajes/<int:viaje_id>/', agregar_al_carrito, name='vista_carrito'),
    path('carrito/', mostrar_carrito, name='ver_carrito'),
    path('carrito/eliminar/<int:item_id>/', eliminar_producto, name='eliminar_prod'),
    path('carrito/limpiar/', limpiar_carrito, name='limpiar_carrito'),
    path('comprobante/<int:carrito_id>/', generar_comprobante, name='generar_comprobante'),
    path('pagar/', pagar_total, name='pagar_total'),
    path('historial/', historial_ventas, name='historial_ventas'),
    path('listar/', listar_viajes, name='listar_viajes'),
    path('editar/<int:viaje_id>/', editar_viaje, name='editar_viaje'),
    path('crear/', crear_viaje, name='crear_viaje'),
    path('eliminar/<int:viaje_id>/', eliminar_viaje, name='eliminar_viaje'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)