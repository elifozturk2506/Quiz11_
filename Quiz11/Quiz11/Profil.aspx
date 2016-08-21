
<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Quiz11.Profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
    <div id="profil" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
    <p>
        <asp:Repeater ID="kisiler" runat="server" >
            <ItemTemplate>
              <asp:HyperLink ID="link" runat="server" Text='<%#Eval("AdSoyad") %>' NavigateUrl='<%#Eval("kisiId","/Profil.aspx?kid={0}")%>' ForeColor="Black">

              </asp:HyperLink>
                <br />
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <br />
        <asp:Label Text="Profilini görüntülemek istediğiniz linke tıklayınız..." runat="server" />
        <br />
        <hr />
        <br />

        <div style="width:600px;height:400px;background-color:#fcf5d7;margin-left:50px" id="secilenprofil" runat="server">
            <div  style="width:200px;height:200px;background-color:aqua;float:left"><img src="" width="200px" height="200px"/ id="resim"></div>
            <div style="width:380px;height:400px;float:right">
                <asp:Label Text="Adı : " runat="server" />
                <label id="lblAd" runat="server"></label>
                <br />
                <br />

                 <asp:Label  Text="Soyadı : " runat="server" />
                 <label id="LblSoyad" runat="server"></label>
                <br />
                <br />

                   <asp:Label  Text="Mesleği : " runat="server" />
                     <label id="LblMeslek" runat="server"> </label>
                <br />
               <br />
                 <asp:Label ID="lbl"  Text="Bilgi : " runat="server" />
                     <label id="lbl_bilgi" runat="server"> </label>
            </div>
        </div>

    </p>
    </div>
</asp:Content> 
