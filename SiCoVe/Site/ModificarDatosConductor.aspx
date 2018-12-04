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
                <h1 class="page-header">Modificar Usuario</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Modificar datos del Conductor
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
                                            <asp:TextBox ID="txtMailACNC" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Contraseña</label>
                                            <asp:TextBox ID="txtContraseñaACNC" runat="server" class="form-control" type="password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtContraseñaACNC" runat="server" ErrorMessage="* Debe ingresar Contraseña" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" runat="server" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtApellidoDNI" runat="server" ErrorMessage="* Debe ingresar Apellido" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNombreDNI" runat="server" ErrorMessage="* Debe ingresar Nombre" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlSexoDNI" ControlToValidate="ddlSexoDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Sexo" CssClass="label label-danger"></asp:CompareValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlNacionalidadDNI" ControlToValidate="ddlNacionalidadDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Nacionalidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvinciaDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlProvinciaDNI" ControlToValidate="ddlProvinciaDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlLocalidadDNI" ControlToValidate="ddlLocalidadDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoDNI" runat="server" class="form-control datepicker"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtFecNacimientoDNI" runat="server" ErrorMessage="* Debe Ingresar Fecha de Nacimiento" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox type="number" ID="txtDocumentoDNI" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtDocumentoDNI" runat="server" ErrorMessage="* Debe Ingresar Documento" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="txtDomicilioDNI" runat="server" ErrorMessage="* Debe Ingresar Domicilio" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
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
                                            <asp:TextBox type="number" ID="txtNumLicenciaLIC" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVNumLicenciaLIC" ControlToValidate="txtNumLicenciaLIC" runat="server" ErrorMessage="* Debe Ingresar Licencia" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Municipio</label>
                                            <asp:DropDownList ID="ddlMunicipio" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlMunicipio" ControlToValidate="ddlMunicipio" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Municipio" CssClass="label label-danger"></asp:CompareValidator>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox ID="txtFecOtorgamientoLIC" runat="server" class="form-control datepicker"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtFecOtorgamientoLIC" ControlToValidate="txtFecOtorgamientoLIC" runat="server" ErrorMessage="* Debe Ingresar Fecha Otorgamiento" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoLIC" runat="server" class="form-control datepicker"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RFVtxtFecVencimientoLIC" ControlToValidate="txtFecVencimientoLIC" runat="server" ErrorMessage="* Debe Ingresar Fecha Vencimiento" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                             <asp:DropDownList ID="ddlCategoriaLIC" runat="server" class="form-control"></asp:DropDownList>
                                             <%--<asp:TextBox ID="txtcategoriLIC" runat="server" TextMode="Number" class="form-control" placeholder="Ingrese la categoría"></asp:TextBox>--%>
                                             <asp:CompareValidator ID="CVddlCategoriaLIC" ControlToValidate="ddlCategoriaLIC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Categoría" CssClass="label label-danger"></asp:CompareValidator>                                       
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="txtClasesLIC" runat="server" ErrorMessage="* Debe ingresar la Clase" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>       
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
                                            <asp:TextBox type="number" ID="txtNumCedulaCED" runat="server" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="txtNumCedulaCED" runat="server" ErrorMessage="* Debe ingresar el N° de cédula" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Es conductor autorizado?
                                            <asp:CheckBox ID="cckAutorizado" runat="server"></asp:CheckBox> </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" runat="server" class="form-control"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="txtDominioCED" runat="server" ErrorMessage="* Debe ingresar Dominio" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:DropDownList ID="ddlEstadoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="red" ControlToValidate="ddlEstadoCED" runat="server" ErrorMessage="* Debe Seleccinar Estado" display="Dynamic"></asp:RequiredFieldValidator> 
                                            <asp:CompareValidator ID="CVddlEstadoCED" ControlToValidate="ddlEstadoCED" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Estado" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlMarcaCED" ControlToValidate="ddlMarcaCED" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Marca" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="txtModeloCED" runat="server" ErrorMessage="* Debe ingresar Modelo" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:DropDownList ID="ddlTipoCED" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="red" ControlToValidate="ddlTipoCED" runat="server" ErrorMessage="* Debe ingresar Tipo" display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:DropDownList ID="ddlUsoCED" runat="server" class="form-control"></asp:DropDownList>
                                             <asp:CompareValidator ID="CVddlUsoCED" ControlToValidate="ddlUsoCED" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="* Debe seleccionar Uso" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                          <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox type="number" ID="txtAnioCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtAnioCED"  ControlToValidate="txtAnioCED" runat="server" ErrorMessage="* Debe ingresar Año" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtChasisCED"  ControlToValidate="txtChasisCED" runat="server" ErrorMessage="* Debe ingresar Chasis" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Motor</label>
                                            <asp:TextBox ID="txtNumMotorCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ControlToValidate="txtNumMotorCED" runat="server" ErrorMessage="* Debe ingresar Motor" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoCED" runat="server" class="form-control datepicker"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ControlToValidate="txtFecVencimientoCED" runat="server" ErrorMessage="* Debe ingresar Vencimiento" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtCilindradaCED" ControlToValidate="txtCilindradaCED" runat="server" ErrorMessage="* Debe ingresar Cilindrada" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Titular</label>
                                            <asp:TextBox ID="txtTitularCED" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtTitularCED" ControlToValidate="txtTitularCED" runat="server" ErrorMessage="* Debe ingresar Titular" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:DropDownList ID="ddlAseguradoraSEG" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlAseguradoraSEG" ControlToValidate="ddlAseguradoraSEG" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Aseguradora" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Asegurado</label>
                                            <asp:TextBox ID="txtAseguradoSEG" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtAseguradoSEG"  ControlToValidate="txtAseguradoSEG" runat="server" ErrorMessage="* Debe ingresar Asegurado" display="Dynamic" CssClass="label label-danger" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" type="number" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVtxtPolizaSEG"  ControlToValidate="txtPolizaSEG" runat="server" ErrorMessage="* Debe ingresar Poliza" display="Dynamic" CssClass="label label-danger" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox ID="txtFecDesdeSEG" runat="server" class="form-control datepicker"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ControlToValidate="txtFecDesdeSEG" runat="server" ErrorMessage="* Debe ingresar Fecha desde" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox ID="txtFecHastaSEG" runat="server" class="form-control datepicker" required="required"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ControlToValidate="txtFecHastaSEG" runat="server" ErrorMessage="* Debe ingresar Fecha hasta" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>                                       
                                        </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" style="display:block; margin:auto;" OnClick="btnGuardarMDC_Click" Text="Modificar" />
                                    <ajaxToolkit:ModalPopupExtender ID="btnRegistrarACNC_ModalPopupExtender" runat="server" BehaviorID="btnRegistrarACNC_ModalPopupExtender" TargetControlID="btnRegistrarACNC" PopupControlID="panelModal" BackgroundCssClass="modalBackground">
                                    </ajaxToolkit:ModalPopupExtender>
                                    <br />
                                        <asp:Panel ID="PanelModal" runat="server" Style="display:none; background:white; width:auto; height:auto; margin-left:auto;">
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
