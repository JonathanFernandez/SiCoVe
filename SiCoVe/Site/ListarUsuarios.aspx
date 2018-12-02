<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="SiCoVe.ListarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
   <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Lista de usuarios</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Usuarios Conductores
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <asp:Label ID="LblDocumento" runat="server" Text="Label">DNI</asp:Label>
                                    <asp:TextBox class="form-control" ID="TxtDocumento" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:Label ID="LblApellido" runat="server" Text="Label">Apellido</asp:Label>
                                    <asp:TextBox class="form-control" ID="TxtApellido" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:Label ID="LblNombre" runat="server" Text="Label">Nombre</asp:Label>
                                    <asp:TextBox class="form-control" ID="TxtNombre" runat="server"></asp:TextBox>
                                    &nbsp;
                                </div>
                                <br />
                              <div class="col-sm-2">
                                <asp:Button class="btn btn-outline btn-primary " ID="BtnBuscar" runat="server" Text="Buscar" />
                              </div>
                            </div>
                            <div class="form-group">
                                <asp:GridView ID="GvUsuarios" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True"  >
                                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                            <asp:BoundField HeaderText="DNI" DataField="DNI"/>
                                            <asp:BoundField HeaderText="Apellido"  DataField="APELLIDO" />
                                            <asp:BoundField HeaderText="Nombres"  DataField="NOMBRE" />
                                            <asp:CommandField HeaderText="Eliminar Solicitud" ShowDeleteButton="True"></asp:CommandField>
                                            <asp:HyperLinkField HeaderText="Ver Datos" NavigateUrl="~/Site/ActualizarDatosUsuario.aspx" Text="Ver" />
                                        </Columns>
                                  </asp:GridView>
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