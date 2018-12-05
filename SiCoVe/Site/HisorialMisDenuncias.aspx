<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HisorialMisDenuncias.aspx.cs" Inherits="SiCoVe.Site.HisorialMisDenuncias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Hide {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Listado de mis denuncias</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Historial Denuncias
                    </div>

                    <div class="panel-body">
                        <asp:GridView ID="GvHistorialDenuncias" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="Id" DataField="ID" ItemStyle-CssClass="Hide" HeaderStyle-CssClass="Hide" />
                                <asp:BoundField HeaderText="Usuario" DataField="USUARIO" ItemStyle-CssClass="Hide" HeaderStyle-CssClass="Hide" />
                                <asp:BoundField HeaderText="Nombre y Apellido" DataField="NOMBRE" ItemStyle-CssClass="Hide" HeaderStyle-CssClass="Hide"/>
                                <asp:BoundField HeaderText="DNI" DataField="DNI" ItemStyle-CssClass="Hide" HeaderStyle-CssClass="Hide"/>
                                <asp:BoundField HeaderText="Estado" DataField="ESTADO" />
                                <asp:BoundField HeaderText="Fecha" DataField="FECHA_HORA" DataFormatString="{0: dd-MM-yyyy}" />
                                <asp:BoundField HeaderText="Localidad" DataField="LOCALIDAD" />
                                <asp:BoundField HeaderText="dominio" DataField="DOMINIO" />
                                <asp:BoundField HeaderText="Infracción" DataField="INFRACCION" ItemStyle-CssClass="Hide" HeaderStyle-CssClass="Hide"/>
                                <asp:BoundField HeaderText="Observaciones" DataField="OBSERVACIONES" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
