# Generated by Django 4.2.2 on 2023-07-06 04:03

from django.db import migrations, models
import m_producto.models


class Migration(migrations.Migration):

    dependencies = [
        ('m_producto', '0008_delete_producto'),
    ]

    operations = [
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=20)),
                ('precio', models.IntegerField()),
                ('cantidad', models.IntegerField()),
                ('foto', models.ImageField(default=m_producto.models.default_foto, upload_to='img/')),
            ],
        ),
        migrations.AlterField(
            model_name='viaje',
            name='foto',
            field=models.ImageField(default=m_producto.models.default_foto, upload_to='img/'),
        ),
    ]
