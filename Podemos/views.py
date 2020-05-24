
from django.shortcuts import render
from django.views import generic

from .models import Calendariopagos, Clientes, Cuentas, Grupos, Miembros, Transacciones


def home(request):
    return render(request,'templates/home_page.html',{})


class CalendariopagosList(generic.ListView):
    model = Calendariopagos
    template_name = 'templates/calendariopagos_list.html'


class CalendariopagosDetail(generic.DetailView):
    model = Calendariopagos
    template_name = 'templates/calendariopagos_detail.html'


class ClientesList(generic.ListView):
    model = Clientes
    template_name = 'templates/clientes_list.html'


class ClientesDetail(generic.DetailView):
    model = Clientes
    template_name = 'templates/clientes_detail.html'


class CuentasList(generic.ListView):
    model = Cuentas
    template_name = 'templates/cuentas_list.html'


class CuentasDetail(generic.DetailView):
    model = Cuentas
    template_name = 'templates/cuentas_detail.html'


class GruposList(generic.ListView):
    model = Grupos
    template_name = 'templates/grupos_list.html'


class GruposDetail(generic.DetailView):
    model = Grupos
    template_name = 'templates/grupos_detail.html'


class MiembrosList(generic.ListView):
    model = Miembros
    template_name = 'templates/miembros_list.html'


class MiembrosDetail(generic.DetailView):
    model = Miembros
    template_name = 'templates/miembros_detail.html'


class TransaccionesList(generic.ListView):
    model = Transacciones
    template_name = 'templates/transacciones_list.html'


class TransaccionesDetail(generic.DetailView):
    model = Transacciones
    template_name = 'templates/transacciones_detail.html'
