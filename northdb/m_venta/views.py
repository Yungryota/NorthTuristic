from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.decorators import login_required
from m_producto.models import Viaje
from .models import *
from django.db.models import Sum
from sweetify import success, warning, info, error
from .forms import ViajeForm 
# Create your views here.
@login_required
def agregar_al_carrito(request, viaje_id):
    viaje = get_object_or_404(Viaje, id=viaje_id)
    print(viaje)
    carrito = Carrito.objects.filter(user=request.user).first()
    print(carrito)

    if viaje.cantidad== 0:
        return redirect('viajes_agotados')

    if carrito:
        item_carrito = ItemCarrito.objects.filter(carrito=carrito, viaje=viaje).first()
        if item_carrito:
            item_carrito.save()
        else:
            item_carrito = ItemCarrito(carrito=carrito, viaje=viaje)
            item_carrito.save()
    else:
        carrito = Carrito(user=request.user)
        carrito.save()
        item_carrito = ItemCarrito(carrito=carrito, viaje=viaje)
        item_carrito.save()

    viaje.save()

    success(request,'Viaje agregado a tu carrito :3')
    return redirect('mostrar_viajes')

@login_required
def mostrar_carrito(request):
    carrito = Carrito.objects.filter(user=request.user).first()

    if not carrito:
        carrito = Carrito(user=request.user)
        carrito.save()

    items = ItemCarrito.objects.filter(carrito=carrito)
    total_cant = 0

    for item in items:
        total_cant += item.viaje.precio

    context = {
        'carrito': carrito,
        'items': items,
        'total_cant': total_cant
    }

    return render(request, 'carrito.html', context)
    


@login_required
def eliminar_producto(request, item_id):
    item = get_object_or_404(ItemCarrito, id=item_id)
    item.delete()
    return redirect('ver_carrito')

@login_required
def limpiar_carrito(request):
    carrito = Carrito.objects.filter(user=request.user).first()
    if carrito:
        items = ItemCarrito.objects.filter(carrito=carrito)
        items.delete()
    return redirect('ver_carrito')

def generar_comprobante(request, carrito_id):
    carrito = get_object_or_404(Carrito, id=carrito_id)
    items = ItemCarrito.objects.filter(carrito=carrito)
    total = 0
    for item in items:
        total += item.viaje.precio 

    context = {
        'carrito': carrito,
        'items': items,
        'total': total,
    }

    return render(request, 'pay.html', context)


def pagar_total(request):
    carrito = Carrito.objects.filter(user=request.user).first()
    total_cant = carrito.itemcarrito_set.aggregate(total=Sum(F('viaje__precio')))

    venta = Venta(total_cant=total_cant, user=request.user)
    venta.save()

    for item in carrito.itemcarrito_set.all():
        viaje_venta = ViajeVenta(venta=venta, titulo=item.viaje)
        viaje_venta.save()

    carrito.itemcarrito_set.all().delete()

    success(request, 'Pago realizado con éxito.')

    return redirect('mostrar_viajes')

def historial_ventas(request):
    ventas = Venta.objects.filter(user=request.user).order_by('-fecha_venta')
    context = {
        'ventas': []
    }

    for venta in ventas:
        viajes_venta = ViajeVenta.objects.filter(venta=venta)
        viajes = []
        for viaje_venta in viajes_venta:
            viaje = viaje_venta.titulo
            viajes.append(viaje)

        venta_info = {
            'venta': venta,
            'viajes': viajes,
        }
        context['ventas'].append(venta_info)

    return render(request, 'historial_ventas.html', context)

def crear_viaje(request):
    if request.method == 'POST':
        form = ViajeForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('listar_viajes')
    else:
        form = ViajeForm()
    
    context = {
        'form': form
    }
    return render(request, 'crear_viaje.html', context)

def listar_viajes(request):
    viajes = Viaje.objects.all()
    context = {
        'viajes': viajes
    }
    return render(request, 'listar_viajes.html', context)

def editar_viaje(request, viaje_id):
    viaje = get_object_or_404(Viaje, id=viaje_id)

    if request.method == 'POST':
        form = ViajeForm(request.POST, instance=viaje)
        if form.is_valid():
            form.save()
            return redirect('listar_viajes')
    else:
        form = ViajeForm(instance=viaje)

    context = {
        'form': form,
        'viaje': viaje
    }
    return render(request, 'editar_viaje.html', context)

def eliminar_viaje(request, viaje_id):
    viaje = get_object_or_404(Viaje, id=viaje_id)
    viaje.delete()
    return redirect('listar_viajes')


