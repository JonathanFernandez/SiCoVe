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
                                            <asp:textbox id="txtObservaciones" runat="server" class="form-control" height="85" Wrap="true" TextMode="MultiLine"></asp:textbox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" ForeColor="red" ControlToValidate="txtObservaciones" runat="server" ErrorMessage="* Debe ingresar las observaciones"></asp:RequiredFieldValidator>--%> 
                                        </div>
                                        <div class="form-group">
                                            <label>Cargar foto DNI</label>
                                            <asp:FileUpload ID="FileUploadDNI" runat="server" />
                                        </div>

                                        <div class="form-group">
                                            <label>Cargar foto Licencia</label>
                                            <asp:FileUpload ID="FileUploadLIC" runat="server" />
                                        </div>

                                        <div class="form-group">
                                            <label>Cargar Foto Cedula</label>
                                            <asp:FileUpload ID="FileUploadCedula" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Cargar Foto Seguro</label>
                                            <asp:FileUpload ID="FileUploadSeguro" runat="server" />
                                        </div>

                                <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Enviar Modificación" OnClick="btnRegistrarACNC_Click" />

                                    <br />
                              <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnRegistrarACNC" runat="server" class="btn btn-default" Text="Enviar Modificación" OnClick="btnRegistrarACNC_Click" />
                                    <ajaxToolkit:ModalPopupExtender ID="btnRegistrarACNC_ModalPopupExtender" runat="server" BehaviorID="btnRegistrarACNC_ModalPopupExtender" TargetControlID="btnRegistrarACNC" PopupControlID="panelModal" BackgroundCssClass="modalBackground">
                                    </ajaxToolkit:ModalPopupExtender>
                                    <br />
                                        <asp:Panel ID="PanelModal" runat="server" Style="display:none; background:white; width:auto; height:auto; margin-left:auto;">
                                        <div class="modal-header">
                                        <button class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Modificacion de Usuario</h4>
                                        </div>
                                        <div class="modal-body">
                                            Se envió la solicitud de modificación
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-outline btn-primary" data-dismiss="modal" aria-hidden="true" style="margin-left: 166px;">Cerrar</button>
                                        </div>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel> --%>
                                    </div>
                         </div>
                       </div>
                     </div>                     
                   </div>

</asp:Content>