<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HistorialControles.aspx.cs" Inherits="SiCoVe.Site.HistorialControles" %>
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
                    <h1 class="page-header">Visualización controles</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

      
                        
                            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Historial de controles
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            
                                                                          <div class="form-group">
                        <div class="col-sm-2">

                            <asp:Label ID="LblLegajo" runat="server" Text="Label">Legajo</asp:Label>
                            <asp:TextBox class="form-control" ID="txtLegajo" runat="server"></asp:TextBox>
                            </div>
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
                        <asp:Button class="btn btn-outline btn-primary " ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" Text="Buscar" />
                      </div>
                   </div>

                            <asp:GridView ID="GvHistorialControles" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="ID Agente"  DataField="AGENTE_TRANSITO_ID"/> 
                                <asp:BoundField HeaderText="Provincia"  DataField="PROVINCIA"/>
                                <asp:BoundField HeaderText="Fecha" DataField="FECHA_HORA" DataFormatString = "{0: dd-MM-yyyy}"/>     
                                <asp:BoundField HeaderText="Provincia"  DataField="PROVINCIA"/>
                                <asp:BoundField HeaderText="Localidad" DataField="LOCALIDAD" />
                                <asp:BoundField HeaderText="Locacion" DataField="LOCACION" />
                                <asp:BoundField HeaderText="Observaciones" DataField="OBSERVACIONES" />                 
                                <asp:BoundField HeaderText="Apellido (Conductor)" DataField="APELLIDO" /> 
                                <asp:BoundField HeaderText="Nombre (Conductor)" DataField="NOMBRE" />  
                                <asp:BoundField HeaderText="Vehiculo" DataField="VEHICULO" />                 
                                <asp:BoundField HeaderText="Dominio" DataField="DOMINIO" />                                                 
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
