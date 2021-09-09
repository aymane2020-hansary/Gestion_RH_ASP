<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestion_RH.Login" %>


<!DOCTYPE html>

 <meta name="viewport" content="width=device-width, initial-scale-1" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS%20File/Gestion_RH.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="video-bg">
      <video playsinline autoplay muted loop >
      <source src="Media/Videos/video.mp4" type="video/webm">.
 
</video>
  </div>
     <div class="overlay"></div>
       <div class="container">
          <div class="row">
             <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                   <div class="card-body">
                      <div class="text-center">
                         <span class="login100-form-logo">
                           <img src="Media/Images/images.png" />
					     </span>
                         <h3 style="color:#1296db">Login</h3>
                       </div>
                       <br />                       
                       <form class="form-signin">
                         <div class="form-label-group">
                            <asp:TextBox ID="txt_userName" runat="server" type="text" class="form-control" placeholder="Nom Utilisateur"></asp:TextBox>
                            <label for="txt_userName">Nom Utilisateur</label>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_userName" ErrorMessage="* Veuillez renseigner ce champ" ForeColor="Red" style="padding: 0 0 0px 15px;"/>
                         </div>

                         <div class="form-label-group">
                            <asp:TextBox ID="txt_passWord" runat="server" type='password' class="form-control" placeholder="Mote De Passe" Style="margin-top: -10px"></asp:TextBox>
                            <label for="txt_passWord">Mote De Passe</label>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_passWord" ErrorMessage="* Veuillez renseigner ce champ" ForeColor="Red" style="padding: 0 0 0px 15px;"/>
                         </div>

                         <asp:Label runat="server" ID="Label1" Text=""></asp:Label>   <!-- MEASSAHGE EREUR MDP OU USER NAME -->

                         <div class="text-center">
                            <asp:Button ID="btn_se_Connecter" runat="server" class="btn btn-primary btn-user btn-block" position="center" Text="Se Connecter"  Style="border-radius:20px;  padding: 8px 40px; margin-bottom: 12px;" OnClick="btn_se_Connecter_Click" />
                         </div>  

                           <div class="text-center" style=" margin-bottom: -20px; visibility: hidden;">
                            <asp:Label runat="server" ID="lbl_msg" Text="Cette compte n'exist pas." Style="color:red;"></asp:Label>   <!-- MEASSAHGE EREUR MDP OU USER NAME -->
                         </div>

                         <hr class="my-4">
                         <div class="form-label-group">
                            <a href="mdpOublie.aspx" class="ForgetPwd"><p style="text-align:center; margin-bottom : -20px">Mot de passe oublié ?</a>
                         </div>
                      </form>
                  </div>            
               </div>
            </div>
         </div>
      </div>
    </form>
    <footer>
        <p class="copyright">© POWERED BY A.HANSSARY - H.KARRACH </p>
    </footer>
</body>

</html>