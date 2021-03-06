﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaRemolque.aspx.cs" Inherits="SiCoVe.Site.AltaRemolque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">

        <!--INI-->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Alta Usuario</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!--FIN-->

                <div class="panel panel-default">
                    <div class="panel-heading">
                        Alta Personal Remolque
                    </div>

                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#datosusuario" data-toggle="tab">Datos Usuario</a>
                            </li>
                            <li><a href="#dni" data-toggle="tab">Datos Personales</a>
                            </li>
                        </ul>
                        <br />
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="datosusuario">
                                        <div class="form-group">
                                            <label>Legajo</label>
                                            <asp:TextBox ID="txtLegajo" runat="server" class="form-control" type="number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLegajo" runat="server" ErrorMessage="* Debe ingresar Legajo" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>E-Mail</label>
                                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" name="email" type="email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar E-Mail" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtContraseña" runat="server" ErrorMessage="* Debe ingresar Contraseña" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Confirmar Contraseña</label>
                                            <asp:TextBox ID="txtConContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtConContraseña" runat="server" ErrorMessage="* Debe Reingresar Contraseña" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtConContraseña" ControlToCompare="txtContraseña" runat="server" ErrorMessage="* Las contraseñas no coinciden" Display="dynamic" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <asp:CheckBox hidden="False" ID="cckremolque" runat="server"></asp:CheckBox>
                                    </div>

                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>N° de documento</label>
                                            <asp:TextBox type="number" ID="txtNumDocumento" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNumDocumento" runat="server" ErrorMessage="* Debe ingresar número de Documento" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtApellido" runat="server" ErrorMessage="* Debe ingresar Apellido" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtNombre" runat="server" ErrorMessage="* Debe Ingresar Nombre" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvincia" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvddlProvincia" ControlToValidate="ddlProvincia" runat="server" ValueToCompare="0" Operator="NotEqual" Display="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtDomicilio" runat="server" ErrorMessage="* Debe Ingresar Domicilio" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidad" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvddlNacionalidad" ControlToValidate="ddlNacionalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display="Dynamic" ErrorMessage="Debe seleccionar Nacionalidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox type="number" ID="txtFechaNacimiento" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtFechaNacimiento" runat="server" ErrorMessage="* Debe ingresar Fecha Nacimiento" Display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexo" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlsexo" ControlToValidate="ddlSexo" runat="server" ValueToCompare="0" Operator="NotEqual" Display="Dynamic" ErrorMessage="Debe seleccionar Sexo" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlLocalidad" ControlToValidate="ddlLocalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                            <asp:TextBox ID="txtLugarNacimiento" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="red" ControlToValidate="txtLugarNacimiento" runat="server" ErrorMessage="* Debe ingresar Lugar de Nacimiento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Piso</label>
                                            <asp:TextBox type="number" ID="txtPiso" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="red" ControlToValidate="txtPiso" runat="server" ErrorMessage="* Debe ingresar Piso"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Departamento</label>
                                            <asp:TextBox ID="txtDepartamento" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="red" ControlToValidate="txtDepartamento" runat="server" ErrorMessage="* Debe ingresar Departamento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Nro De Puerta</label>
                                            <asp:TextBox type="number" ID="txtNumPuerta" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="red" ControlToValidate="txtNumPuerta" runat="server" ErrorMessage="* Debe ingresar Numero de Puerta"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Style="display: block; margin: auto;" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
                                    </div>
                                    <div class="panel-body">
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        <h4 class="modal-title" id="myModalLabel">Mensaje</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <asp:Label runat="server" ID="lblMensaje" Text=""></asp:Label>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <%--    <button type="button" class="btn btn-primary">Save changes</button>--%>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
