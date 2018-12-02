<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RealizarDenuncia.aspx.cs" Inherits="SiCoVe.Site.RealizarDenuncia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">


    <script>
        //$( document ).ready(function() { $('#myModal').modal('show');});

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

                                <%-- <div class="form-group">   
                                                <label>Geolocalización</label>
                                                <input class="form-control">
                                        
                                        </div>--%>
                                <div class="form-group">
                                    <label>Localidad</label>
                                    <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddlLocalidad" runat="server" ErrorMessage="Debe seleccionar Localidad" ControlToValidate="ddlLocalidad" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Detalle denuncia</label>
                                    <asp:TextBox TextMode="MultiLine" ID="txtDetalleDenuncia" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvdenuncia" runat="server" ErrorMessage="Debe Ingresar Detalle" ControlToValidate="txtDetalleDenuncia" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Adjunte una foto</label>
                                    <asp:Image ID="imgFoto" runat="server" Style="width: 100%; height: 300px;" />
                                </div>
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUploadFoto" runat="server" onchange="showimagepreview(this)" CssClass="btn btn-primary" />
                                    <asp:RequiredFieldValidator ID="rfvFileUploadFoto" runat="server" ErrorMessage="Debe Ingresar una Imagen" ControlToValidate="FileUploadFoto" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Fecha ocurrencia </label>
                                    <asp:TextBox type="number" ID="txtFecha" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFechavencimiento" runat="server" ErrorMessage="Debe Ingresar Fecha de ocurrencia" ControlToValidate="txtFecha" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Patente</label>
                                    <asp:TextBox ID="txtPatente" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar Fecha de vencimiento" ControlToValidate="txtFecha" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">


                                        <div class="form-group">
                                            <asp:Button ID="btnGenerarDenuncia" runat="server" Text="Generar Denuncia" OnClick="btnGenerarDenuncia_Click" CssClass="btn btn-primary" />


                                        </div>


                                    </div>
                                </div>


                            </div>
                        </div>

                    </div>
                    <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
    <div class="panel-body">
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Mensaje</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label runat="server" ID="lblMensaje" Text=""></asp:Label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <%--    <button type="button" class="btn btn-primary">Save changes</button>--%>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
    </div>

</asp:Content>
