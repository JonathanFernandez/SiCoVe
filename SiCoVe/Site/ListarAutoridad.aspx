﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListarAutoridad.aspx.cs" Inherits="SiCoVe.ListarAutoridad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
            <div id="page-wrapper">
        <div class="panel panel-default">
            <div class="panel-heading">
               Remolques
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                  <div class="form-group">
                        <div class="col-sm-2">

                            <asp:Label ID="LblLegajo" runat="server" Text="Label">Legajo</asp:Label>
                            <asp:TextBox class="form-control" ID="TxtDocumento" runat="server"></asp:TextBox>
                            </div>
                        <div class="col-sm-2">
                            <asp:Label ID="LblApellido" runat="server" Text="Label">Apellido</asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <asp:Label ID="LblNombre" runat="server" Text="Label">Nombre</asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                         &nbsp;
                        </div>
                        <br />
                      <div class="col-sm-2">
                        <asp:Button class="btn btn-outline btn-primary " ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" Text="Buscar" />
                      </div>
                   </div>
                        <br />
                    <div class="form-group">
                         <asp:GridView ID="GvAutoridad" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="DNI" DataField="DNI" />
                                <asp:BoundField HeaderText="Apellido" DataField="APELLIDO" />
                                <asp:BoundField HeaderText="Nombres"  DataField="NOMBRE"/>
                                <asp:BoundField HeaderText="Sexo"  DataField="SEXO"/>
                                <asp:BoundField HeaderText="Fecha de nacimiento" DataField="FECHA_NACIMIENTO"/>
                                <asp:BoundField HeaderText="Nacionalidad" DataField="NACIONALIDAD" />
                                <asp:BoundField HeaderText="Domicilio" DataField="DOMICILIO" />
                                <asp:BoundField HeaderText="id" DataField="ID"/>
                                <asp:BoundField HeaderText="Legajo" DataField="NRO_LEGAJO" />
                                
                            </Columns>

                        </asp:GridView>
                        </div>
                 </div>
        </div>         
        </div>   
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>

