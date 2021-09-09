<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modifier_login.aspx.cs" Inherits="Gestion_RH.Modifier_login" %>

<!DOCTYPE html>

    <meta name="viewport" content="width=device-width, initial-scale-1" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="CSS%20File/Gestion_RH.css" rel="stylesheet" />

    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modifier Compte</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
          <div class="row">
             <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                   <div class="card-body">
                      <h1 class="card-title text-center" style="font-size: 40px; color:#64c1e3; font-weight: 500">Changer Compte</h1>
                      <form class="form-signin">
                         <div class="form-label-group">
                            <asp:TextBox ID="txt_new_userName" runat="server" type="text" class="form-control" placeholder="Nouveau Nom utilisateur"></asp:TextBox>
                            <label for="txt_new_userName">Nouveau Nom utilisateur</label>
                         </div>
                            
                         <div class="form-label-group">
                            <asp:TextBox ID="txt_new_passWord" runat="server" type="text" class="form-control" placeholder="Nouveau Mote de passe"></asp:TextBox>
                            <label for="txt_new_passWord">Nouveau Mote de passe</label>
                         </div>
                            
                          <div class="form-label-group">
                            <asp:TextBox ID="txt_Code_Récuperation_Actuel" runat="server" type="text" class="form-control" placeholder="Nouveau Code récuperation actuel"></asp:TextBox>
                            <label for="txt_Code_Récuperation_Actuel">Nouveau Code récuperation</label>
                         </div>

                          <div class="form-label-group">
                            <asp:TextBox ID="txt_msg" runat="server" type="text" class="form-control" BackColor="Transparent" ReadOnly="true" BorderStyle="None"  style="text-align:center; padding: 0; color:red; outline:0px !important;-webkit-appearance:none;box-shadow: none !important;"></asp:TextBox>
                         </div>
                            
                         <div class="text-center">
                            <asp:Button ID="btn_Modifier" runat="server" class="btn btn-lg btn-info" Text="Modifier" Style="border-radius:20px; padding:8px 45px; margin-right: 5px; margin-bottom:10px" />
                            <asp:Button ID="btn_anuller" runat="server" class="btn btn-lg btn-danger" Text="Anuller" Style="border-radius:20px; padding:8px 48px; margin-bottom:10px;" />
                         </div>  

                         <hr class="my-4">
                         <a href="Login_Page.aspx" style="color:darkgrey;" class="ForgetPwd"><p style="text-align:center; padding-top:5px">Retour A Page Login</a>
                      </form>
                  </div>            
               </div>
            </div>
         </div>
      </div>
  </form>
</body>
</html>