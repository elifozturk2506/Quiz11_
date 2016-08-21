<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Quiz11.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
     <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'">
    
     <div style="width:600px;height:550px;background-color:#fcfce3;margin-left:50px;" id="secilenprofil" runat="server">
         <p>
             <br />
         </p>
         <p>
<asp:Label Text="Adres : " runat="server" />
         &nbsp;&nbsp;
             <asp:Label ID="lbl_adres" runat="server" Text="Label"></asp:Label>
         </p> 
       <p><asp:Label Text="Tel No :" runat="server" />&nbsp;&nbsp;
           <asp:Label ID="lbl_telno" runat="server" Text="Label"></asp:Label>
         </p>
         
    <p>
        <asp:Label Text="E-Mail :" runat="server" />&nbsp;
        <asp:Label ID="lbl_mail" runat="server" Text="Label"></asp:Label>
         </p>
         <hr />
         <br />
         <asp:Label Text="Yorum , İstek Ve Şikayetlerinizi Bize İletin..." runat="server" />
         
         <br />
         <br />
         <asp:Label ID="lblAd" runat="server" Text="Adınız :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server"  ID="rad" ErrorMessage="Ad alanı boş geçilemez!!" ForeColor="red" Text="*" ValidationGroup="grup" ControlToValidate="txt_ad"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Label ID="lbl_soyad" runat="server" Text="Soyadınız :"></asp:Label>
&nbsp;&nbsp;
         <asp:TextBox ID="txt_soyad" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server"  ID="rsoyad" ForeColor="red" ErrorMessage="Soyad alanı boş geçilemez!!" Text="*" ValidationGroup="grup" ControlToValidate="txt_soyad"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Label ID="lbl_soyad0" runat="server" Text="E-Mail  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator runat="server" ForeColor="red"  ErrorMessage="Mail alanı boş geçilemez!!" Text="*" ValidationGroup="grup" ControlToValidate="txt_mail"></asp:RequiredFieldValidator>
      
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_yorum" runat="server" Height="106px" TextMode="MultiLine" Width="165px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="ryorum" runat="server" ForeColor="red"  ErrorMessage="Yorum alanı boş geçilemez!!" Text="*" ValidationGroup="grup" ControlToValidate="txt_yorum"></asp:RequiredFieldValidator>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btn_gonder" runat="server" OnClick="btn_gonder_Click" Text="GÖNDER" Width="169px" ValidationGroup="grup" />
         &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbl_yorum" runat="server"></asp:Label>
&nbsp;<asp:ValidationSummary runat="server" ValidationGroup="grup" ShowMessageBox="true"/>   
     </div>    
    
         </div>
</asp:Content>
