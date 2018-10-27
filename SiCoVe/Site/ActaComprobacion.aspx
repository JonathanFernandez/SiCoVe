<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ActaComprobacion.aspx.cs" Inherits="SiCoVe.Site.ActaComprobacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Formulario de infracción</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Acta de comprobación
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>N° de acta</label>
                                    <asp:TextBox ID="txtNumActaAC" runat="server" class="form-control" placeholder="Ingrese el N° de acta"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Fecha</label>
                                    <asp:TextBox ID="txtFecActaAC" runat="server" class="form-control" placeholder="Ingrese la fecha"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Hora</label>
                                    <asp:TextBox ID="txtHoraActaAC" runat="server" class="form-control" placeholder="Ingrese la hora"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Dominio</label>
                                    <asp:TextBox ID="txtDominioAC" runat="server" class="form-control" placeholder="Ingrese el dominio"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>País</label>
                                    <asp:DropDownList ID="ddlPaisAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Tipo de vehículo</label>
                                    <asp:DropDownList ID="ddlTipoVehiculoAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Otros</label>
                                    <asp:TextBox ID="txtOtrosTipVehAC" runat="server" class="form-control" placeholder="Ingrese otros tipos de vehículo"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Marca</label>
                                    <asp:DropDownList ID="ddlMarcaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Modelo</label>
                                    <asp:TextBox ID="txtModeloAC" runat="server" class="form-control" placeholder="Ingrese el modelo"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Categoría de infracción</label>
                                    <asp:DropDownList ID="ddlCatInfraccionAC" runat="server" class="form-control"></asp:DropDownList>
                                </div> 
                                    <div class="form-group">
                                    <label>Infracción</label>
                                    <asp:DropDownList ID="ddlInfraccionAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Descripción de la infracción</label>
                                    <asp:textbox id="txtDescInfraccionAC" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine" placeholder="Ingrese la descripción de la infracción"></asp:textbox>
                                </div>
                                <div class="form-group">
                                    <label>Lugar de la infracción</label>
                                    <asp:TextBox ID="txtLugarInfraccionAC" runat="server" class="form-control" placeholder="Ingrese el lugar de la infracción"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Datos del imputado
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Apellido</label>
                                    <asp:TextBox ID="txtApellido" runat="server" class="form-control" placeholder="Ingrese el apellido"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Nombres</label>
                                    <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese el nombre"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Domicilio</label>
                                    <asp:TextBox ID="txtDomicilio" runat="server" class="form-control" placeholder="Ingrese el domicilio"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>N° de puerta</label>
                                    <asp:TextBox ID="txtNumPuertaAC" runat="server" class="form-control" placeholder="Ingrese el N° de puerta"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Piso</label>
                                    <asp:TextBox ID="txtPisoAC" runat="server" class="form-control" placeholder="Ingrese el piso"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Departamento</label>
                                    <asp:TextBox ID="txtDepartamentoAC" runat="server" class="form-control" placeholder="Ingrese el departamento"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidadAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Provincia</label>
                                    <asp:DropDownList ID="ddlProvinciaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div> 
                                <div class="form-group">
                                    <label>Tipo de documento</label>
                                    <asp:DropDownList ID="ddlTipDocumentoAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>N° de documento</label>
                                    <asp:TextBox ID="txtNumDocumentoAC" runat="server" class="form-control" placeholder="Ingrese el N° de documento"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>N° de licencia</label>
                                    <asp:TextBox ID="txtNumLicenciaAC" runat="server" class="form-control" placeholder="Ingrese el N° de licencia"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Municipio licencia</label>
                                    <asp:DropDownList ID="ddlMuniLicenciaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Categoría licencia</label>
                                    <asp:DropDownList ID="ddlCatLicencia" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Detalle de la documentación retenida</label>
                                    <asp:textbox id="txtDocuRetenidaAC" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine" placeholder="Ingrese el detalle de la documentación retenida"></asp:textbox>
                                </div>
                                <div class="form-group">
                                    <label>Vehículo retenido en</label>
                                    <asp:TextBox ID="txtLugarDetenVehiAC" runat="server" class="form-control" placeholder="Ingrese en dónde de encuantra retenido el vehículo"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>N° agente / inspector</label>
                                    <asp:TextBox ID="txtNumAgenteAC" runat="server" class="form-control" placeholder="Ingrese el N° agente / inspector"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Button ID="btnAceptarAC" runat="server" class="btn btn-default" Text="Aceptar" />
                            </div>
                        </div>
                    </div>  
                </div>   
            </div> 
        </div> 
    </div>
</asp:Content>
