<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModificarDatosConductor.aspx.cs" Inherits="SiCoVe.ModificarDatosConductor" %>
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
                <h1 class="page-header">Modificar Datos Conductor</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
            <!--FIN-->

        <div class="panel panel-default">
            <div class="panel-heading">
                Modificar datos de Conductor
            </div>

            <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#datosconductor" data-toggle="tab">Datos Conduictor</a>
                            </li>
                            <li><a href="#dni" data-toggle="tab">Datos Conductor</a>
                            </li>
                        </ul>
                        <br />
                  <div class="row">
                    <div class="col-lg-4">
                        <div class="tab-content">
                     <div class="tab-pane fade in active" id="datosconductor">
                       <div class="form-group">
                            <label>E-Mail</label>
                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" name="email" type="email" required="required"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar E-Mail" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txtEMail" runat="server" ErrorMessage="* Debe ingresar un Email válido." ValidationExpression="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <asp:CheckBox hidden = False ID="cckrdatoconductor" runat="server"></asp:CheckBox>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="ddlProvincia" runat="server" ErrorMessage="* Debe seleccionar Provincia" Display="Dynamic"></asp:RequiredFieldValidator>
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
                            <asp:Button ID="btnRegistrarMDC" runat="server" class="btn btn-default" Text="Modificar" OnClick="btnRegistrarMDC_Click" />
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
 <%--<div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Modificación de datos</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Modificación de datos de conductor
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
                                            <asp:TextBox ID="txtMailSM" runat="server" class="form-control" placeholder="Ingrese E-Mail"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseñaSM" runat="server" class="form-control" type="password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Confirmar Contraseña</label>
                                            <asp:TextBox ID="txtConContraseñaSM" runat="server" class="form-control" type="password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoDNI" runat="server" class="form-control"></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoDNI" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox ID="txtDocumentoDNI" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                            <asp:DropDownList ID="ddlLugNacimientoDNI" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <!-- Datos licencia -->
                                    <div class="tab-pane fade" id="licencia">
                                        <div class="form-group">
                                            <label>N° de licencia</label>
                                            <asp:TextBox ID="txtNumLicenciaLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombresLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadLIC" runat="server" class="form-control"></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoLIC" runat="server" class="form-control"></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox ID="txtFecOtorgamientoLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                            <asp:TextBox ID="txtcategoriLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                        </div>
                                    </div>
                                    <!-- Datos cédula -->
                                    <div class="tab-pane fade" id="cedula">
                                        <div class="form-group">
                                            <label>N° de cédula</label>
                                            <asp:TextBox ID="txtNumCedulaCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:DropDownList ID="ddlEstadoCED" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaCED" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:DropDownList ID="ddlTipoCED" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:DropDownList ID="ddlUsoCED" runat="server" class="form-control"></asp:DropDownList>
                                                <!--option>Privado</!--option>
                                                <option>Público</option>
                                                <option>Oficial</option-->
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox ID="txtNumMotorCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Titular</label>
                                            <asp:TextBox ID="txtTitularCED" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Autorizado</label>
                                            <asp:TextBox ID="txtAutorizado" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <!--<div class="form-group">
                                            <label>Documento</label>
                                            <asp:TextBox ID="txtDocumentoCED" runat="server" class="form-control" placeholder="Ingrese el documento"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioCED" runat="server" class="form-control" placeholder="Ingrese el domicilio"></asp:TextBox>
                                        </div>-->
                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:DropDownList ID="ddlAseguradoraSEG" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Asegurado</label>
                                            <asp:TextBox ID="txtAseguradoSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaSEG" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtcilindradaSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox ID="txtAnioSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox ID="txtNumMotorSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de chasis</label>
                                            <asp:TextBox ID="txtNumChasisSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox ID="txtFecDesdeSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox ID="txtFecHastaSEG" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <asp:Button ID="btnEnviar" runat="server" class="btn btn-default" Text="Enviar" />
                                    <!-- Finalizar control -->
                                    <!--<div class="tab-pane fade" id="control">
                                        <div class="form-group">
                                            <label>Lugar control</label>
                                            <asp:TextBox ID="txtLugarControl" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservacionesControl" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                        </div>
                                        <br />
                                        <asp:Button ID="btnAprobarVD" runat="server" class="btn btn-default" Text="Finalizar" />
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>
        </div>   
    </div>--%>
</asp:Content>