<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ActaComprobacion.aspx.cs" Inherits="SiCoVe.Site.ActaComprobacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="panel panel-default">
            <div class="panel-heading">
                Acta de comprobación
            </div>
            <div class="panel-body">
                        <div class="form-group">
                            <label>Apellido</label>
                            <input class="form-control" placeholder="Ingrese el apellido">
                        </div>
                        <div class="form-group">
                            <label>Nombre</label>
                            <input class="form-control" placeholder="Ingrese el nombre">
                        </div>
                        <div class="form-group">
                            <label>Sexo</label>
                            <select class="form-control">
                                <option>M</option>
                                <option>F</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <select class="form-control">
                                <option>Argentina</option>
                                <option>Española</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <input class="form-control" placeholder="Ingrese la fecha de nacimiento">
                        </div>
                        <div class="form-group">
                            <label>Documento</label>
                            <input class="form-control" placeholder="Ingrese el número de documento">
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input class="form-control" placeholder="Ingrese el domicilio">
                        </div>
                        <div class="form-group">
                            <label>Lugar de nacimiento</label>
                            <select class="form-control">
                                <option>Buenos Aires</option>
                                <option>Chaco</option>
                            </select>
                        </div>

                    <!-- Datos licencia -->
                        <div class="form-group">
                            <label>N° de licencia</label>
                            <input class="form-control" placeholder="Ingrese el N° de licencia">
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <input class="form-control" placeholder="Ingrese el apellido">
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <input class="form-control" placeholder="Ingrese los nombres">
                        </div>
                        <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <input class="form-control" placeholder="Ingrese la fecha de nacimiento">
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input class="form-control" placeholder="Ingrese el domicilio">
                        </div>
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <select class="form-control">
                                <option>Argentina</option>
                                <option>Española</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Sexo</label>
                            <select class="form-control">
                                <option>M</option>
                                <option>F</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Fecha de otorgamiento</label>
                            <input class="form-control" placeholder="Ingrese la fecha de otorgamiento">
                        </div>
                        <div class="form-group">
                            <label>Fecha de vencimiento</label>
                            <input class="form-control" placeholder="Ingrese la fecha de vencimiento">
                        </div>
                        <div class="form-group">
                            <label>Categoría</label>
                            <input class="form-control" placeholder="Ingrese la categoría">
                        </div>
                        <div class="form-group">
                            <label>Clases</label>
                            <input class="form-control" placeholder="Ingrese las clases">
                        </div>
                        <div class="form-group">
                            <label>Observaciones</label>
                            <input class="form-control" placeholder="Ingrese las observaciones">
                        </div>

                    <!-- Datos cédula -->

                        <div class="form-group">
                            <label>N° de cédula</label>
                            <input class="form-control" placeholder="Ingrese el N° de cedula">
                        </div>
                        <div class="form-group">
                            <label>Dominio</label>
                            <input class="form-control" placeholder="Ingrese el dominio">
                        </div>
                        <div class="form-group">
                            <label>Estado</label>
                            <input class="form-control" placeholder="Ingrese el estado">
                        </div>
                        <div class="form-group">
                            <label>Marca</label>
                            <select class="form-control">
                                <option>Ford</option>
                                <option>Fiat</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Modelo</label>
                            <input class="form-control" placeholder="Ingrese el modelo">
                        </div>
                        <div class="form-group">
                            <label>Tipo</label>
                            <select class="form-control">
                                <option>Automovil</option>
                                <option>Motovehículo</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Uso</label>
                            <select class="form-control">
                                <option>Privado</option>
                                <option>Público</option>
                                <option>Oficial</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Cuadro / Chasis</label>
                            <input class="form-control" placeholder="Ingrese el cuadro / chasis">
                        </div>
                        <div class="form-group">
                            <label>N° de motor</label>
                            <input class="form-control" placeholder="Ingrese el N° de motor">
                        </div>
                        <div class="form-group">
                            <label>Fecha de vencimiento</label>
                            <input class="form-control" placeholder="Ingrese la fecha de vencimiento">
                        </div>
                        <div class="form-group">
                            <label>Cilindrada</label>
                            <input class="form-control" placeholder="Ingrese la cilindrada">
                        </div>
                        <div class="form-group">
                            <label>Titular</label>
                            <input class="form-control" placeholder="Ingrese el titular">
                        </div>
                        <div class="form-group">
                            <label>Documento</label>
                            <input class="form-control" placeholder="Ingrese el documento">
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input class="form-control" placeholder="Ingrese el domicilio">
                        </div>

                    <!-- Datos seguro -->

                        <div class="form-group">
                            <label>Aseguradora</label>
                            <select class="form-control">
                                <option>Mapfre</option>
                                <option>Assurant</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Asegurado</label>
                            <input class="form-control" placeholder="Ingrese el asegurado">
                        </div>
                        <div class="form-group">
                            <label>Póliza</label>
                            <input class="form-control" placeholder="Ingrese la póliza">
                        </div>
                        <div class="form-group">
                            <label>Marca</label>
                            <select class="form-control">
                                <option>Ford</option>
                                <option>Fiat</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Modelo</label>
                            <input class="form-control" placeholder="Ingrese el modelo">
                        </div>
                        <div class="form-group">
                            <label>Cilindrada</label>
                            <input class="form-control" placeholder="Ingrese la cilindrada">
                        </div>
                        <div class="form-group">
                            <label>Dominio</label>
                            <input class="form-control" placeholder="Ingrese el dominio">
                        </div>
                        <div class="form-group">
                            <label>Año</label>
                            <input class="form-control" placeholder="Ingrese el año">
                        </div>
                        <div class="form-group">
                            <label>N° de motor</label>
                            <input class="form-control" placeholder="Ingrese el N° de motor">
                        </div>
                        <div class="form-group">
                            <label>N° de chasis</label>
                            <input class="form-control" placeholder="Ingrese el N° de chasis">
                        </div>
                        <div class="form-group">
                            <label>Fecha desde</label>
                            <input class="form-control" placeholder="Ingrese la fecha desde">
                        </div>
                        <div class="form-group">
                            <label>Fecha hasta</label>
                            <input class="form-control" placeholder="Ingrese la fecha hasta">
                        </div>


                <button type="submit" class="btn btn-default">Aceptar</button>

            </div>  
        </div>         
    </div>
</asp:Content>
