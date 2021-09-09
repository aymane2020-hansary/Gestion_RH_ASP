<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mdpOublie3.aspx.cs" Inherits="Gestion_RH.mdpOublie3" %>

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
         <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto" >
                    <div class="card card-signin my-5">
                        <div class="card-body">
                              <div class="text-center">
                                <h3 style="color:#1296db ;font-family: 'Roboto', sans-serif;">Modifier Votre Mot de Passe</h3>
                                <br />
                              </div>
                           <form class="form-signin">

                              <div class="form-label-group">
                                <asp:TextBox ID="txt_Nouveau_mot_pass" runat="server" type="text" class="form-control" placeholder="Nouveau mot de pass"></asp:TextBox>
                                <label for="txt_Nouveau_mot_pass">Nouveau mot de pass</label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_Nouveau_mot_pass" ErrorMessage="* Veuillez renseigner ce champ" ForeColor="Red" style="padding: 0 0 0px 15px;"/>
                             </div>
                           
                             <div class="form-label-group" style="margin-bottom: 10px">
                                <asp:TextBox ID="txt_confirmer_nouveau_mot_pass" runat="server" type="text" class="form-control" placeholder="Confirmer nouveau mot de pass" Style="margin-top: -20px"></asp:TextBox>
                                <label for="txt_confirmer_nouveau_mot_pass">Confirmer nouveau mot de pass</label>
                                 <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_confirmer_nouveau_mot_pass" ErrorMessage="* Veuillez renseigner ce champ" ForeColor="Red" style="padding: 0 0 0px 15px;"/>
                             </div>
                             
                             <div class="text-center"> 
                                <asp:Button ID="btn_Sauvegarder" runat="server" class="btn btn-lg btn-primary" Text="Sauvegarder" Style="border-radius:20px; padding: 8px 40px; margin-bottom:10px;" OnClick="btn_Sauvegarder_Click" />
                             </div> 
                           
                              <hr style="margin-top: 15px" />
                                                   
                             <div class="text-center" style=" margin-bottom: -10px;">
                                <asp:Label runat="server" ID="lbl_msg" Text="" Style="color:red;"></asp:Label>   <!-- MEASSAHGE EREUR MDP OU USER NAME -->
                             </div>

                          </form>
                     </div>
                 </div>
             </div>
          </div>
       </div>
    </form>
</body>
</html>
