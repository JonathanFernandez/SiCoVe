﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HistorialControles.aspx.cs" Inherits="SiCoVe.Site.HistorialControles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IncludeCssSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="includeJsSection" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Hide {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
    <div id="page-wrapper">
          <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Visualización controles</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Selección de localidad
                    </div>
                    <div class="panel-body">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlLocalidad_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Historial Controles
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="form-group">

                            <asp:GridView ID="GvHistorialControles" CssClass="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False">
                            <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="Fecha" DataField="FECHA_HORA" DataFormatString = "{0: dd-MM-yyyy}"/>     
                                <asp:BoundField HeaderText="Provincia"  DataField="PROVINCIA"/>
                                <asp:BoundField HeaderText="Localidad" DataField="LOCALIDAD" />
                                <asp:BoundField HeaderText="Locación" DataField="LOCACION" />
                                <asp:BoundField HeaderText="Observaciones" DataField="OBSERVACIONES" />                 
                                <asp:BoundField HeaderText="Apellido (Conductor)" DataField="APELLIDO" /> 
                                <asp:BoundField HeaderText="Nombre (Conductor)" DataField="NOMBRE" />  
                                <asp:BoundField HeaderText="Vehiculo" DataField="VEHICULO" />                 
                                <asp:BoundField HeaderText="Dominio" DataField="DOMINIO" />                                                 
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
