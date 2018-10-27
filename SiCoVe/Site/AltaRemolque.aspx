<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaRemolque.aspx.cs" Inherits="SiCoVe.Site.AltaRemolque" %>
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
                <label>Alta Remolque</label>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        
                        <div class="form-group">
                            <label>DNI</label>
                            <asp:TextBox ID="txtDNI" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <asp:TextBox ID="txtNacionalidad" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Sexo</label>
                            <asp:DropDownList ID="DropDownListSexo" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                         <div class="form-group">
                            <label>Fecha de Nacimiento</label>
                            <asp:TextBox ID="txtFechaNac" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Lugar de Nacimiento</label>
                            <asp:TextBox ID="txtLugarNac" runat="server" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Domicilio</label>
                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Piso</label>
                            <asp:TextBox ID="txtPiso" runat="server" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Departamento</label>
                            <asp:TextBox ID="txtDepto" runat="server" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Localidad</label>
                            <asp:TextBox ID="txtLocalidad" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Legajo</label>
                            <asp:TextBox ID="txtLegajo" runat="server" class="form-control"></asp:TextBox>
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
