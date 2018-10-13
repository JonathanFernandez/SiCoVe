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
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>N° de acta</label>
                            <input class="form-control" placeholder="Ingrese el N° de acta">
                        </div>
                        <div class="form-group">
                            <label>Fecha</label>
                            <input class="form-control" placeholder="Ingrese la fecha">
                        </div>
                        <div class="form-group">
                            <label>Hora</label>
                            <input class="form-control" placeholder="Ingrese la hora">
                        </div>
                        <div class="form-group">
                            <label>Dominio</label>
                            <input class="form-control" placeholder="Ingrese el dominio">
                        </div>
                        <div class="form-group">
                            <label>País</label>
                            <select class="form-control">
                                <option>Argentina</option>
                                <option>Chile</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Tipo de vehículo</label>
                            <select class="form-control">
                                <option>Automovil</option>
                                <option>Motovehículo</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Otros</label>
                            <input class="form-control" placeholder="Ingrese otros tipos de vehículo">
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
                            <label>Categoría de infracción</label>
                            <select class="form-control">
                                <option>Conducta peligrosa</option>
                                <option>Otros</option>
                            </select>
                        </div> 
                            <div class="form-group">
                            <label>Infracción</label>
                            <select class="form-control">
                                <option>Circular a contramano</option>
                                <option>Circular a contramano</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Descripción de la infracción</label>
                            <textarea class="form-control" rows="3" placeholder="Ingrese la descripción de la infracción"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Lugar de la infracción</label>
                            <input class="form-control" placeholder="Ingrese el lugar de la infracción">
                        </div>

                        <h1>Datos del imputado</h1>

                        <div class="form-group">
                            <label>Apellido</label>
                            <input class="form-control" placeholder="Ingrese el apellido">
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <input class="form-control" placeholder="Ingrese los nombres">
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <input class="form-control" placeholder="Ingrese el domicilio">
                        </div>
                        <div class="form-group">
                            <label>N° de puerta</label>
                            <input class="form-control" placeholder="Ingrese el N° de puerta">
                        </div>
                        <div class="form-group">
                            <label>Piso</label>
                            <input class="form-control" placeholder="Ingrese el piso">
                        </div>
                        <div class="form-group">
                            <label>Departamento</label>
                            <input class="form-control" placeholder="Ingrese el departamento">
                        </div>
                        <div class="form-group">
                            <label>Localidad</label>
                            <select class="form-control">
                                <option>Morón</option>
                                <option>Ituzaingó</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Provincia</label>
                            <select class="form-control">
                                <option>Buenas Aires</option>
                                <option>Córdoba</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Tipo de documento</label>
                            <select class="form-control">
                                <option>DNI</option>
                                <option>Pasaporte</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>N° de documento</label>
                            <input class="form-control" placeholder="Ingrese el N° de documento">
                        </div>
                        <div class="form-group">
                            <label>N° de licencia</label>
                            <input class="form-control" placeholder="Ingrese el N° de licencia">
                        </div>
                        <div class="form-group">
                            <label>Municipio licencia</label>
                            <select class="form-control">
                                <option>Morón</option>
                                <option>Ituzaingó</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Categoría licencia</label>
                            <select class="form-control">
                                <option>Profesional</option>
                                <option>Profesional</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Detalle de la documentación retenida</label>
                            <textarea class="form-control" rows="3" placeholder="Ingrese el detalle de la documentación retenida"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Vehículo retenido en</label>
                            <input class="form-control" placeholder="Ingrese en dónde de encuantra retenido el vehículo">
                        </div>
                        <div class="form-group">
                            <label>N° agente / inspector</label>
                            <input class="form-control" placeholder="Ingrese el N° agente / inspector">
                        </div>
                        <br />
                        <button type="submit" class="btn btn-default">Aceptar</button>
                    </div>
                 </div>
            </div>  
        </div>         
    </div>
</asp:Content>
