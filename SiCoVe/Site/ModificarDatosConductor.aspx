<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ModificarDatosConductor.aspx.cs" Inherits="SiCoVe.ModificarDatosConductor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
            <style>
        .modalBackground
        {
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
                <h1 class="page-header">Modificar usuario</h1>
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
                            <li class="active"><a href="#datosusuario" data-toggle="tab">Modificar datos del Conductor</a>
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
                                            <asp:TextBox ID="txtMailACNC" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" required="required" display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar un Email válido." ValidationExpression="^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$" display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseñaACNC" runat="server" class="form-control" type="password" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" ControlToValidate="txtContraseñaACNC" runat="server" ErrorMessage="* Debe ingresar Contraseña" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red" ControlToValidate="txtApellidoDNI" runat="server" ErrorMessage="* Debe ingresar Apellido" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" ControlToValidate="txtNombreDNI" runat="server" ErrorMessage="* Debe ingresar Nombre" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red" ControlToValidate="ddlSexoDNI" runat="server" ErrorMessage="* Debe Seleccionar Sexo" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control" required="required"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="ddlNacionalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Nacionalidad" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvinciaDNI" runat="server" class="form-control" required="required"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="ddlProvinciaDNI" runat="server" ErrorMessage="* Debe Seleccionar Provincia" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="red" ControlToValidate="ddlLocalidadDNI" runat="server" ErrorMessage="* Debe Seleccionar Localidad" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoDNI" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="red" ControlToValidate="txtFecNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Fecha de Nacimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox type="number" ID="txtDocumentoDNI" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="red" ControlToValidate="txtDocumentoDNI" runat="server" ErrorMessage="* Debe Ingresar Documento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="red" ControlToValidate="txtDomicilioDNI" runat="server" ErrorMessage="* Debe Ingresar Domicilio"></asp:RequiredFieldValidator>--%>
                                        </div>

                                        <div class="form-group">
                                            <label>Piso</label>
                                            <asp:TextBox type="number" ID="txtPisoDNI" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ForeColor="red" ControlToValidate="txtPisoDNI" runat="server" ErrorMessage="* Debe Ingresar Piso"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Departamento</label>
                                            <asp:TextBox ID="txtDepartamentoDNI" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="red" ControlToValidate="txtDepartamentoDNI" runat="server" ErrorMessage="* Debe Ingresar Departamento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Puerta</label>
                                            <asp:TextBox  ID="txtPuertaDNI" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="red" ControlToValidate="txtPuertaDNI" runat="server" ErrorMessage="* Debe Ingresar Puerta"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                         <%--   <asp:DropDownList ID="ddlLugNacimientoDNI" runat="server" class="form-control"></asp:DropDownList>--%>
                                            <asp:TextBox ID="txtLugarNacimientoDNI" runat="server" class="form-control"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="red" ControlToValidate="txtLugarNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Lugar Nacimiento"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>
                                    <!-- Datos licencia -->
                                    <div class="tab-pane fade" id="licencia">
                                        <div class="form-group">
                                            <label>N° de licencia</label>
                                            <asp:TextBox type="number" ID="txtNumLicenciaLIC" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="red" ControlToValidate="txtNumLicenciaLIC" runat="server" ErrorMessage="* Debe Ingresar el N° de licencia" display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Municipio</label>
                                            <asp:DropDownList ID="ddlMunicipio" runat="server" class="form-control" required="required"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="red" ControlToValidate="ddlMunicipio" runat="server" ErrorMessage="* Debe seleccionar Municipio" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox ID="txtFecOtorgamientoLIC" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="red" ControlToValidate="txtFecOtorgamientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de otorgamiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoLIC" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ForeColor="red" ControlToValidate="txtFecVencimientoLIC" runat="server" ErrorMessage="* Debe ingresar la fecha de vencimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                             <asp:DropDownList ID="ddlCategoriaLIC" runat="server" class="form-control"></asp:DropDownList>
                                             <%--<asp:TextBox ID="txtcategoriLIC" runat="server" TextMode="Number" class="form-control" placeholder="Ingrese la categoría"></asp:TextBox>--%>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="red" ControlToValidate="ddlCategoriaLIC" runat="server" ErrorMessage="* Debe ingresar la Categoria" display="Dynamic"></asp:RequiredFieldValidator>                                        
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ForeColor="red" ControlToValidate="txtClasesLIC" runat="server" ErrorMessage="* Debe ingresar la Clase" display="Dynamic"></asp:RequiredFieldValidator>     
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" ForeColor="red" ControlToValidate="txtObservaciones" runat="server" ErrorMessage="* Debe ingresar las observaciones"></asp:RequiredFieldValidator>--%> 
                                        </div>
                                    </div>
                                    <!-- Datos cédula -->
                                    <div class="tab-pane fade" id="cedula">
                                        <div class="form-group">
                                            <label>N° de cédula</label>
                                            <asp:TextBox type="number" ID="txtNumCedulaCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="red" ControlToValidate="txtNumCedulaCED" runat="server" ErrorMessage="* Debe ingresar el N° de cédula" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Es conductor autorizado?
                                            <asp:CheckBox ID="cckAutorizado" runat="server"></asp:CheckBox> </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Dominio" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:DropDownList ID="ddlEstadoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="red" ControlToValidate="ddlEstadoCED" runat="server" ErrorMessage="* Debe Seleccinar Estado" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ForeColor="red" ControlToValidate="ddlMarcaCED" runat="server" ErrorMessage="* Debe seleccionar Marca" display="Dynamic"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ForeColor="red" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Modelo" display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:DropDownList ID="ddlTipoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="red" ControlToValidate="ddlTipoCED" runat="server" ErrorMessage="* Debe ingresar Tipo" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:DropDownList ID="ddlUsoCED" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                          <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox type="number" ID="txtAnioCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ForeColor="red" ControlToValidate="txtAnioCED" runat="server" ErrorMessage="* Debe ingresar Año" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ForeColor="red" ControlToValidate="txtChasisCED" runat="server" ErrorMessage="* Debe ingresar Chasis" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Motor</label>
                                            <asp:TextBox ID="txtNumMotorCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ForeColor="red" ControlToValidate="txtNumMotorCED" runat="server" ErrorMessage="* Debe ingresar Motor" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoCED" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ForeColor="red" ControlToValidate="txtFecVencimientoCED" runat="server" ErrorMessage="* Debe ingresar Vencimiento" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ForeColor="red" ControlToValidate="txtCilindradaCED" runat="server" ErrorMessage="* Debe ingresar Cilindrada" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:DropDownList ID="ddlAseguradoraSEG" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ForeColor="red" ControlToValidate="ddlAseguradoraSEG" runat="server" ErrorMessage="* Debe ingresar Aseguradora" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" runat="server" class="form-control" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ForeColor="red" ControlToValidate="txtPolizaSEG" runat="server" ErrorMessage="* Debe ingresar Asegurado" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox ID="txtFecDesdeSEG" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ForeColor="red" ControlToValidate="txtFecDesdeSEG" runat="server" ErrorMessage="* Debe ingresar Fecha desde" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox ID="txtFecHastaSEG" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ForeColor="red" ControlToValidate="txtFecHastaSEG" runat="server" ErrorMessage="* Debe ingresar Fecha hasta" display="Dynamic"></asp:RequiredFieldValidator>                                        
                                        </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" OnClick="btnGuardarMDC_Click" Text="Modificar" />
                                    <ajaxToolkit:ModalPopupExtender ID="btnRegistrarACNC_ModalPopupExtender" runat="server" BehaviorID="btnRegistrarACNC_ModalPopupExtender" DynamicServicePath="" TargetControlID="btnRegistrarACNC" PopupControlID="panelModal" BackgroundCssClass="modalBackground">
                                    </ajaxToolkit:ModalPopupExtender>
                                    <br />
                                    <asp:Panel ID="PanelModal" runat="server" Style="display:none; background:white; width:20%; height:auto; margin-left:90px;">
                                        <div class="modal-body">
                                            Se modificaron los datos correctamente.
                                        </div>
                                        <div modal-footer>
                                            <button class="btn" data-dismiss="modal" aria-hidden="true" style="margin-left: 166px;">Cerrar</button>
                                        </div>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>                                    
                                    
                                    
                                    
                                    </div>
                                </div>
                                <br />

                            </div>
                        </div>
                    </div>
                    <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
