<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mdpOublie2.aspx.cs" Inherits="Login.mdpOublie2" %>

<!DOCTYPE html>
 <meta name="viewport" content="width=device-width, initial-scale-1" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="CSS%20File/mdpOublie.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
     <div> 
      <div class="container">
        <div class="row">
          <div class="col-sm-9 col-md-7 col-lg-5 mx-auto" >
             <div class="card card-signin my-5">
                <div class="card-body">
                    <div class="text-center">
                       <h3 style="color:#1296db ;font-family: 'Roboto', sans-serif;">Ceci Votre</h3>
                       <br />
                     </div>
                      <form class="form-signin">
                          <label for="txt_passWord" style="color: #1296db">Nom Utilisateur</label>
                         <div class="form-label-group" style="margin-bottom: 15px;">
                            <asp:Label ID="txt_mail" runat="server" Text="Label" class="form-control">..................</asp:Label>
                         </div>
                          
                          <label for="txt_passWord" style="color: #1296db">Mote De Passe</label>
                          <div class="form-label-group" style="margin-bottom: 40px">
                              <asp:Label ID="txt_password" runat="server" Text="Label" class="form-control">..................</asp:Label>
                         </div>

                         <div class="text-center">
                            <asp:Button ID="btn_Suivant" runat="server" class="btn btn-lg btn-primary" Text="Suivant" Style="border-radius:20px; padding: 8px 40px; margin-right: 5px; margin-bottom:10px;" OnClick="btn_Suivant_Click" />
                            <a type="button" href="login.aspx" class="btn btn-lg btn-secondary" Style="border-radius:20px; padding: 8px 48px; margin-bottom:10px;">Anuller</a>
                         </div> 

                          <hr style="margin-top: 25px" />
                                                   
                         <div class="text-center" style=" margin-bottom: -10px;">
                             <asp:Label runat="server" ID="Lbl_Success" Style="color:green;"></asp:Label>   <!-- MEASSAHGE EREUR MDP OU USER NAME -->
                         </div>

                      </form>      
                    </div>
                 </div>
              </div>
            </div>
         </div>
      </div>
    </form>
</body>
</html>
