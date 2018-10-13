<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testCamera.aspx.cs" Inherits="SiCoVe.testCamera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
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
    </form>
</body>
</html>
