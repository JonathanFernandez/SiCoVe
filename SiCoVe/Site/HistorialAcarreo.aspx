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
            <!-- /.row -->

      
                        
                            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Busqueda
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" >
                                              <div class="form-group">
                        <div class="col-sm-2">

                        
                            <asp:Label ID="LblLocalidad" runat="server" Text="Label">Localidad</asp:Label>
                            <asp:TextBox class="form-control" ID="txtLocalidad" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <asp:Label ID="LblDominio" runat="server" Text="Label">Dominio</asp:Label>
                            <asp:TextBox class="form-control" ID="txtDominio" runat="server"></asp:TextBox>
                         &nbsp;
                        </div>
                        <br />

                      <div class="col-sm-2">
                        <asp:Button class="btn btn-default" ID="btnBuscar" style="display:block; margin:auto;" OnClick="btnBuscar_Click" runat="server" Text="Buscar" />
                      </div>
                   </div>
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
