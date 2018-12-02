<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaAutoridad.aspx.cs" Inherits="SiCoVe.AltaAutoridad" %>
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
                Alta de Autoridad de Transito
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
                            <%--<asp:TextBox ID="txtLegajo" runat="server" class="form-control"  required="required" type="number" ></asp:TextBox>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLegajo" runat="server" ErrorMessage="* Debe ingresar Legajo" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>E-Mail</label>
                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" name="email" type="email"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtContraseña" runat="server" ErrorMessage="* Debe ingresar Contraseña"  display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Confirmar Contraseña</label>
                            <asp:TextBox ID="txtConContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtConContraseña" runat="server" ErrorMessage="* Debe Reingresar Contraseña" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtConContraseña" ControlToCompare="txtContraseña" runat="server" ErrorMessage="* Las contraseñas no coinciden" display="dynamic" CssClass="label label-danger"></asp:CompareValidator>                        
                        </div>
                         <asp:CheckBox hidden = False ID="cckrautoridad" runat="server"></asp:CheckBox>
                          </div>
                      
                        <div class="tab-pane fade" id="dni">
                        <div class="form-group">
                            <label>N° de documento</label>
                            <asp:TextBox type="number" ID="txtNumDocumento" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNumDocumento" runat="server" ErrorMessage="* Debe ingresar número de Documento" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtApellido" runat="server" ErrorMessage="* Debe ingresar Apellido" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtNombre" runat="server" ErrorMessage="* Debe Ingresar Nombre" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Provincia</label>
                            <asp:DropDownList ID="ddlProvincia" runat="server" class="form-control" ></asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="ddlProvincia" runat="server" ErrorMessage="* Debe seleccionar Provincia" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                            <asp:CompareValidator ID="cvddlProvincia" ControlToValidate="ddlProvincia" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtDomicilio" runat="server" ErrorMessage="* Debe Ingresar Domicilio" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <asp:DropDownList ID="ddlNacionalidad" runat="server" class="form-control" ></asp:DropDownList>
                            <asp:CompareValidator ID="cvddlNacionalidad" ControlToValidate="ddlNacionalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Nacionalidad" CssClass="label label-danger"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <asp:TextBox ID="txtFechaNacimiento" runat="server" class="form-control datepicker"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtFechaNacimiento" runat="server" ErrorMessage="* Debe ingresar Fecha Nacimiento" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                            </div>
                        <div class="form-group">
                            <label>Sexo</label>
                            <asp:DropDownList ID="ddlSexo" runat="server" class="form-control"></asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ddlSexo" runat="server" ErrorMessage="* Debe seleccionar Sexo" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                            <asp:CompareValidator ID="CVddlsexo" ControlToValidate="ddlSexo" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Sexo" CssClass="label label-danger"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Localidad</label>
                            <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="ddlLocalidad" runat="server" ErrorMessage="* Debe seleccionar Localidad" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                            <asp:CompareValidator ID="CVddlLocalidad" ControlToValidate="ddlLocalidad" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>Lugar de nacimiento</label>
                            <asp:TextBox ID="txtLugarNacimiento" runat="server" class="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="txtLugarNacimiento" runat="server" ErrorMessage="* Debe ingresar Lugar de Nacimiento" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group">
                            <label>Piso</label>
                            <asp:TextBox type="number" ID="txtPiso" runat="server" class="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="txtPiso" runat="server" ErrorMessage="* Debe ingresar Piso" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group">
                            <label>Departamento</label>
                            <asp:TextBox ID="txtDepartamento" runat="server" class="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="txtDepartamento" runat="server" ErrorMessage="* Debe ingresar Departamento" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group">
                            <label>Nro De Puerta</label>
                            <asp:TextBox type="number" ID="txtNumPuerta" runat="server" class="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="txtNumPuerta" runat="server" ErrorMessage="* Debe ingresar Numero de Puerta" display="dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
                        </div>
                             <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
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
