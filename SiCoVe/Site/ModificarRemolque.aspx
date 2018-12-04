<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModificarRemolque.aspx.cs" Inherits="SiCoVe.ModificarRemolque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
    <style>
        .modalBackground {
            background-color: black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Modificar Usuario</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Modificar datos de Usuario Remolque
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
                                            <asp:TextBox type="number" ID="txtLegajo" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="txtLegajo" runat="server" ErrorMessage="* Debe ingresar Legajo" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>E-Mail</label>
                                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" name="email" type="email" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtContraseña" runat="server" ErrorMessage="* Debe ingresar Contraseña" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>

                                        <asp:CheckBox hidden="False" ID="cckrautoridad" runat="server"></asp:CheckBox>
                                    </div>

                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>N° de documento</label>
                                            <asp:TextBox type="number" ID="txtNumDocumento" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNumDocumento" runat="server" ErrorMessage="* Debe ingresar número de Documento" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtApellido" runat="server" ErrorMessage="* Debe ingresar Apellido" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtNombre" runat="server" ErrorMessage="* Debe Ingresar Nombre" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvincia" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlProvincia" ControlToValidate="ddlProvincia" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtDomicilio" runat="server" ErrorMessage="* Debe Ingresar Domicilio" Display="Dynamic" CssClass="label label-danger" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidad" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlNacionalidad" ControlToValidate="ddlNacionalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Nacionalidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFechaNacimiento" runat="server" class="form-control datepicker"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtFechaNacimiento" runat="server" ErrorMessage="* Debe ingresar Fecha Nacimiento" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexo" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlSexo" ControlToValidate="ddlSexo" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Sexo" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlLocalidad" ControlToValidate="ddlLocalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
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

                                        <br />
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Style="display: block; margin: auto;" OnClick="btnRegistrarACNC_Click" Text="Modificar" />
                                                <ajaxToolkit:ModalPopupExtender ID="btnRegistrarACNC_ModalPopupExtender" runat="server" BehaviorID="btnRegistrarACNC_ModalPopupExtender" TargetControlID="btnRegistrarACNC" PopupControlID="panelModal" BackgroundCssClass="modalBackground">
                                                </ajaxToolkit:ModalPopupExtender>
                                                <br />
                                                <asp:Panel ID="PanelModal" runat="server" Style="display: none; background: white; width: auto; height: auto; margin-left: auto;">
                                                    <div class="modal-header">
                                                        <button class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Modificacion de Usuario</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        Se Modificaron los datos correctamente
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-outline btn-primary" data-dismiss="modal" aria-hidden="true" style="margin-left: 166px;">Cerrar</button>
                                                    </div>
                                                </asp:Panel>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>