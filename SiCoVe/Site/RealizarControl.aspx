<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RealizarControl.aspx.cs" Inherits="SiCoVe.Site.RealizarControl" %>
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
                     document.getElementById('imgFoto').src = e.target.result;
                 }  
                 reader.readAsDataURL(input.files[0]);  
             }  
        }  

    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PaginaCentral_ContentPlaceHolder" runat="server">
     <div id="page-wrapper">
         
  
       
             
               <asp:Image ID="imgFoto" runat="server" Style="width: 300px; height: 500px"  />
            <br />      
                    <asp:FileUpload ID="FileUploadFoto" runat="server" onchange="showimagepreview(this)" />
            <br />
            <asp:Button ID="btnTraerPatente" runat="server" Text="LeerPatente" OnClick="btnTraerPatente_Click" />

             <br />
            <asp:Label ID="lblPatente" runat="server" Text=""></asp:Label>

            
             <br />
            <asp:Label ID="lblPatente2" runat="server" Text=""></asp:Label>
              <br />
            <asp:Label ID="lblPatente3" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
