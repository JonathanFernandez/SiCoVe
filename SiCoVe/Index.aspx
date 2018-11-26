<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SiCoVe.Index" %>
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
                <h1 class="page-header">Inicio</h1>

                <%--<h1 style="height:80%; width:80%; display:block; margin: auto; opacity: 0.5;">SiCoVe</h1>--%>

                <asp:Image ID="imgLogo" runat="server" style="height:80%; width:80%; display:block; margin:auto; opacity:0.4; margin-top:8%;" src="/img/Inicio.png"/>
            </div>
        </div>
        
    </div>

</asp:Content>
