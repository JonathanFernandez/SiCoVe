<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HistorialDenuncias.aspx.cs" Inherits="SiCoVe.Site.HistorialDenuncias" %>
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
                    <h1 class="page-header">Visualización</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

      
                        
                            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Historial Denuncias
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <asp:GridView ID="GvHistorialDenuncias" CssClass="table table-bordered table-hover table-striped" OnRowCommand="GvHistorialDenuncias_RowCommand" runat="server" AutoGenerateColumns="False">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>                     
                                <asp:BoundField HeaderText="Id"  DataField="ID"/>  
                                <asp:BoundField HeaderText="Usuario"  DataField="USUARIO"/> 
                                <asp:BoundField HeaderText="Nombre y Apellido"  DataField="NOMBRE"/>
                                <asp:BoundField HeaderText="DNI"  DataField="DNI"/> 
                                <asp:BoundField HeaderText="Estado"  DataField="ESTADO"/>
                                <asp:BoundField HeaderText="Fecha" DataField="FECHA_HORA" DataFormatString = "{0: dd-MM-yyyy}"/>     
                                <asp:BoundField HeaderText="Localidad" DataField="LOCALIDAD" />
                                <asp:BoundField HeaderText="dominio" DataField="DOMINIO" />                                
                                <asp:BoundField HeaderText="Infracción" DataField="INFRACCION" />
                                <asp:BoundField HeaderText="Observaciones"  DataField="OBSERVACIONES"/> 
                                <asp:ButtonField DataTextField="CONFIRMAR" ControlStyle-CssClass="btn btn-success" CommandName="Confirmar" />
                                <asp:ButtonField DataTextField="ANULAR" ControlStyle-CssClass="btn btn-danger" CommandName="Anular" />
                            </Columns>
                             </asp:GridView>
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

    </div>
    <!-- /#page-wrapper -->
</asp:Content>
