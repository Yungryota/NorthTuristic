# Generated by Django 4.2.2 on 2023-06-23 14:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('m_producto', '0003_alter_det_compra_venta_delete_venta'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Det_Compra',
        ),
    ]