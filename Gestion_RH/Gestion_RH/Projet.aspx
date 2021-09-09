<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Emp.Master" AutoEventWireup="true" CodeBehind="Projet.aspx.cs" Inherits="Gestion_RH.WebForm3" %>
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
          <a class="navbar-brand" style="color:black; font-weight: 400">Liste Projets</a>
      
          <p style="padding-top: 10px;"><span class="fa fa-home mr-1"></span><span style="color: black; font-weight: 300">Dashboard</span> > <span style="color: black; font-weight: 300">Projet</span> > Liste Projets</p>
        </nav>

        <div style="background-color: #ffffff">

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-info" onclick="myFunction()" style="font-size: 15px; border: none; margin-bottom: -15px; margin-left: 8px; padding: 10px;">Ajouter || Modifier</button>

             <div id="myDIV" style="display: none;">
                <div class="input-group" style="margin-left: 30%">
                    <div class="form-outline">
                       <asp:TextBox ID="txt_recherche_2" runat="server" type="text" class="form-control" placeholder="Rechercher" style="border: lightgray solid 0.5px; width:auto; border-radius:8px; padding-top: 0;padding-bottom: 0; margin-right: 10px;"></asp:TextBox>
                    </div>
                        <asp:Button ID="btn_recherche_2" runat="server" Text="Rechercher" class="btn btn-secondary" style="height: 15%;" OnClick="btn_recherche_2_Click"/>
                </div>

                 <div class="modal-body" style="margin: auto;height:430px;overflow:auto; background-color: whitesmoke">
                    <form id="login" class="abc">

                          <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Référence<span style="color: red;">*</span></label>
                                <asp:TextBox ID="txt_Référence" runat="server" type="text" class="form-control" placeholder="Référence" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
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
                            <label style="padding-left: 4px; margin-bottom: 2px;">Description Projet<span style="color: red;">*</span></label>
                            <asp:TextBox ID="txt_description_projet" runat="server" type="text" class="form-control" placeholder="Description Projet" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Budget<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Budget" runat="server" type="text" class="form-control" placeholder="Budget" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                               <label style="padding-left: 4px; margin-bottom: 2px;">Matricule Chéf Projet<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_Mat_chéf_projet" runat="server" type="text" class="form-control" placeholder="Matricule Chéf Projet" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>
                        
                        <div class="row">
                            <div class="col">
                               <label style="padding-left: 4px; margin-bottom: 2px;">Nom Chéf Projet<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_nom_chéf_projet" runat="server" type="text" class="form-control" placeholder="Nom Chéf Projet" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Date Début<span style="color: red;">*</span></label>
                               <asp:TextBox ID="txt_date_début" runat="server" class="form-control" type="date" value="2021-03-19" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <label style="padding-left: 4px; margin-bottom: 2px;">Date Fin<span style="color: red;">*</span></label>
                                 <asp:TextBox ID="txt_Date_Fin" runat="server" class="form-control" type="date" value="2021-03-19" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
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
                <asp:Button ID="btn_supprimer" runat="server" Text="Supprimer" class="btn btn-danger" style="height: 15%;" onclick="btn_supprimer_Click"/>
              <div class="form-outline">
                 <asp:TextBox ID="txt_recherch" runat="server" type="text" class="form-control" placeholder="Rechercher" style="border: lightgray solid 0.5px; width:auto; border-radius:8px; padding-top: 0;padding-bottom: 0; margin-right: 10px;"></asp:TextBox>
              </div>

                <asp:Button ID="btn_recherche" runat="server" Text="Rechercher" class="btn btn-secondary" style="height: 15%;" OnClick="btn_recherche_Click" />
                <asp:Button ID="btn_afficher" runat="server" Text="Afficher Tout" class="btn btn-primary" style="height: 15%;" OnClick="btn_afficher_Click" />
            </div>
                
            <div class="row">
                 <div class="col-md-12">
                     <div class="table-responsive" style="margin: auto; height:500px;overflow:auto">
                        <asp:GridView ID="GridView1" runat="server" style="overflow-x:auto; max-width: 100%;" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table table-bordered table-condensed" DataKeyNames="référence">
                            <Columns>
                                <asp:BoundField DataField="référence" HeaderText="Référence" SortExpression="référence" ReadOnly="True" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="nom_projet" HeaderText="Nom Projet" SortExpression="nom_projet" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="description_projet" HeaderText="Description Projet" SortExpression="description_projet" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="budget" HeaderText="Budget" SortExpression="budget" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="matricule_chéf_projet" HeaderText="Mat Chéf Projet" SortExpression="matricule_chéf_projet" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="nom_chéf_projet" HeaderText="Nom Chéf Projet" SortExpression="nom_chéf_projet" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="date_début" HeaderText="Date Début" SortExpression="date_début" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="date_fin" HeaderText="Date Fin" SortExpression="date_fin" >
                                    <HeaderStyle CssClass="HeaderGridStyle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle CssClass="HeaderGridStyle" />
                          
                              <RowStyle CssClass="roww" />

                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Gestion_RHConnectionString4 %>" SelectCommand="SELECT * FROM [projet]"></asp:SqlDataSource>
<%--                         SelectCommand="SELECT * FROM [projet]" UpdateCommand="Update[projet] Set [référence]=@référence, [nom_projet]=@nom_projet, [description_projet]=@description_projet, [budget]=@budget, [matricule_chéf_projet]=@matricule_chéf_projet, [nom_chéf_projet]=@nom_chéf_projet, [date_début]=@date_début, [date_fin]=@date_fin where [référence]=@référence;" DeleteCommand="delete from [projet] where [référence]=@référence"--%>
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