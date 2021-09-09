<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Emp.Master" AutoEventWireup="true" CodeBehind="Modifier_compte.aspx.cs" Inherits="Gestion_RH.Modifier_compte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
        
           <div class="container">
               <nav class="navbar justify-content-between" style="margin-top: -30px; box-shadow: none; padding: 0 0 0 10px; ">
                  <a class="navbar-brand" style="color:black; font-weight: 400">Modifier Compte</a>
                  <p style="padding-top: 10px;"><span class="fa fa-home mr-1"></span><span style="color: black; font-weight: 300">Modifier Compte</span> > <span style="color: black; font-weight: 300">Modifier Compte</span></p>
                </nav>
                <div class="row flex-lg-nowrap">
                  <div class="col">
                    <div class="row">
                      <div class="col mb-3">
                        <div class="card">
                          <div class="card-body">
                            <div class="e-profile">

                              <ul class="nav nav-tabs">
                                <li class="nav-item"><p class="active nav-link">Modifier Compte</p></li>
                              </ul>
                              <div class="tab-content pt-3">
                                <div class="tab-pane active">
                                  <form>
                                       <div class="row">
                                         <div class="col">
                                             <label style="padding-left: 4px; margin-bottom: 2px;">Matricule</label>
                                             <asp:TextBox ID="txt_Matricule" runat="server" type="text" class="form-control" placeholder="Matricule" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;" readonly="true"></asp:TextBox>
                                          </div>
                                          <div class="col">
                                              <label style="padding-left: 4px; margin-bottom: 2px;">Nom</label>
                                              <asp:TextBox ID="txt_nom_employée" runat="server" type="text" class="form-control" placeholder="Nom" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;" readonly="true"></asp:TextBox>
                                          </div>
                                           <div class="col">
                                              <label style="padding-left: 4px; margin-bottom: 2px;">Prénom</label>
                                              <asp:TextBox ID="txt_prénom" runat="server" type="text" class="form-control" placeholder="Prénom" style="border: lightgray solid 1px; width:90%;border-radius:10px; padding-top: 0;padding-bottom: 0;" readonly="true"></asp:TextBox>
                                          </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <label style="padding-left: 4px; margin-bottom: 2px;">Nouveau Nom utilisateur<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="txt_new_user_name" runat="server" type="text" class="form-control" placeholder="Nouveau Nom utilisateur" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                                            </div>
                                          </div>

                                            <div class="row">
                                            <div class="col">
                                                <label style="padding-left: 4px; margin-bottom: 2px;">Nouveau Mote de passe<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="txt_new_password" runat="server" type="text" class="form-control" placeholder="Nouveau Mote de passe" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                                            </div>
                                          </div>

                                        <div class="row">
                                            <div class="col">
                                            <label style="padding-left: 4px; margin-bottom: 2px;">Nouveau Nom De Grand Pére<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="txt_grand_pére" runat="server" type="text" class="form-control" placeholder="Nouveau Nom De Grand Pére" style="border: lightgray solid 1px; width:96%;border-radius:10px; padding-top: 0;padding-bottom: 0;"></asp:TextBox>
                                            </div>
                                            </div>

                                      <div class="input-group"  style="justify-content: right">
                                        <asp:Button ID="btn_Confirmer" runat="server" Text="Confirmer" class="btn btn-primary" style="height: 15%;" OnClick="btn_Confirmer_Click"/>
                                    </div>
                                    </form>

                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
            </div>
</asp:Content>
