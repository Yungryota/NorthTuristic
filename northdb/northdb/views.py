from django.shortcuts import render, redirect

def principal(request):
    return render(request,'index.html')

def contactanos(request):
    return render(request,'contactanos.html')

def nosotros(request):
    return render(request,'nosotros.html')