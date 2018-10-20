<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SolicitudModificacion.aspx.cs" Inherits="SiCoVe.Site.AltaUsuarios" %>
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
                Carga de Infracción
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label>Geolocalización</label>
                            <asp:TextBox ID="txtGeolocalizacionCI" runat="server" class="form-control" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Detalle de Infracción</label>
                            <asp:TextBox ID="txtDetalleInfracciónCI" runat="server" class="form-control" placeholder="Ingrese Detalle de Infracción"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Carga de foto</label>
                            <asp:TextBox ID="txtCargaFotoCI" runat="server" class="form-control" placeholder="Ingrese Foto"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Fecha</label>
                            <asp:TextBox ID="txtFechaCI" runat="server" class="form-control" placeholder="Ingrese Fecha"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Patente</label>
                            <asp:TextBox ID="txtPatente" runat="server" class="form-control" placeholder="Ingrese Patente"></asp:TextBox>
                        </div>
                        <br />
                        <asp:Button ID="btnAceptarCI" runat="server" class="btn btn-default" Text="Guardar Cambios" />
                        
                    </div>
                 </div>
            </div>  
        </div>         
    </div>
</asp:Content>

