<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RealizarDenuncia.aspx.cs" Inherits="SiCoVe.Site.RealizarDenuncia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
         <script>
        function showimagepreview(input) {  
  
             if (input.files && input.files[0]) {  
                 var reader = new FileReader();  
                 reader.onload = function (e) {  
  
                     //document.getElementsByTagName("imgFoto")[0].setAttribute("src", e.target.result);  
                     document.getElementById('PaginaCentral_ContentPlaceHolder_imgFoto').src = e.target.result;
                 }  
                 reader.readAsDataURL(input.files[0]);  
             }  
        }  
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
          <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Realizar Denuncias</h1>
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
                                                <label>Geolocalización</label>
                                                <input class="form-control">
                                        
                                            </div>
                                        <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                                </div>

                                     
                                        <div class="form-group">
                                                <label>Detalle denuncia</label>
                                                 <asp:TextBox TextMode="MultiLine" ID="txtDetalleDenuncia" runat="server" class="form-control"></asp:TextBox>
                                            
                                            </div>
                                     <div class="form-group">
                                                <label>Adjunte una foto</label>
                                              <asp:Image ID="imgFoto" runat="server" style="width:100%; height:300px;"  />
                                               
                                        
                                            </div>
                                         <div class="form-group">
                                            <asp:FileUpload ID="FileUploadFoto" runat="server" onchange="showimagepreview(this)" CssClass="btn btn-primary" />
                                            
                                            </div>
                                          <div class="form-group">
                                            <label>Fecha de vencimiento</label>
                                            <asp:TextBox type="number" ID="txtFecha" runat="server" TextMode="Date" class="form-control" required="required"></asp:TextBox>
                                        </div>
                                         <div class="form-group">
                                                <label>Patente</label>
                                                 <asp:TextBox  ID="txtPatente" runat="server" class="form-control" required="required"></asp:TextBox>
                                    
                                            </div>
                                        <button type="button" class="btn btn-success">Guardar Denuncia</button>
                                        <button type="button" class="btn btn-danger">Cancelar</button>

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
