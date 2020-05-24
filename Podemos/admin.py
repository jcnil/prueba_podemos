
from django.contrib import admin
from .models import Calendariopagos, Clientes, Cuentas, Grupos, Miembros, Transacciones


admin.site.register(Calendariopagos)
admin.site.register(Clientes)
admin.site.register(Cuentas)
admin.site.register(Grupos)
admin.site.register(Miembros)
admin.site.register(Transacciones)
