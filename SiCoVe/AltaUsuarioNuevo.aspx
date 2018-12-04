<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaUsuarioNuevo.aspx.cs" Inherits="SiCoVe.AltaUsuarioNuevo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Alta de usuario</title>

    <script>
        function cckConductor_click() {
            if (document.getElementById("cckConductor").checked) {
                document.getElementById("conducto1").style.display = "block"
                document.getElementById("conducto2").style.display = "block"
                document.getElementById("conducto3").style.display = "block"     
                document.getElementById("btnRegistrarACNC1").style.display = "none";
                document.getElementById("divBotonOculto").style.display = "none";
            } else {
                document.getElementById("conducto1").style.display = "none"
                document.getElementById("conducto2").style.display = "none"
                document.getElementById("conducto3").style.display = "none"    
                document.getElementById("btnRegistrarACNC1").style.display = "block";
                document.getElementById("divBotonOculto").style.display = "block";
            }  
        }
    </script>

    <!-- Bootstrap Core CSS -->
    <link href="~/Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="~/Content/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="~/Content/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="~/Content/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="navbar-header">
                    <asp:HyperLink class="navbar-brand" style="padding: 0px 10px;" runat="server" NavigateUrl="~/Index.aspx">
                        <img id="imgLog" runat="server" src="~/img/Logo.png" style="margin-top:3px;width:120px;height:43px;" />
                    </asp:HyperLink>
                    <a class="navbar-brand" href="~/Index.aspx" style="padding: 15px 5px;">SiCoVe 1.0</a>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                 <asp:HyperLink runat="server" NavigateUrl="~/LogOut.aspx"><i class="fa fa-fw fa-power-off"></i> Salir </asp:HyperLink>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse"></div>
                </div>
            </nav>
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
                                    <li id="conducto1" style="display:none"><a href="#licencia"  data-toggle="tab">Datos licencia</a>
                                    </li>
                                    <li id="conducto2" style="display:none"><a href="#cedula" data-toggle="tab">Datos cédula</a>
                                    </li>
                                    <li id="conducto3" style="display:none"><a href="#seguro" data-toggle="tab">Datos seguro</a>
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
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtMailACNC" runat="server" ErrorMessage="* Debe ingresar Email" name="email" type="email" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <label>Contraseña</label>
                                                    <asp:TextBox ID="txtContraseñaACNC" runat="server" class="form-control" type="password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtContraseñaACNC" runat="server" ErrorMessage="* Debe ingresar Contraseña" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <label>Confirmar Contraseña</label>
                                                    <asp:TextBox ID="txtConContraseñaACNC" runat="server" class="form-control" type="password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtConContraseñaACNC" runat="server" ErrorMessage="* Debe Reingresar Contraseña" display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CVtxtConContraseñaACNC" ControlToValidate="txtConContraseñaACNC" ControlToCompare="txtContraseñaACNC" runat="server" ErrorMessage="* Las contraseñas no coinciden" display="Dynamic" CssClass="label label-danger"></asp:CompareValidator>
                                                </div>
                                                <div class="form-group">
                                                    <label>Es conductor?
                                                    <asp:CheckBox ID="cckConductor" runat="server" onclick="cckConductor_click()" ></asp:CheckBox> </label>
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
                                                    <asp:CompareValidator ID="CVddlSexoDNI" ControlToValidate="ddlSexoDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Sexo" CssClass="label label-danger"></asp:CompareValidator>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Nacionalidad</label>
                                                    <asp:DropDownList ID="ddlNacionalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                                    <asp:CompareValidator ID="CVddlNacionalidadDNI" ControlToValidate="ddlNacionalidadDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Nacionalidad" CssClass="label label-danger"></asp:CompareValidator>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Provincia</label>
                                                    <asp:DropDownList ID="ddlProvinciaDNI" runat="server" class="form-control"></asp:DropDownList>
                                                    <asp:CompareValidator ID="CVddlProvinciaDNI" ControlToValidate="ddlProvinciaDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Provincia" CssClass="label label-danger"></asp:CompareValidator>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Localidad</label>
                                                    <asp:DropDownList ID="ddlLocalidadDNI" runat="server" class="form-control"></asp:DropDownList>
                                                    <asp:CompareValidator ID="CVddlLocalidadDNI" ControlToValidate="ddlLocalidadDNI" runat="server" ValueToCompare="0" Operator="NotEqual" Display ="Dynamic" ErrorMessage="Debe seleccionar Localidad" CssClass="label label-danger"></asp:CompareValidator>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Fecha de nacimiento</label>
                                                    <asp:TextBox type="number" ID="txtFecNacimientoDNI" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
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
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtPisoDNI" runat="server" ErrorMessage="* Debe Ingresar Piso" CssClass="label label-danger"></asp:RequiredFieldValidator>--%>
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

                                                <div ID="divBotonOculto" class="form-group">
                                                    <asp:Button ID="btnRegistrarACNC1" runat="server" style="display:block; margin:auto;" class="btn btn-default" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
                                                </div>
                                            </div>
                                            <!-- Datos licencia -->
                                            <div class="tab-pane fade" id="licencia">
                                                <div class="form-group">
                                                    <label>N° de licencia</label>
                                                    <asp:TextBox type="number" ID="txtNumLicenciaLIC" runat="server" class="form-control"></asp:TextBox>
                                                    </div>
                                                <div class="form-group">
                                                    <label>Municipio</label>
                                                    <asp:DropDownList ID="ddlMunicipio" runat="server" class="form-control"></asp:DropDownList>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Fecha de otorgamiento</label>
                                                    <asp:TextBox type="number" ID="txtFecOtorgamientoLIC" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Fecha de vencimiento</label>
                                                    <asp:TextBox type="number" ID="txtFecVencimientoLIC" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Categoría</label>
                                                     <asp:DropDownList ID="ddlCategoriaLIC" runat="server" class="form-control"></asp:DropDownList>
                                                </div>
                                                <div class="form-group">
                                                    <label>Clases</label>
                                                    <asp:TextBox ID="txtClasesLIC" runat="server" class="form-control"></asp:TextBox>
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
                                                </div>
                                                <div class="form-group">
                                                    <label>Es conductor autorizado?
                                                    <asp:CheckBox ID="cckAutorizado" runat="server"></asp:CheckBox> </label>
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
                                                </div>
                                                <div class="form-group">
                                                    <label>Año</label>
                                                    <asp:TextBox type="number" ID="txtAnioCED" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Cuadro / Chasis</label>
                                                    <asp:TextBox ID="txtChasisCED" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Motor</label>
                                                    <asp:TextBox ID="txtNumMotorCED" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Fecha de vencimiento</label>
                                                    <asp:TextBox type="number" ID="txtFecVencimientoCED" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Cilindrada</label>
                                                    <asp:TextBox ID="txtCilindradaCED" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Titular</label>
                                                    <asp:TextBox ID="txtTitularCED" runat="server" class="form-control"></asp:TextBox>
                                                </div>
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
                                                    <asp:TextBox type="number"  ID="txtPolizaSEG" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Fecha desde</label>
                                                    <asp:TextBox type="number" ID="txtFecDesdeSEG" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>Fecha hasta</label>
                                                    <asp:TextBox type="number" ID="txtFecHastaSEG" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                                </div>

                                                <asp:Button ID="btnRegistrarACNC2" runat="server" style="display:block; margin:auto;" class="btn btn-default" Text="Registrar" OnClick="btnRegistrarACNC_Click" />
                                            </div>
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
                                                        <%--<div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        </div>--%>
                                                        <br />
                                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                        </asp:ScriptManager>
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                            <ContentTemplate>
                                                                <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Style="display: block; margin: auto;" OnClick="btnRegistrarACNC_Click" Text="Aceptar" />
                                                                 <br />
                                                                <asp:Panel ID="PanelModal" runat="server" Style="display: none; background: white; width: auto; height: auto; margin-left: auto;">
                                                                    <div class="modal-header">
                                                                        <button class="close" data-dismiss="modal">&times;</button>
                                                                        <h4 class="modal-title">Alta de Usuario</h4>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        Se ha dado de alta el usuario correctamente
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
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script type="text/javascript" src="/Content/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script type="text/javascript" src="/Content/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script type="text/javascript" src="/Content/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script type="text/javascript" src="/Content/dist/js/sb-admin-2.js"></script>
    </form>
</body>
</html>
