﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SiCoVe.Login" %>

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
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <%--<form role="form">--%>
                            <fieldset>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                    <asp:TextBox  runat="server" ID="txtEmail" CssClass="form-control" placeholder="E-mail" name="email" type="email" autofocus required="required" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                    <asp:TextBox runat="server" ID="txtPass"  TextMode="Password" class="form-control" placeholder="Password" name="password"   value="" required="required"></asp:TextBox>
                                </div>
                                <%--<div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>--%>
                                <!-- Change this to a button or input when using this as a form -->
                                <%--<a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>--%>
                                 <asp:Button runat="server" Text="Login" id="btnLogin" class="btn btn-lg btn-success btn-block"  OnClick="btnLogin_Click" OnClientClick="btnLogin_OnClientClick()" />
                             <div class="form-group">
                                 <br />
                                    <asp:Label ID="lblMensaje" runat="server" Text="E-Mail o Password Incorrecta!" Visible="false"></asp:Label>
                                </div>
                            </fieldset>
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
