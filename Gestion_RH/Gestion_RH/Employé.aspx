<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Emp.Master" AutoEventWireup="true" CodeBehind="Employé.aspx.cs" Inherits="Gestion_RH.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS%20File/Grid.css" rel="stylesheet" />
    <link href="../GridViewCSS/grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script>
        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
    <div>
       <nav class="navbar justify-content-between" style="margin-top: -30px; box-shadow: none; padding: 0 0 0 10px; ">
          <a class="navbar-brand" style="color:black; font-weight: 400">Liste Employés</a>
      
          <p style="padding-top: 10px;"><span class="fa fa-home mr-1"></span><span style="color: black; font-weight: 300">Dashboard</span> > <span style="color: black; font-weight: 300">Employés</span> > Liste Employés</p>
        </nav>

        <div style="background-color: #ffffff">

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-info" onclick="myFunction()" style="font-size: 15px; border: none; margin-bottom: -15px; margin-left: 8px; padding: 10px;">Ajouter || Modifier</button>
            
            <div id="myDIV" style="display: none;">
                <div class="input-group" style="margin-left: 30%">
                    <div class="form-outline">
                       <asp:TextBox ID="txt_recherche_2" runat="server" type="text" class="form-control" placeholder="Rechercher" style="border: lightgray solid 0.5px; width:auto; border-radius:8px; padding-top: 0;padding-bottom: 0; margin-right: 10px;"></asp:TextBox>
                    </div>
                        <asp:Button ID="btn_recherche_2" runat="server" Text="Rechercher" class="btn btn-secondary" OnClick="btn_recherche_2_Click1" style="height: 15%;"/>
                </div>
                  
                <div class="modal-body" style="margin: auto;height:430px;overflow:auto; background-color: whitesmoke">
                    <form id="login" class="abc">
                          <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Matricule<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_Matricule" runat="server" type="text" class="form-control" placeholder="Matricule" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Date Embauche<span style="color: red;">*</span></label>
                                 <asp:TextBox ID="txt_Date_Embauche" runat="server" class="form-control" type="date" value="2021-03-19" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                            <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Nom<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_Nom" runat="server" type="text" class="form-control" placeholder="Nom" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Salaire<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_Salaire" runat="server" type="text" class="form-control" placeholder="Salaire" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                            <label style="padding-left: 4px; margin-bottom: 2px;">Prénom<span style="color: red;">*</span></label>
                            <asp:TextBox ID="txt_Prénom" runat="server" type="text" class="form-control" placeholder="Prénom" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                              <label style="padding-left: 4px; margin-bottom: 2px;">Poste Travaille<span style="color: red;">*</span></label>
                              <asp:TextBox ID="txt_Poste_Travaille" runat="server" type="text" class="form-control" placeholder="Poste Travaille" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Age<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_age" runat="server" type="text" class="form-control" placeholder="Age" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                               <label style="padding-left: 4px; margin-bottom: 2px;">Carte Identité<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Carte_Identité" runat="server" type="text" class="form-control" placeholder="Carte Identité" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                         <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Nationalité<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Nationalité" runat="server" type="text" class="form-control" placeholder="Nationalité" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Compte Bancaire<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Compte_Bancaire" runat="server" type="text" class="form-control" placeholder="Compte Bancaire" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Phone<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Phone" runat="server" type="text" class="form-control" placeholder="Phone" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                            </div>
                          </div>
                        
                        <div class="row">
                            <div class="col">
                               <label style="padding-left: 4px; margin-bottom: 2px;">Adresse<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_adresse" runat="server" type="text" class="form-control" placeholder="Adresse" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Date Naissance<span style="color: red;">*</span></label>
                                 <asp:TextBox ID="txt_Date_Naissance" runat="server" class="form-control" type="date" value="2021-03-19" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                            <div class="col">
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Sexe<span style="color: red;">*</span></label>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="custom-select" style="width:100%;border-radius:10px; padding-top: 0;padding-bottom: 0;">

                                </asp:DropDownList>
                            </div>
                            <div class="col">
                            </div>
                          </div>

                    </form>
                </div>
                
                  <div class="modal-footer">
                      <asp:Button ID="btn_modifie" runat="server" class="btn btn-danger" Text="Modifier" style="font-size: 10px; padding: 10px;" onclick="btn_modifie_Click"/>
                  
                      <asp:Button ID="btn_ajtr" runat="server" class="btn btn-success" Text="Ajouter" style="font-size: 10px; padding: 10px;" onclick="btn_ajtr_Click"/>
                  </div>
                </div>

            <hr class="my-4">

            <div class="input-group"  style="justify-content: center; margin-top: -10px">
                <asp:Button ID="btn_supprimer" runat="server" Text="Supprimer" class="btn btn-danger" style="height: 15%;" OnClick="btn_supprimer_Click"/>
              <div class="form-outline">
                 <asp:TextBox ID="txt_recherch" runat="server" type="text" class="form-control" placeholder="Rechercher" style="border: lightgray solid 0.5px; width:auto; border-radius:8px; padding-top: 0;padding-bottom: 0; margin-right: 10px;"></asp:TextBox>
              </div>

                <asp:Button ID="btn_recherche" runat="server" Text="Rechercher" class="btn btn-secondary" style="height: 15%;" OnClick="btn_recherche_Click" />
                <asp:Button ID="btn_afficher" runat="server" Text="Afficher Tout" class="btn btn-primary" style="height: 15%;" OnClick="btn_afficher_Click" />
            </div>

            <div class="row">
                 <div class="col-md-12">
                     <div class="table-responsive" style="margin: auto;height:500px;overflow:auto">
                          <asp:GridView ID="GridView2" runat="server" style="overflow-x:auto; max-width: 100%" AutoGenerateColumns="False" DataKeyNames="matricule" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-condensed" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1">
                          <Columns>
                              <asp:BoundField DataField="matricule" HeaderText="Matricule" ReadOnly="True" SortExpression="matricule" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="nom_employé" HeaderText="Nom" SortExpression="nom_employé" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="prénom_employé" HeaderText="Prénom" SortExpression="prénom_employé" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="date_embauche" HeaderText="Date Embauche" SortExpression="date_embauche" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="salaire" HeaderText="Salaire" SortExpression="salaire" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="adresse" HeaderText="Adresse" SortExpression="adresse" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="poste_travaille" HeaderText="P.Travaille" SortExpression="poste_travaille" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="nationalité" HeaderText="Nationalité" SortExpression="nationalité" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="sexe" HeaderText="Sexe" SortExpression="sexe" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="carte_identité" HeaderText="C.Identité" SortExpression="carte_identité" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="date_naissance" HeaderText="D.Naissance" SortExpression="date_naissance" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                              <asp:BoundField DataField="compte_bancaire" HeaderText="Compte Bancaire" SortExpression="compte_bancaire" >
                                  <HeaderStyle CssClass="HeaderGridStyle" />
                              </asp:BoundField>
                          </Columns>
                          
                              <HeaderStyle CssClass="HeaderGridStyle" />
                          
                              <RowStyle CssClass="roww" />
                          
                          </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gestion_RHConnectionString3 %>" SelectCommand="SELECT * FROM [employé]"></asp:SqlDataSource>
                  </div>
            </div>
         </div>
      </div>
</div>
<%--        <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
</asp:Content>