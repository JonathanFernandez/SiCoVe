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

                         <div class="col-sm-2">
                            <asp:Label ID="LblDni" runat="server" Text="Label">DNI</asp:Label>
                            <asp:TextBox class="form-control" ID="txtDni" runat="server"></asp:TextBox>
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
