<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SolicitarModificacionDatos.aspx.cs" Inherits="SiCoVe.SolicitarModificacionDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
     <style>
        .modalBackground
        {
            background-color: black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Solicitud de modificación de datos</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Solicitar actualización de datos
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Observaciones</label>
                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="100" Wrap="true" TextMode="MultiLine"></asp:textbox>
                        </div>
                        <div class="form-group">
                            <label>Imagen evidencia de los cambios solicitados</label>
                            <asp:FileUpload ID="FileUploadDNI" runat="server" CssClass="btn btn-primary"/>
                        </div>
                        <div class="form-group">
                            <label>Imagen evidencia de los cambios solicitados</label>
                            <asp:FileUpload ID="FileUploadLIC" runat="server" CssClass="btn btn-primary"/>
                        </div>

                        <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" style="display:block; margin:auto;" Text="Enviar Modificación" OnClick="btnRegistrarACNC_Click" />

                        <div class="panel-body">
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Solicitud de Modificación</h4>
                                        </div>
                                        <div class="modal-body">
                                            <asp:Label runat="server" ID="lblMensaje" Text=""></asp:Label>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>                     
    </div>

</asp:Content>