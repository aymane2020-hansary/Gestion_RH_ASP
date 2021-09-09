<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Emp.Master" AutoEventWireup="true" CodeBehind="Affectation_projet.aspx.cs" Inherits="Gestion_RH.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS%20File/Grid.css" rel="stylesheet" />
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
          <a class="navbar-brand" style="color:black; font-weight: 400">Affectation a Projet</a>
      
          <p style="padding-top: 10px;"><span class="fa fa-home mr-1"></span><span style="color: black; font-weight: 300">Dashboard</span> > <span style="color: black; font-weight: 300">Employés</span> > Affectation a Projet</p>
        </nav>

        <div style="background-color: #ffffff">

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-info" onclick="myFunction()" style="font-size: 15px; border: none; margin-bottom: 15px; margin-left: 8px; padding: 10px;">Ajouter</button>
            
            <div id="myDIV" style="display: none;">
                <div class="modal-body" style="margin: auto;height:440px;overflow:auto; background-color: whitesmoke">
                    <form id="login" class="abc">
                        
                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Matricule<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_matricule" runat="server" type="text" class="form-control" placeholder="Matricule" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                            <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Nom Employé<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_Nom_employé" runat="server" type="text" class="form-control" placeholder="Nom Employé" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                            <label style="padding-left: 4px; margin-bottom: 2px;">Prénom Employé<span style="color: red;">*</span></label>
                            <asp:TextBox ID="txt_prénom_employé" runat="server" type="text" class="form-control" placeholder="Prénom Employé" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                               <label style="padding-left: 4px; margin-bottom: 2px;">Poste Travaille<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_poste_travaille" runat="server" type="text" class="form-control" placeholder="Poste Travaille" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                         <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Référence<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_référence" runat="server" type="text" class="form-control" placeholder="Référence" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Nom Projet<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_nom_projet" runat="server" type="text" class="form-control" placeholder="Nom Projet" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Chéf Projet<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_chéf_projet" runat="server" type="text" class="form-control" placeholder="Chéf Projet" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                    </form>
                  </div>
                
                  <div class="modal-footer">
                      <%--<asp:Button ID="btn_modifie" runat="server" class="btn btn-danger" Text="Modifier" style="font-size: 10px; padding: 10px;" OnClick="btn_modifie_Click"/>--%>
                      <asp:Button ID="btn_ajtr" runat="server" class="btn btn-success" Text="Ajouter" style="font-size: 10px; padding: 10px;" OnClick="btn_ajtr_Click"/>
                  </div>
                </div>

            <hr class="my-4">

            <div class="input-group"  style="justify-content: center; margin-top: -10px">
                <asp:Button ID="btn_supprimer" runat="server" Text="Supprimer" class="btn btn-danger" style="height: 15%;" OnClick="btn_supprimer_Click"/>
              <div class="form-outline">
                 <asp:TextBox ID="txt_recherch" runat="server" type="text" class="form-control" placeholder="Rechercher" style="border: lightgray solid 0.5px; width:auto; border-radius:8px; padding-top: 0;padding-bottom: 0; margin-right: 10px;"></asp:TextBox>
              </div>

                <asp:Button ID="btn_recherche" runat="server" Text="Rechercher" class="btn btn-secondary" style="height: 15%;" onclick="btn_recherche_Click"/>
                <asp:Button ID="btn_afficher" runat="server" Text="Afficher Tout" class="btn btn-primary" style="height: 15%;" onclick="btn_afficher_Click"/>
            </div>
                
            <div class="row">
                 <div class="col-md-12">
                     <div class="table-responsive" style="margin: auto; height:500px;overflow:auto">
                         <asp:GridView ID="GridView3" runat="server" style="overflow-x:auto; max-width: 100%;" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataKeyNames="Id,matricule,référence" DataSourceID="SqlDataSource3">
                             <Columns>
                                 <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" InsertVisible="False" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="matricule" HeaderText="Matricule" SortExpression="matricule" ReadOnly="True" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="nom_employé" HeaderText="Nom Employé" SortExpression="nom_employé" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="prénom_employé" HeaderText="Prénom Employé" SortExpression="prénom_employé" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="poste_travaille" HeaderText="Poste Travaille" SortExpression="poste_travaille" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="référence" HeaderText="Référence" SortExpression="référence" ReadOnly="True" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="nom_projet" HeaderText="Nom Projet" SortExpression="nom_projet" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="nom_chéf_projet" HeaderText="Nom Chéf Projet" SortExpression="nom_chéf_projet" >
                                     <HeaderStyle CssClass="HeaderGridStyle" />
                                 </asp:BoundField>
                             </Columns>
                             <HeaderStyle CssClass="HeaderGridStyle" />
                          
                              <RowStyle CssClass="roww" />

                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Gestion_RHConnectionString5 %>" SelectCommand="SELECT * FROM [Liste_Affectation]"></asp:SqlDataSource>
                     </div>
            </div>
         </div>
      </div>
</div>
</asp:Content>
