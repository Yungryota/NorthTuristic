# Generated by Django 4.2.2 on 2023-06-29 01:30

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('m_venta', '0005_productoventa_delete_det_compra'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='productoventa',
            name='precio_unitario',
        ),
    ]
