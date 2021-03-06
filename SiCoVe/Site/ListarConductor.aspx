﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListarConductor.aspx.cs" Inherits="SiCoVe.ListarConductor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Modificar / Eliminar Usuario</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Listado de Conductores
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <asp:Label ID="LblLegajo" runat="server" Text="Label">DNI</asp:Label>
                                    <asp:TextBox class="form-control" type="number" ID="TxtDocumento" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="col-sm-2">
                                    <asp:Button class="btn btn-outline btn-primary " ID="Button1" OnClick="Button1_Click" runat="server" Text="Buscar" />
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <asp:GridView ID="GvConductor" DataKeyNames="id" CssClass="table table-bordered table-hover table-striped" OnRowDeleting="GvConductor_delete" OnRowEditing="GvConductor_edit" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                        <asp:BoundField HeaderText="DNI" DataField="DNI" />
                                        <asp:BoundField HeaderText="Apellido" DataField="APELLIDO" />
                                        <asp:BoundField HeaderText="Nombres" DataField="NOMBRE" />
                                        <asp:BoundField HeaderText="Sexo" DataField="SEXO" />
                                        <asp:BoundField HeaderText="Fecha de nacimiento" DataField="FECHA_NACIMIENTO" DataFormatString="{0: dd-MM-yyyy}" />
                                        <asp:BoundField HeaderText="Nacionalidad" DataField="NACIONALIDAD" />
                                        <asp:BoundField HeaderText="Domicilio" DataField="DOMICILIO" />
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

