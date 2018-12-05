<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BuscarVehiculo.aspx.cs" Inherits="SiCoVe.Site.BuscarVehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function showimagepreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    document.getElementById('PaginaCentral_ContentPlaceHolder_imgFoto').src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Buscar Vehículo</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        OCR - Patentes
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Selección de Patente</label>
                                    <asp:Image ID="imgFoto" runat="server" Style="width: 100%; height: 300px;" />
                                </div>
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUploadFoto" runat="server" onchange="showimagepreview(this)" CssClass="btn btn-primary" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnTraerPatente" runat="server" Text="Verificar Patente" OnClick="btnTraerPatente_Click" CssClass="btn btn-success" />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblPatente3" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:Button ID="btnGenerarInfraccion" runat="server" Text="Generar Acarreo" Style="display: block; margin: auto;" OnClick="btnGenerarInfraccion_Click" CssClass="btn btn-primary" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
