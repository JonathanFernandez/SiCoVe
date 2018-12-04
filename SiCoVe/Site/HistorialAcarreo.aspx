<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HistorialAcarreo.aspx.cs" Inherits="SiCoVe.Site.HistorialAcarreo" %>
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
                    <h1 class="page-header">Historial de Acarreos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Selección de localidad
                    </div>
                    <div class="panel-body">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlLocalidad_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Historial Acarreos
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="form-group">
                            <asp:GridView runat="server" ID="GvHistorialAcarreo" CssClass="table table-bordered table-hover table-striped" AutoGenerateColumns="False">
                                <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                                <Columns>  
                                     <asp:BoundField HeaderText="Remolcador"  DataField="REMOLCADOR"/> 
                                    <asp:BoundField HeaderText="Playa"  DataField="PLAYA"/>                                 
                                    <asp:BoundField HeaderText="Fecha" DataField="FECHA_HORA" DataFormatString = "{0: dd-MM-yyyy}"/>     
                                    <asp:BoundField HeaderText="ubicacion"  DataField="UBICACION"/>
                                    <asp:BoundField HeaderText="Detalle" DataField="DETALLE_INFRACCION" />
                                    <asp:BoundField HeaderText="dominio" DataField="DOMINIO" />                                
                                    <asp:BoundField HeaderText="Localidad" DataField="LOCALIDAD" />                                                                                                
                                </Columns>
                             </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
