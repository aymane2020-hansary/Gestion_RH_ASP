<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Emp.Master" AutoEventWireup="true" CodeBehind="Document.aspx.cs" Inherits="Gestion_RH.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <nav class="navbar justify-content-between" style="margin-top: -30px; ; margin-bottom: 10px; box-shadow: none; padding: 0 0 0 10px; ">
          <a class="navbar-brand" style="color:black; font-weight: 400">Document</a>
      
          <p style="padding-top: 10px;"><span class="fa fa-home mr-1"></span><span style="color: black; font-weight: 300">Dashboard</span> > Document</p>
        </nav>
        <div style="text-align: center; font-weight: bold; font-size: 26px;">
            <span>Welcome </span><asp:Label runat="server" ID="LabelName"></asp:Label><br /><span> Voici Votre Document .</span>
        </div>

        <div class="row">
        <div class="col-md-12">
           <div style="padding: 10px; width: 100px; float: right">
              <asp:Button runat="server" ID="btnPrintnt" class="btn btn-primary btn-user btn-block" Font-Size="15px" Text="Print" OnClick="btnPrintnt_Click"/>
           </div>
        <div class="table-responsive" style="margin: auto; height:500px;overflow:auto">
        <asp:Panel ID="panelPDF" runat="server">
            <asp:GridView ID="GridView6" runat="server"  style="overflow-x:auto; max-width: 100%; text-align: center;" 
                HeaderStyle-CssClass="HeaderGridStyle" CssClass="table table-bordered table-condensed" CellPadding="4" 
                ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="matricule" DataSourceID="SqlDataSource6">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="matricule" HeaderText="Matricule" ReadOnly="True" SortExpression="matricule" />
                    <asp:BoundField DataField="nom_employé" HeaderText="Nom Employé" SortExpression="nom_employé" />
                    <asp:BoundField DataField="prénom_employé" HeaderText="Prénom Employé" SortExpression="prénom_employé" />
                    <asp:BoundField DataField="date_embauche" HeaderText="Date Embauche" SortExpression="date_embauche" />
                    <asp:BoundField DataField="salaire" HeaderText="Salaire" SortExpression="salaire" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                    <asp:BoundField DataField="adresse" HeaderText="Adresse" SortExpression="adresse" />
                    <asp:BoundField DataField="poste_travaille" HeaderText="Poste Travaille" SortExpression="poste_travaille" />
                    <asp:BoundField DataField="nationalité" HeaderText="Nationalité" SortExpression="nationalité" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="sexe" HeaderText="Sexe" SortExpression="sexe" />
                    <asp:BoundField DataField="carte_identité" HeaderText="Carte Identité" SortExpression="carte_identité" />
                    <asp:BoundField DataField="date_naissance" HeaderText="Date Naissance" SortExpression="date_naissance" />
                    <asp:BoundField DataField="compte_bancaire" HeaderText="Compte Bancaire" SortExpression="compte_bancaire" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" CssClass="HeaderGridStyle" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Gestion_RHConnectionString7 %>" SelectCommand="SELECT * FROM [employé] WHERE [matricule] = @nom_sesion;">
                <SelectParameters>
                    <asp:SessionParameter Name="nom_sesion" SessionField="nom_sesion" Type="String" DefaultValue="Session[nom_sesion]" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
                        </div>
            </div>
         </div>
             </div>
</asp:Content>
