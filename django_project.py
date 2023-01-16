from django.db import models

class OTUTable(models.Model):
    taxonomy = models.CharField(max_length=100)
    sample = models.CharField(max_length=100)
    count = models.IntegerField()
    
    #3.3) Create a new view in the otu_table_app/views.py file to handle requests for the OTU table data:
from django.shortcuts import render

def otu_table(request):
    data = OTUTable.objects.all()
    return render(request, 'otu_table.html', {'data': data})

from django.urls import path
from . import views

urlpatterns = [
    path('/home/amrgalal/Desktop/Teste_Amr/tables/', 'tsv', name='otu_table_tax_amostras.tsv'),
]


