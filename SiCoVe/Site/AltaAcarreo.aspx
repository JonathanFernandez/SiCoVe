<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaAcarreo.aspx.cs" Inherits="SiCoVe.Site.AltaAcarreo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
          <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Alta Acarreo</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

         <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Completar los siguientes datos
                        </div>
                          <div class="panel-body">
                            <div class="row">
                                    <div class="col-lg-6">

                                        <div class="form-group">
                                                <label>Detalle de infracción</label>
                                                 <asp:TextBox TextMode="MultiLine" ID="txtDetalleInfraccion" runat="server" class="form-control"></asp:TextBox>
                                            
                                            </div>
                                        <div class="form-group">
                                                <label>Patente</label>
                                                 <asp:TextBox  ID="txtPatente" runat="server" class="form-control" required="required"></asp:TextBox>
                                    
                                            </div>

                                         <div class="form-group">
                                                <label>Geolocalización</label>
                                                <input class="form-control">
                                        
                                            </div>
                                           <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                         
                                      <div class="form-group">
                                                <label>Playa de Estacionamiento</label>
                                               <asp:DropDownList ID="ddlPlaya" runat="server" class="form-control"></asp:DropDownList>
                                    
                                            </div>
                                      
                                   
                                        <asp:Button ID="btnGuardarAcarreo" runat="server" class="btn btn-success" Text="Guardar Acarreo" OnClick="btnGuardarAcarreo_Click" />
                                        <%--<button type="button" class="btn btn-danger">Cancelar</button>--%>

                                    </div>
                            </div>

                        </div>

                  </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
