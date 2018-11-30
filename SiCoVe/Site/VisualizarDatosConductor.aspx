<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VisualizarDatosConductor.aspx.cs" Inherits="SiCoVe.Site.VisualizarDatosConductor" %>
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
                <h1 class="page-header">Visualizar Datos</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Visualizar datos del conductor
                    </div>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#datosusuario" data-toggle="tab">Datos de Usuario</a>
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
                                            <asp:TextBox ID="txtMailACNC" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" required="required" display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar un Email válido." ValidationExpression="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>

                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red" ControlToValidate="txtApellidoDNI" runat="server" ErrorMessage="* Debe ingresar Apellido" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" ControlToValidate="txtNombreDNI" runat="server" ErrorMessage="* Debe ingresar Nombre" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:TextBox ID="txtSexoDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red" ControlToValidate="txtSexoDNI" runat="server" ErrorMessage="* Debe Seleccionar Sexo" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:TextBox ID="txtNacionalidadDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="txtNacionalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Nacionalidad" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:TextBox ID="txtProvinciaDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="txtProvinciaDNI" runat="server" ErrorMessage="* Debe Seleccionar Provincia" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:TextBox ID="txtLocalidadDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="red" ControlToValidate="txtLocalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Localidad" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoDNI" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="red" ControlToValidate="txtFecNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Fecha de Nacimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox type="number" ID="txtDocumentoDNI" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="red" ControlToValidate="txtDocumentoDNI" runat="server" ErrorMessage="* Debe Ingresar Documento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label>Piso</label>
                                            <asp:TextBox type="number" ID="txtPisoDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Departamento</label>
                                            <asp:TextBox ID="txtDepartamentoDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Puerta</label>
                                            <asp:TextBox  ID="txtPuertaDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                            <asp:TextBox ID="txtLugarNacimientoDNI" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Datos licencia -->
                                    <div class="tab-pane fade" id="licencia">
                                        <div class="form-group">
                                            <label>N° de licencia</label>
                                            <asp:TextBox type="number" ID="txtNumLicenciaLIC" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="red" ControlToValidate="txtNumLicenciaLIC" runat="server" ErrorMessage="* Debe Ingresar el N° de licencia" display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Municipio</label>
                                            <asp:TextBox ID="txtMunicipio" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="red" ControlToValidate="txtMunicipio" runat="server" ErrorMessage="* Debe seleccionar Municipio" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox ID="txtFecOtorgamientoLIC" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="red" ControlToValidate="txtFecOtorgamientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de otorgamiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoLIC" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ForeColor="red" ControlToValidate="txtFecVencimientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de vencimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                             <asp:TextBox ID="txtCategoriaLIC" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="red" ControlToValidate="txtCategoriaLIC" runat="server" ErrorMessage="* Debe ingresar la Categoria" display="Dynamic"></asp:RequiredFieldValidator>                                        
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ForeColor="red" ControlToValidate="txtClasesLIC" runat="server" ErrorMessage="* Debe ingresar la Clase" display="Dynamic"></asp:RequiredFieldValidator>     
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservaciones" ReadOnly="true" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                        </div>
                                    </div>
                                    <!-- Datos cédula -->
                                    <div class="tab-pane fade" id="cedula">
                                        <div class="form-group">
                                            <label>N° de cédula</label>
                                            <asp:TextBox type="number" ID="txtNumCedulaCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="red" ControlToValidate="txtNumCedulaCED" runat="server" ErrorMessage="* Debe ingresar el N° de cédula" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Es conductor autorizado?
                                            <asp:CheckBox ID="cckAutorizado"  onclick="return false;" runat="server"></asp:CheckBox> </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Dominio" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:TextBox ID="txtEstadoCED" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="red" ControlToValidate="txtEstadoCED" runat="server" ErrorMessage="* Debe Seleccinar Estado" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:TextBox ID="txtMarcaCED" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ForeColor="red" ControlToValidate="txtMarcaCED" runat="server" ErrorMessage="* Debe seleccionar Marca" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Modelo" display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:TextBox ID="txtTipoCED" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="red" ControlToValidate="txtTipoCED" runat="server" ErrorMessage="* Debe ingresar Tipo" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:TextBox ID="txtUsoCED" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                          <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox type="number" ReadOnly="true" ID="txtAnioCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ForeColor="red" ControlToValidate="txtAnioCED" runat="server" ErrorMessage="* Debe ingresar Año" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ForeColor="red" ControlToValidate="txtChasisCED" runat="server" ErrorMessage="* Debe ingresar Chasis" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Motor</label>
                                            <asp:TextBox ID="txtNumMotorCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ForeColor="red" ControlToValidate="txtNumMotorCED" runat="server" ErrorMessage="* Debe ingresar Motor" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoCED" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ForeColor="red" ControlToValidate="txtFecVencimientoCED" runat="server" ErrorMessage="* Debe ingresar Vencimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ForeColor="red" ControlToValidate="txtCilindradaCED" runat="server" ErrorMessage="* Debe ingresar Cilindrada" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:TextBox ID="txtAseguradoraSEG" ReadOnly="true" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ForeColor="red" ControlToValidate="txtAseguradoraSEG" runat="server" ErrorMessage="* Debe ingresar Aseguradora" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" ReadOnly="true" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ForeColor="red" ControlToValidate="txtPolizaSEG" runat="server" ErrorMessage="* Debe ingresar Asegurado" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox ID="txtFecDesdeSEG" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ForeColor="red" ControlToValidate="txtFecDesdeSEG" runat="server" ErrorMessage="* Debe ingresar Fecha desde" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox ID="txtFecHastaSEG" ReadOnly="true" runat="server" class="form-control " required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ForeColor="red" ControlToValidate="txtFecHastaSEG" runat="server" ErrorMessage="* Debe ingresar Fecha hasta" display="Dynamic"></asp:RequiredFieldValidator>                                        
                                        </div>
                                    </div>
                                </div>
                                <br />

                            </div>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</asp:Content>
