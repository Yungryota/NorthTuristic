# Generated by Django 4.2.2 on 2023-07-05 20:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('m_producto', '0006_alter_producto_nombre'),
    ]

    operations = [
        migrations.AlterField(
            model_name='viaje',
            name='duracion',
            field=models.CharField(max_length=20),
        ),
    ]
