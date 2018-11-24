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
                                    <asp:TextBox ID="txtNumActaAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfvNumActaAC" runat="server" ErrorMessage="El N° de acta es obligatorio" ControlToValidate="txtNombre" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Fecha</label>
                                    <asp:TextBox ID="txtFecActaAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfFecActaAC" runat="server" ErrorMessage="La Fecha es obligatoria" ControlToValidate="txtFecActaAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Hora</label>
                                    <asp:TextBox ID="txtHoraActaAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfHoraActaAC" runat="server" ErrorMessage="La Hora es obligatoria" ControlToValidate="txtHoraActaAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Dominio</label>
                                    <asp:TextBox ID="txtDominioAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfDominioAC" runat="server" ErrorMessage="El Dominio es obligatorio" ControlToValidate="txtDominioAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Tipo de vehículo</label>
                                    <asp:DropDownList ID="ddlTipoVehiculoAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvTipoVehiculoAC" ControlToValidate="ddlTipoVehiculoAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Tipo de vehículo" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Otros</label>
                                    <asp:TextBox ID="txtOtrosTipVehAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Marca</label>
                                    <asp:DropDownList ID="ddlMarcaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvMarcaAC" ControlToValidate="ddlMarcaAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Marca" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Modelo</label>
                                    <asp:TextBox ID="txtModeloAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfModeloAC" runat="server" ErrorMessage="El Modelo es obligatorio" ControlToValidate="txtModeloAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Categoría de infracción</label>
                                    <asp:DropDownList ID="ddlCatInfraccionAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvCatInfraccionAC" ControlToValidate="ddlCatInfraccionAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Categoría de infracción" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Infracción</label>
                                    <asp:DropDownList ID="ddlInfraccionAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvInfraccionAC" ControlToValidate="ddlInfraccionAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Infracción" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Descripción de la infracción</label>
                                    <asp:textbox id="txtDescInfraccionAC" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfDescInfraccionAC" runat="server" ErrorMessage="La Descripción de la infracción es obligatoria" ControlToValidate="txtDescInfraccionAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Provincia</label>
                                    <asp:DropDownList ID="ddlProvinciaINF" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvProvinciaINF" ControlToValidate="ddlProvinciaINF" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidadINF" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvLocalidadINF" ControlToValidate="ddlLocalidadINF" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Lugar de la infracción</label>
                                    <asp:TextBox ID="txtLugarInfraccionAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfLugarInfraccionAC" runat="server" ErrorMessage="El Lugar de la infracción es obligatorio" ControlToValidate="txtLugarInfraccionAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
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
                                    <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfApellido" runat="server" ErrorMessage="El Apellido es obligatorio" ControlToValidate="txtApellido" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Nombres</label>
                                    <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfNombre" runat="server" ErrorMessage="El Nombre es obligatorio" ControlToValidate="txtNombre" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>N° de documento</label>
                                    <asp:TextBox ID="txtNumDocumentoAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfNumDocumentoAC" runat="server" ErrorMessage="El N° de documento es obligatorio" ControlToValidate="txtNumDocumentoAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Provincia</label>
                                    <asp:DropDownList ID="ddlProvinciaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvProvinciaAC" ControlToValidate="ddlProvinciaAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidadAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvLocalidadAC" ControlToValidate="ddlLocalidadAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Domicilio</label>
                                    <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfDomicilio" runat="server" ErrorMessage="El Domicilio es obligatorio" ControlToValidate="txtDomicilio" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>N° de puerta</label>
                                    <asp:TextBox ID="txtNumPuertaAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Piso</label>
                                    <asp:TextBox ID="txtPisoAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Departamento</label>
                                    <asp:TextBox ID="txtDepartamentoAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>N° de licencia</label>
                                    <asp:TextBox ID="txtNumLicenciaAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfNumLicenciaAC" runat="server" ErrorMessage="El N° de licencia es obligatorio" ControlToValidate="txtNumLicenciaAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Municipio licencia</label>
                                    <asp:DropDownList ID="ddlMuniLicenciaAC" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvMuniLicenciaAC" ControlToValidate="ddlMuniLicenciaAC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Municipio licencia" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Categoría licencia</label>
                                    <asp:DropDownList ID="ddlCatLicencia" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:CompareValidator ID="cvCatLicencia" ControlToValidate="ddlCatLicencia" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Categoría licencia" CssClass="label label-danger"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label>Detalle de la documentación retenida</label>
                                    <asp:textbox id="txtDocuRetenidaAC" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                </div>
                                <div class="form-group">
                                    <label>Vehículo retenido en</label>
                                    <asp:TextBox ID="txtLugarDetenVehiAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>N° agente / inspector</label>
                                    <asp:TextBox ID="txtNumAgenteAC" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="rfNumAgenteAC" runat="server" ErrorMessage="El N° agente / inspector es obligatorio" ControlToValidate="txtNumAgenteAC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <br />
                                <asp:Button ID="btnAceptarAC" runat="server" class="btn btn-default" Text="Aceptar" OnClick="btnAceptarAC_Click" />
                            </div>
                        </div>
                    </div>  
                </div>   
            </div> 
        </div> 
    </div>
</asp:Content>
