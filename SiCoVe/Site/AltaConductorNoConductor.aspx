<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaConductorNoConductor.aspx.cs" Inherits="SiCoVe.Site.AltaConductorNoConductor" %>
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
                <h1 class="page-header">Alta de usuario</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Registrar Usuario
                    </div>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#datosusuario" data-toggle="tab">Datos Usuario</a>
                            </li>
                            <li><a href="#dni" data-toggle="tab">Datos DNI</a>
                            </li>
                            <li><a href="#licencia" data-toggle="tab">Datos licencia</a>
                            </li>
                            <li><a href="#cedula" data-toggle="tab">Datos cédula</a>
                            </li>
                            <li><a href="#seguro" data-toggle="tab">Datos seguro</a>
                            </li>
                        </ul>
                        <br />
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="tab-content">
                                    <!-- Datos Usuario -->
                                    <div class="tab-pane fade in active" id="datosusuario">
                                        <div class="form-group">
                                            <label>Mail</label>
                                            <asp:TextBox ID="txtMailACNC" runat="server" class="form-control" placeholder="Ingrese E-Mail"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar Email"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar un Email válido." ValidationExpression="[@]"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseñaACNC" runat="server" class="form-control" type="password" placeholder="Ingresar Contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" ControlToValidate="txtContraseñaACNC" runat="server" ErrorMessage="* Debe ingresar Contraseña"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Confirmar Contraseña</label>
                                            <asp:TextBox ID="txtConContraseñaACNC" runat="server" class="form-control" type="password" placeholder="Reingresar Contraseña"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" ControlToValidate="txtConContraseñaACNC" runat="server" ErrorMessage="* Debe Reingresar Contraseña"></asp:RequiredFieldValidator>
                                             <asp:CompareValidator ID="CompareValidator1" ForeColor="red"  ControlToValidate="txtConContraseñaACNC" ControlToCompare="txtContraseñaACNC" runat="server" ErrorMessage="* Las contraseñas no coinciden"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Es conductor?
                                            <asp:CheckBox ID="cckConductor" runat="server"></asp:CheckBox> </label>
                                        </div>
                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" runat="server" class="form-control" placeholder="Ingresar Apellido"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red" ControlToValidate="txtApellidoDNI" runat="server" ErrorMessage="* Debe ingresar Apellido"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" runat="server" class="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" ControlToValidate="txtNombreDNI" runat="server" ErrorMessage="* Debe ingresar Nombre"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red" ControlToValidate="ddlSexoDNI" runat="server" ErrorMessage="* Debe Seleccionar Sexo"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="ddlNacionalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Nacionalidad"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvinciaDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="ddlProvinciaDNI" runat="server" ErrorMessage="* Debe Seleccionar Provincia"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="red" ControlToValidate="ddlLocalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Localidad"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox type="number" ID="txtFecNacimientoDNI" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="red" ControlToValidate="txtFecNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Fecha de Nacimiento"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox type="number" ID="txtDocumentoDNI" runat="server" class="form-control" placeholder="Ingresar Documento"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="red" ControlToValidate="txtDocumentoDNI" runat="server" ErrorMessage="* Debe Ingresar Documento"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" runat="server" class="form-control" placeholder="Ingresar Domicilio"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="red" ControlToValidate="txtDomicilioDNI" runat="server" ErrorMessage="* Debe Ingresar Domicilio"></asp:RequiredFieldValidator>--%>
                                        </div>

                                        <div class="form-group">
                                            <label>Piso</label>
                                            <asp:TextBox type="number" ID="txtPisoDNI" runat="server" class="form-control" placeholder="Ingresar Piso"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ForeColor="red" ControlToValidate="txtPisoDNI" runat="server" ErrorMessage="* Debe Ingresar Piso"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Departamento</label>
                                            <asp:TextBox ID="txtDepartamentoDNI" runat="server" class="form-control" placeholder="Ingresar Departamento"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="red" ControlToValidate="txtDepartamentoDNI" runat="server" ErrorMessage="* Debe Ingresar Departamento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Puerta</label>
                                            <asp:TextBox  ID="txtPuertaDNI" runat="server" class="form-control" placeholder="Ingresar Puerta"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="red" ControlToValidate="txtPuertaDNI" runat="server" ErrorMessage="* Debe Ingresar Puerta"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                         <%--   <asp:DropDownList ID="ddlLugNacimientoDNI" runat="server" class="form-control"></asp:DropDownList>--%>
                                            <asp:TextBox ID="txtLugarNacimientoDNI" runat="server" class="form-control" placeholder="Ingresar Lugar Nacimiento"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="red" ControlToValidate="txtLugarNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Lugar Nacimiento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>
                                    <!-- Datos licencia -->
                                    <div class="tab-pane fade" id="licencia">
                                        <div class="form-group">
                                            <label>N° de licencia</label>
                                            <asp:TextBox type="number" ID="txtNumLicenciaLIC" runat="server" class="form-control" placeholder="Ingrese el N° de licencia"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="red" ControlToValidate="txtNumLicenciaLIC" runat="server" ErrorMessage="* Debe Ingresar el N° de licencia"></asp:RequiredFieldValidator>
                                            </div>
                                        <%--<div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoLIC" runat="server" class="form-control" placeholder="Ingrese el apellido"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombresLIC" runat="server" class="form-control" placeholder="Ingrese el/los nombre/s"></asp:TextBox>
                                        </div>--%>
                                        <%--<div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoLIC" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha de nacimiento"></asp:TextBox>
                                        </div>--%>
                                       <%-- <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioLIC" runat="server" class="form-control" placeholder="Ingrese el domicilio"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadLIC" runat="server" class="form-control"></asp:DropDownList>
                                        </div> --%>
                                        <div class="form-group">
                                            <label>Municipio</label>
                                            <asp:DropDownList ID="ddlMunicipio" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="red" ControlToValidate="ddlMunicipio" runat="server" ErrorMessage="* Debe seleccionar Municipio"></asp:RequiredFieldValidator>
                                        </div> 
                                     <%--   <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoLIC" runat="server" class="form-control"></asp:DropDownList>
                                        </div> --%>
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox type="number" ID="txtFecOtorgamientoLIC" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha de otorgamiento"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="red" ControlToValidate="txtFecOtorgamientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de otorgamiento"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox type="number" ID="txtFecVencimientoLIC" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha de vencimiento"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ForeColor="red" ControlToValidate="txtFecVencimientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de vencimiento"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                             <asp:DropDownList ID="ddlCategoriaLIC" runat="server" class="form-control"></asp:DropDownList>
                                             <%--<asp:TextBox ID="txtcategoriLIC" runat="server" TextMode="Number" class="form-control" placeholder="Ingrese la categoría"></asp:TextBox>--%>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="red" ControlToValidate="ddlCategoriaLIC" runat="server" ErrorMessage="* Debe ingresar la Categoria"></asp:RequiredFieldValidator>                                        
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control" placeholder="Ingrese la clases"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ForeColor="red" ControlToValidate="txtClasesLIC" runat="server" ErrorMessage="* Debe ingresar la Clase"></asp:RequiredFieldValidator>     
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine" placeholder="Ingrese las observaciones"></asp:textbox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" ForeColor="red" ControlToValidate="txtObservaciones" runat="server" ErrorMessage="* Debe ingresar las observaciones"></asp:RequiredFieldValidator>--%> 
                                        </div>
                                    </div>
                                    <!-- Datos cédula -->
                                    <div class="tab-pane fade" id="cedula">
                                        <div class="form-group">
                                            <label>N° de cédula</label>
                                            <asp:TextBox type="number" ID="txtNumCedulaCED" runat="server" class="form-control" placeholder="Ingrese el N° de cédula"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="red" ControlToValidate="txtNumCedulaCED" runat="server" ErrorMessage="* Debe ingresar el N° de cédula"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Es conductor autorizado?
                                            <asp:CheckBox ID="cckAutorizado" runat="server"></asp:CheckBox> </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" runat="server" class="form-control" placeholder="Ingrese el dominio"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Dominio"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:DropDownList ID="ddlEstadoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="red" ControlToValidate="ddlEstadoCED" runat="server" ErrorMessage="* Debe Seleccinar Estado"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ForeColor="red" ControlToValidate="ddlMarcaCED" runat="server" ErrorMessage="* Debe seleccionar Marca"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" runat="server" class="form-control" placeholder="Ingrese el modelo"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Modelo"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:DropDownList ID="ddlTipoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="red" ControlToValidate="ddlTipoCED" runat="server" ErrorMessage="* Debe ingresar Tipo"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:DropDownList ID="ddlUsoCED" runat="server" class="form-control"></asp:DropDownList>
                                                <!--option>Privado</!--option>
                                                <option>Público</option>
                                                <option>Oficial</option-->
                                        </div>
                                          <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox type="number" ID="txtAnioCED" runat="server" class="form-control" placeholder="Ingrese el año"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ForeColor="red" ControlToValidate="txtAnioCED" runat="server" ErrorMessage="* Debe ingresar Año"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" runat="server" class="form-control" placeholder="Ingrese el cuadro / chasis"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ForeColor="red" ControlToValidate="txtChasisCED" runat="server" ErrorMessage="* Debe ingresar Chasis"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox type="number" ID="txtNumMotorCED" runat="server" class="form-control" placeholder="Ingrese el N° de motor"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ForeColor="red" ControlToValidate="txtNumMotorCED" runat="server" ErrorMessage="* Debe ingresar Motor"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox type="number" ID="txtFecVencimientoCED" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha de vencimiento"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ForeColor="red" ControlToValidate="txtFecVencimientoCED" runat="server" ErrorMessage="* Debe ingresar Vencimiento"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control" placeholder="Ingrese la la cilindrada"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ForeColor="red" ControlToValidate="txtCilindradaCED" runat="server" ErrorMessage="* Debe ingresar Cilindrada"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Titular</label>
                                            <asp:TextBox ID="txtTitularCED" runat="server" class="form-control" placeholder="Ingrese el titular"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" ForeColor="red" ControlToValidate="txtTitularCED" runat="server" ErrorMessage="* Debe ingresar Titular"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:DropDownList ID="ddlAseguradoraSEG" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ForeColor="red" ControlToValidate="ddlAseguradoraSEG" runat="server" ErrorMessage="* Debe ingresar Aseguradora"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Asegurado</label>
                                            <asp:TextBox ID="txtAseguradoSEG" runat="server" class="form-control" placeholder="Ingrese el asegurado"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" ForeColor="red" ControlToValidate="txtAseguradoSEG" runat="server" ErrorMessage="* Debe ingresar Asegurado"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" runat="server" class="form-control" placeholder="Ingrese el póliza"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ForeColor="red" ControlToValidate="txtAseguradoSEG" runat="server" ErrorMessage="* Debe ingresar Asegurado"></asp:RequiredFieldValidator>
                                        </div>
                                        <%--<div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaSEG" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloSEG" runat="server" class="form-control" placeholder="Ingrese el modelo"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtcilindradaSEG" runat="server" class="form-control" placeholder="Ingrese la cilindrada"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioSEG" runat="server" class="form-control" placeholder="Ingrese el dominio"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox ID="txtNumMotorSEG" runat="server" class="form-control" placeholder="Ingrese el N° de motor"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de chasis</label>
                                            <asp:TextBox ID="txtNumChasisSEG" runat="server" class="form-control" placeholder="Ingrese el N° de chasis"></asp:TextBox>
                                        </div>--%>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox type="number" ID="txtFecDesdeSEG" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha desde"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ForeColor="red" ControlToValidate="txtFecDesdeSEG" runat="server" ErrorMessage="* Debe ingresar Fecha desde"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox type="number" ID="txtFecHastaSEG" runat="server" TextMode="Date" class="form-control" placeholder="Ingrese la fecha hasta"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ForeColor="red" ControlToValidate="txtFecHastaSEG" runat="server" ErrorMessage="* Debe ingresar Fecha hasta"></asp:RequiredFieldValidator>                                        
                                        </div>
                                    </div>
                                </div
                                <br />
                                <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
