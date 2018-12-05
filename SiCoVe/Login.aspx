<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SiCoVe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>SiCoVe</title>

    <!-- Bootstrap Core CSS -->
    <link href="Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- MetisMenu CSS -->
    <link href="Content/vendor/metisMenu/metisMenu.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="Content/dist/css/sb-admin-2.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="Content/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <form id="frmLogin" runat="server">
            <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Ingreso al Sistema</h3>
                    </div>
                    <div class="panel-body">
                        <%--<form role="form">--%>
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox  runat="server" ID="txtEmail" CssClass="form-control" placeholder="E-mail" name="email" type="email" required="required" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtPass"  TextMode="Password" class="form-control" placeholder="Contraseña" name="password"   value="" required="required"></asp:TextBox>
                                </div>
                                <asp:Button runat="server" Text="Iniciar Sesión" id="btnLogin" class="btn btn-lg btn-success btn-block"  OnClick="btnLogin_Click" OnClientClick="btnLogin_OnClientClick()" />
                            </fieldset>

                            <br />

                            <div class="form-group">
                                <asp:Label ID="lblMensaje" runat="server" style="display: block; margin: auto;" Text="E-Mail o Password Incorrecta!" Visible="false" CssClass="label label-danger"></asp:Label>
                            </div>

                            <div class="form-group">
                                <asp:HyperLink class="navbar-brand" style="padding: 0px 10px;" runat="server" NavigateUrl="~/AltaUsuarioNuevo.aspx">
                                    <asp:Label ID="lblNuevoUsuario" runat="server">Crear usuario</asp:Label>
                                </asp:HyperLink>
                            </div>

                            <br />

                            <br/>
                            <div class="form-group">
                                <asp:HyperLink class="navbar-brand" style="padding: 0px 10px; margin-left: -129px;" runat="server" NavigateUrl="~/FormularioContacto.aspx">
                                    <asp:Label ID="Label1" runat="server">Formulario de Contacto</asp:Label>
                                </asp:HyperLink>
                            </div>
                       <%-- </form>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="Content/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Content/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="Content/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="Content/dist/js/sb-admin-2.js"></script>
    </form>
</body>
</html>
