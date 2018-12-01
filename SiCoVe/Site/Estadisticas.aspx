<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="SiCoVe.Site.Estadisticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%--<script type="text/javascript" src="../Content/data/flot-data.js"></script>--%>

    <script>
        function llenarFlotPie(datos) {

            alert("entro " + datos[0].label + " " + datos[0].data);

            var data = [{
                label: "Series 0",
                data: 110
            }, {
                label: "Series 1",
                data: 1
            }, {
                label: "Series 2",
                data: 1
            }, {
                label: "Series 3",
                data: 1
            }];

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
                    defaultTheme: false
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
            <%--<div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Line Chart Example
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-line-chart"></div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Pie Chart Example
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-pie-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Multiple Axes Line Chart Example
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-line-chart-multi"></div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <%--<div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Moving Line Chart Example
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-line-chart-moving"></div>
                        </div>
                    </div>
                </div>                
            </div>--%>
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Bar Chart Example
                    </div>
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-bar-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Flot Charts Usage
                    </div>
                    <div class="panel-body">
                        <p>Flot is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks, and interactive features. In SB Admin, we are using the most recent version of Flot along with a few plugins to enhance the user experience. The Flot plugins being used are the tooltip plugin for hoverable tooltips, and the resize plugin for fully responsive charts. The documentation for Flot Charts is available on their website, <a target="_blank" href="http://www.flotcharts.org/">http://www.flotcharts.org/</a>.</p>
                        <a target="_blank" class="btn btn-default btn-lg btn-block" href="http://www.flotcharts.org/">View Flot Charts Documentation</a>
                    </div>
                </div>
            </div>--%>
        </div>        
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>