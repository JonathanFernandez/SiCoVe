<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaUsuarios.aspx.cs" Inherits="SiCoVe.Site.AltaUsuarios" %>
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
                Alta de Usuarios
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label>Tipo de Usuario</label>
                            <asp:DropDownList ID="ddlTipUsuarioAU" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Tipo de documento</label>
                            <asp:DropDownList ID="ddlTipDocumentoAU" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>N° de documento</label>
                            <asp:TextBox ID="txtNumDocumentoAU" runat="server" class="form-control" placeholder="Ingrese el N° de documento"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" class="form-control" placeholder="Ingrese el apellido"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese el nombre"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Empresa</label>
                            <asp:TextBox ID="txtEmpresaAU" runat="server" class="form-control" placeholder="Ingrese la empresa"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Mail</label>
                            <asp:TextBox ID="txtMailAU" runat="server" class="form-control" placeholder="Ingrese E-Mail"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <asp:TextBox ID="txtContraseñaAU" runat="server" class="form-control" type="password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Confirmar Contraseña</label>
                            <asp:TextBox ID="txtConContraseñaAU" runat="server" class="form-control" type="password"></asp:TextBox>
                        </div>  
                        <br />
                        <asp:Button ID="btnAceptarAC" runat="server" class="btn btn-default" Text="Registrar" />
                    </div>
                 </div>
            </div>  
        </div>         
    </div>
</asp:Content>
