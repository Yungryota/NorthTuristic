from django.db import models

# Create your models here.
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models



class Persona(models.Model):
    run = models.IntegerField(primary_key=True, unique=True)  # The composite primary key (run, Empresa_idEmpresa) found, that is not supported. The first column is selected.
    nombre = models.CharField(max_length=45, blank=True, null=True)
    apellido = models.CharField(max_length=45, blank=True, null=True)
    password = models.CharField ( max_length=12, null=True)
    edad = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length=45, blank=True, null=True)



    class Meta:
        managed = False
        db_table = 'persona'
        unique_together = (('run'),)




