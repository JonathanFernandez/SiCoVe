<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VerificacionDatos.aspx.cs" Inherits="SiCoVe.Site.VerificacionDatos" %>
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
                <h1 class="page-header">Verificación</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Verificación de datos
                    </div>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#vehiculo" data-toggle="tab">Selección de vehículo</a></li>
                            <li><a href="#dni" data-toggle="tab">Datos DNI</a></li>
                            <li><a href="#licencia" data-toggle="tab">Datos licencia</a></li>
                            <li><a href="#cedula" data-toggle="tab">Datos cédula</a></li>
                            <li><a href="#seguro" data-toggle="tab">Datos seguro</a></li>
                            <li><a href="#control" data-toggle="tab">Finalizar control</a></li>
                        </ul>
                        <br />
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="tab-content">
                                    <!-- Selección de Vehículo -->
                                    <div class="tab-pane fade in active" id="vehiculo">
                                        <div class="form-group">
                                            <label>Seleccione persona</label>
                                            <asp:DropDownList ID="ddlPersona" runat="server" class="form-control" OnSelectedIndexChanged="ddlPersona_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
<%--                                            <asp:CompareValidator ID="cvddlPersona" ControlToValidate="ddlPersona" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Persona" CssClass="label label-danger"></asp:CompareValidator>--%>
                                        </div>
                                    </div>
                                    <!-- Datos DNI -->
                                    <div class="tab-pane fade" id="dni">
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombreDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoDNI" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Número de documento</label>
                                            <asp:TextBox ID="txtDocumentoDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar de nacimiento</label>
                                            <asp:TextBox ID="txtLugNacimientoDNI" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Datos licencia -->
                                    <div class="tab-pane fade" id="licencia">
                                        <div class="form-group">
                                            <label>N° de licencia</label>
                                            <asp:TextBox ID="txtNumLicenciaLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido</label>
                                            <asp:TextBox ID="txtApellidoLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtNombresLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <asp:TextBox ID="txtFecNacimientoLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Domicilio</label>
                                            <asp:TextBox ID="txtDomicilioLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Nacionalidad</label>
                                            <asp:DropDownList ID="ddlNacionalidadLIC" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <asp:DropDownList ID="ddlSexoLIC" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div> 
                                        <div class="form-group">
                                            <label>Fecha de otorgamiento</label>
                                            <asp:TextBox ID="txtFecOtorgamientoLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Categoría</label>
                                            <asp:TextBox ID="txtcategoriLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Clases</label>
                                            <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="85" Wrap="true" ReadOnly="true" TextMode="MultiLine"></asp:textbox>
                                        </div>
                                    </div>
                                    <!-- Datos cédula -->
                                    <div class="tab-pane fade" id="cedula">
                                        <div class="form-group">
                                            <label>N° de cédula</label>
                                            <asp:TextBox ID="txtNumCedulaCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Estado</label>
                                            <asp:DropDownList ID="ddlEstadoCED" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaCED" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <asp:DropDownList ID="ddlTipoCED" runat="server" class="form-control" disabled></asp:DropDownList>
                                       </div>
                                        <div class="form-group">
                                            <label>Uso</label>
                                            <asp:DropDownList ID="ddlUsoCED" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Cuadro / Chasis</label>
                                            <asp:TextBox ID="txtChasisCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox ID="txtNumMotorCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox ID="txtFecVencimientoCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Titular</label>
                                            <asp:TextBox ID="txtTitularCED" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                       <div class="form-group">
                                       <label>Es Autorizado (s/n:)</label>
                                       <asp:RadioButtonList ID="radBEsAutorizado" runat="server" Enabled="false">
							                <asp:ListItem Text ="Activo" Value= "True">  Si</asp:ListItem>
							                <asp:ListItem Text ="Activo" Value= "False"> No</asp:ListItem>
						                </asp:RadioButtonList>
                                    </div>
                                    </div>
                                    <!-- Datos seguro -->
                                    <div class="tab-pane fade" id="seguro">
                                        <div class="form-group">
                                            <label>Aseguradora</label>
                                            <asp:DropDownList ID="ddlAseguradoraSEG" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Asegurado</label>
                                            <asp:TextBox ID="txtAseguradoSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Póliza</label>
                                            <asp:TextBox ID="txtPolizaSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Marca</label>
                                            <asp:DropDownList ID="ddlMarcaSEG" runat="server" class="form-control" disabled></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Modelo</label>
                                            <asp:TextBox ID="txtModeloSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Cilindrada</label>
                                            <asp:TextBox ID="txtcilindradaSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Dominio</label>
                                            <asp:TextBox ID="txtDominioSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Año</label>
                                            <asp:TextBox ID="txtAnioSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de motor</label>
                                            <asp:TextBox ID="txtNumMotorSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>N° de chasis</label>
                                            <asp:TextBox ID="txtNumChasisSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha desde</label>
                                            <asp:TextBox ID="txtFecDesdeSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha hasta</label>
                                            <asp:TextBox ID="txtFecHastaSEG" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- Finalizar control -->
                                    <div class="tab-pane fade" id="control">
                                        <div class="form-group">
                                            <label>Provincia</label>
                                            <asp:DropDownList ID="ddlProvinciaFC" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="CVddlProvinciaFC" ControlToValidate="ddlProvinciaFC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator> 
                                        </div>
                                        <div class="form-group">
                                            <label>Localidad</label>
                                            <asp:DropDownList ID="ddlLocalidadFC" runat="server" class="form-control"></asp:DropDownList>
                                            <asp:CompareValidator ID="cvLocalidadFC" ControlToValidate="ddlLocalidadFC" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Lugar control</label>
                                            <asp:TextBox ID="txtLugarControlFC" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfLugarControlFC" runat="server" ErrorMessage="El Lugar de control es obligatorio" ControlToValidate="txtLugarControlFC" Display ="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Observaciones</label>
                                            <asp:textbox id="txtObservacionesControlFC" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                        </div>
                                        <br />
                                        <asp:Button ID="btnAprobarVD" runat="server" style="display:block; margin:auto;" class="btn btn-default" Text="Finalizar" OnClick="btnAprobarVD_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>
        </div>   
    </div>
</asp:Content>
