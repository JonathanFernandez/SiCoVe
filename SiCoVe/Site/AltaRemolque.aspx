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
                Alta Remolque
            </div>
            <div class="panel-body">
                                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label>Legajo</label>
                            <asp:TextBox ID="txtLegajo" runat="server" class="form-control" placeholder="Ingrese el Legajo"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>N° de documento</label>
                            <asp:TextBox ID="txtNumDocumento" runat="server" class="form-control" placeholder="Ingrese el N° de documento"></asp:TextBox>
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
                            <label>Provincia</label>
                            <asp:DropDownList ID="ddlProvincia" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control" placeholder="Ingrese Domicilio"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <asp:DropDownList ID="ddlNacionalidad" runat="server" class="form-control" ></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <asp:TextBox ID="txtFechaNacimiento" runat="server" class="form-control" placeholder="Ingrese Fecha de Nacimiento" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label>Sexo</label>
                            <asp:DropDownList ID="ddlSexo" runat="server" class="form-control" ></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Localidad</label>
                            <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control" ></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Lugar de nacimiento</label>
                            <asp:TextBox ID="txtLugarNacimiento" runat="server" class="form-control"  placeholder="Ingrese lugar de nacimiento"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Piso</label>
                            <asp:TextBox ID="txtPiso" runat="server" class="form-control" placeholder="Ingrese el piso"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Departamento</label>
                            <asp:TextBox ID="txtDepartamento" runat="server" class="form-control" placeholder="Ingrese el departamento"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nro De Puerta</label>
                            <asp:TextBox ID="txtNumPuerta" runat="server" class="form-control" placeholder="Ingrese N° de Puerta"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>E-Mail</label>
                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" placeholder="Ingrese E-Mail"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Confirmar Contraseña</label>
                            <asp:TextBox ID="txtConContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                        </div>  

                    </div>

                 </div>
                                                            <asp:CheckBox hidden = False ID="cckremolque" runat="server"></asp:CheckBox>
                                                                            <br />
                                <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
            </div>  
        </div>         
    </div>
</asp:Content>
