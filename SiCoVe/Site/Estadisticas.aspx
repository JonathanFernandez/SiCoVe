<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="SiCoVe.Site.Estadisticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%--<script type="text/javascript" src="../Content/vendor/jquery/jquery.js" ></script>--%>
    <%--<script type="text/javascript" src="../Scripts/jquery-3.3.1.min.js" ></script>--%>
    <%--<script type="text/javascript" src="../Content/vendor/jquery/jquery.min.js" ></script>--%>

    <script type="text/javascript" src="../Content/vendor/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="../Content/vendor/jquery/jquery.min.js" ></script>
    <script type="text/javascript" src="../Scripts/jquery-ui.js" ></script>
    <script type="text/javascript" src="../Content/vendor/metisMenu/metisMenu.min.js" ></script>
    <script type="text/javascript" src="../Content/dist/js/sb-admin-2.js" ></script>
    <script type="text/javascript" src="../Content/vendor/raphael/raphael.min.js" ></script>
    <script type="text/javascript" src="../Content/vendor/morrisjs/morris.js" ></script>
    <script type="text/javascript" src="../Scripts/master.js" ></script>
    
    <script type="text/javascript" src="../Content/vendor/flot/excanvas.js" ></script>
    <script type="text/javascript" src="../Content/vendor/flot/jquery.flot.js" ></script>
    <script type="text/javascript" src="../Content/vendor/flot/jquery.flot.pie.js" ></script>
    <script type="text/javascript" src="../Content/vendor/flot/jquery.flot.resize.js" ></script>
    <script type="text/javascript" src="../Content/vendor/flot/jquery.flot.time.js" ></script>
    <script type="text/javascript" src="../Content/vendor/flot-tooltip/jquery.flot.tooltip.min.js" ></script>
    <script type="text/javascript" src="../Content/data/flot-data.js" ></script>
    <script>
        function llenarFlotPie(datos) {
            var plotObj = $.plot($("#flot-pie-chart"), datos, {
                series: {
                    pie: {
                        show: true
                    }
                },
                grid: {
                    hoverable: true
                },
                tooltip: true,
                tooltipOpts: {
                    content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
                    shifts: {
                        x: 20,
                        y: 0
                    },
                    defaultTheme: true
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Estadisticas</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label id="lblSeleccione" runat="server">Selección de opción</label>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Selecciones reporte</label>
                            <asp:DropDownList ID="ddlGraficos" runat="server" class="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Fecha desde</label>
                            <asp:TextBox type="number" ID="txtFecDesde" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Fecha hasta</label>
                            <asp:TextBox type="number" ID="txtFecHasta" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnGraficar" runat="server" style="display:block; margin:auto;" class="btn btn-default" Text="Aceptar" OnClick="btnGraficar_Click" />
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label id="lblflot" runat="server"></label>
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-pie-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label id="lblbar" runat="server"></label>
                    </div>
                    <div class="panel-body" style="height:480px;">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="morris-bar-chartAnual"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>