# Generated by Django 4.2.2 on 2023-06-29 00:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('m_venta', '0003_remove_det_compra_titulo_remove_det_compra_total_com_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='venta',
            name='fecha_venta',
            field=models.DateTimeField(auto_now=True),
        ),
    ]
