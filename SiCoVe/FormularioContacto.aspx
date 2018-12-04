<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioContacto.aspx.cs" Inherits="SiCoVe.FormularioContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Alta de usuario</title>



    <!-- Bootstrap Core CSS -->
    <link href="~/Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="~/Content/vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="~/Content/dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="~/Content/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
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
                    <asp:HyperLink class="navbar-brand" Style="padding: 0px 10px;" runat="server" NavigateUrl="~/Index.aspx">
                        <img id="imgLog" runat="server" src="~/img/Logo.png" style="margin-top: 3px; width: 120px; height: 43px;" />
                    </asp:HyperLink>
                    <a class="navbar-brand" href="~/Index.aspx" style="padding: 15px 5px;">SiCoVe 1.0</a>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
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
                        <h1 class="page-header">Formulario De Contacto</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Completar los siguientes datos
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-8">
                                       
                                        <div class="form-group">
                                            <label>Detalle </label>
                                            <asp:TextBox TextMode="MultiLine" ID="txtDetalle" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvdenuncia" runat="server" ErrorMessage="Debe Ingresar Detalle" ControlToValidate="txtDetalle" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        </div>
                                     
                                        <div class="form-group">
                                            <asp:Button ID="btnEnviarFormulario" runat="server" Text="Enviar Formulario" Style="display: block; margin: auto;" OnClick="btnEnviarFormulario_Click" CssClass="btn btn-default" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
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
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <%--    <button type="button" class="btn btn-primary">Save changes</button>--%>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
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
