"""podemos_eval URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

#from Podemos.views import IndexView,CalendariopagosList,CalendariopagosDetail,ClientesList,ClientesDetail,CuentasList,CuentasDetail,GruposList,GruposDetail,MiembrosList,MiembrosDetail,TransaccionesList,TransaccionesDetail
from Podemos import views

urlpatterns = [
    path('', views.home, name='home'),
    #path('calendariopagos/', views.CalendariopagosList.as_view(), name='calendariopagos'),
    #path('calendariopagos_detail/', views.CalendariopagosDetail.as_view(), name='calendariopagos_detail'),
    #path('clientes/', views.ClientesList.as_view(), name='clientes'),
    #path('clientes_detail/', views.ClientesDetail.as_view(), name='clientes_detail'),
    #path('cuentas/', views.CuentasList.as_view(), name='cuentas'),
    #path('cuentas_detail/', views.CuentasDetail.as_view(), name='cuentas_detail'),
    #path('grupos/', views.GruposList.as_view(), name='grupos'),
    #path('grupos_detail/', views.GruposDetail.as_view(), name='grupos_detail'),
    #path('miembros/', views.MiembrosList.as_view(), name='miembros'),
    #path('miembros_detail/', views.MiembrosDetail.as_view(), name='miembros_detail'),
    #path('transacciones/', views.TransaccionesList.as_view(), name='transacciones'),
    #path('transacciones_detail/', views.TransaccionesDetail.as_view(), name='transacciones_detail'),
    path('admin/', admin.site.urls),
]
