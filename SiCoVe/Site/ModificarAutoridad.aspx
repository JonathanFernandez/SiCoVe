<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModificarAutoridad.aspx.cs" Inherits="SiCoVe.ModificarAutoridad" %>
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
                Modificar datos de Autoridad de Transito
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="txtLegajo" runat="server" ErrorMessage="* Debe ingresar Legajo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>E-Mail</label>
                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" name="email" type="email" required="required"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar E-Mail" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar un Email válido." ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" type="password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" ControlToValidate="txtContraseña" runat="server" ErrorMessage="* Debe ingresar Contraseña" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                         <asp:CheckBox hidden = False ID="cckrautoridad" runat="server"></asp:CheckBox>
                          </div>
                      
                        <div class="tab-pane fade" id="dni">
                        <div class="form-group">
                            <label>N° de documento</label>
                            <asp:TextBox type="number" ID="txtNumDocumento" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" ControlToValidate="txtNumDocumento" runat="server" ErrorMessage="* Debe ingresar número de Documento" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red" ControlToValidate="txtApellido" runat="server" ErrorMessage="* Debe ingresar Apellido" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="txtNombre" runat="server" ErrorMessage="* Debe Ingresar Nombre" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Provincia</label>
                            <asp:DropDownList ID="ddlProvincia" runat="server" class="form-control" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="ddlProvincia" runat="server" ErrorMessage="* Debe seleccionar Provincia"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Domicilio</label>
                            <asp:TextBox ID="txtDomicilio" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="red" ControlToValidate="txtDomicilio" runat="server" ErrorMessage="* Debe Ingresar Domicilio" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Nacionalidad</label>
                            <asp:DropDownList ID="ddlNacionalidad" runat="server" class="form-control" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="red" ControlToValidate="ddlNacionalidad" runat="server" ErrorMessage="* Debe seleccionar Nacionalidad" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <asp:TextBox type="number" ID="txtFechaNacimiento" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="red" ControlToValidate="txtFechaNacimiento" runat="server" ErrorMessage="* Debe ingresar Fecha Nacimiento" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        <div class="form-group">
                            <label>Sexo</label>
                            <asp:DropDownList ID="ddlSexo" runat="server" class="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="red" ControlToValidate="ddlSexo" runat="server" ErrorMessage="* Debe seleccionar Sexo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Localidad</label>
                            <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ForeColor="red" ControlToValidate="ddlLocalidad" runat="server" ErrorMessage="* Debe seleccionar Localidad" Display="Dynamic"></asp:RequiredFieldValidator>
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
                       </div>
                     </div>
                         <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Modificar" OnClick="btnRegistrarACNC_Click" />

                  </div>
                </div>
              </div>
              <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
        </div>         
    </div>
</asp:Content>
