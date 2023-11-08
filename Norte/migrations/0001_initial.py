# Generated by Django 4.2.2 on 2023-06-08 18:36

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Administrativo',
            fields=[
                ('idadministrativo', models.IntegerField(db_column='idAdministrativo', primary_key=True, serialize=False)),
                ('persona_run', models.IntegerField(db_column='Persona_run')),
                ('persona_empresa_idempresa', models.IntegerField(db_column='Persona_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'administrativo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('idcliente', models.IntegerField(db_column='idCliente', primary_key=True, serialize=False)),
                ('persona_run', models.IntegerField(db_column='Persona_run')),
                ('persona_empresa_idempresa', models.IntegerField(db_column='Persona_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'cliente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Destino',
            fields=[
                ('iddestino', models.IntegerField(db_column='idDestino', primary_key=True, serialize=False)),
                ('direccion_destino', models.CharField(blank=True, db_column='direccion destino', max_length=45, null=True)),
                ('viaje_idviaje', models.IntegerField(db_column='Viaje_idViaje')),
                ('viaje_servicio_idservicio', models.IntegerField(db_column='Viaje_Servicio_idServicio')),
                ('viaje_servicio_empresa_idempresa', models.IntegerField(db_column='Viaje_Servicio_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'destino',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DestinoHasViaje',
            fields=[
                ('destino_iddestino', models.IntegerField(db_column='Destino_idDestino', primary_key=True, serialize=False)),
                ('destino_viaje_idviaje', models.IntegerField(db_column='Destino_Viaje_idViaje')),
                ('destino_viaje_servicio_idservicio', models.IntegerField(db_column='Destino_Viaje_Servicio_idServicio')),
                ('destino_viaje_servicio_empresa_idempresa', models.IntegerField(db_column='Destino_Viaje_Servicio_Empresa_idEmpresa')),
                ('viaje_idviaje', models.IntegerField(db_column='Viaje_idViaje')),
                ('viaje_servicio_idservicio', models.IntegerField(db_column='Viaje_Servicio_idServicio')),
                ('viaje_servicio_empresa_idempresa', models.IntegerField(db_column='Viaje_Servicio_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'destino_has_viaje',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Empresa',
            fields=[
                ('idempresa', models.IntegerField(db_column='idEmpresa', primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=45, null=True)),
                ('direccion', models.CharField(blank=True, max_length=45, null=True)),
                ('numero', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'empresa',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Hotel',
            fields=[
                ('idhotel', models.IntegerField(db_column='idHotel', primary_key=True, serialize=False)),
                ('nombre_hotel', models.CharField(blank=True, db_column='nombre hotel', max_length=45, null=True)),
                ('destino_iddestino', models.IntegerField(db_column='Destino_idDestino')),
                ('destino_viaje_idviaje', models.IntegerField(db_column='Destino_Viaje_idViaje')),
                ('destino_viaje_servicio_idservicio', models.IntegerField(db_column='Destino_Viaje_Servicio_idServicio')),
                ('destino_viaje_servicio_empresa_idempresa', models.IntegerField(db_column='Destino_Viaje_Servicio_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'hotel',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Persona',
            fields=[
                ('run', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=45, null=True)),
                ('apellido', models.CharField(blank=True, max_length=45, null=True)),
                ('numero', models.IntegerField(blank=True, null=True)),
                ('edad', models.IntegerField(blank=True, null=True)),
                ('correo', models.CharField(blank=True, max_length=45, null=True)),
                ('empresa_idempresa', models.IntegerField(db_column='Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'persona',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Reservacion',
            fields=[
                ('idreservacion', models.IntegerField(db_column='idReservacion', primary_key=True, serialize=False)),
                ('fecha', models.DateTimeField(blank=True, null=True)),
                ('tipo', models.CharField(blank=True, max_length=45, null=True)),
                ('promocion', models.CharField(blank=True, max_length=45, null=True)),
                ('hotel_idhotel', models.IntegerField(db_column='Hotel_idHotel')),
                ('hotel_destino_iddestino', models.IntegerField(db_column='Hotel_Destino_idDestino')),
                ('hotel_destino_viaje_idviaje', models.IntegerField(db_column='Hotel_Destino_Viaje_idViaje')),
                ('hotel_destino_viaje_servicio_idservicio', models.IntegerField(db_column='Hotel_Destino_Viaje_Servicio_idServicio')),
                ('hotel_destino_viaje_servicio_empresa_idempresa', models.IntegerField(db_column='Hotel_Destino_Viaje_Servicio_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'reservacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Servicio',
            fields=[
                ('idservicio', models.IntegerField(db_column='idServicio', primary_key=True, serialize=False)),
                ('nombre', models.CharField(blank=True, max_length=45, null=True)),
                ('metodo_de_pago', models.CharField(blank=True, db_column='metodo de pago', max_length=45, null=True)),
                ('empresa_idempresa', models.IntegerField(db_column='Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'servicio',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Viaje',
            fields=[
                ('idviaje', models.IntegerField(db_column='idViaje', primary_key=True, serialize=False)),
                ('servicio_idservicio', models.IntegerField(db_column='Servicio_idServicio')),
                ('servicio_empresa_idempresa', models.IntegerField(db_column='Servicio_Empresa_idEmpresa')),
            ],
            options={
                'db_table': 'viaje',
                'managed': False,
            },
        ),
    ]