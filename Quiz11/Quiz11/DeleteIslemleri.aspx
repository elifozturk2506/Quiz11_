<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="DeleteIslemleri.aspx.cs" Inherits="Quiz11.DeleteIslemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
        <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
            <p>
                <strong>Delete</strong> deyimi, veritabanında bulunan bir tablodaki istenilen kayıtları silmek amacıyla kullanılan temel bir SQL deyimidir. 
            </p>
            <p>
                Delete deyiminin formatı şu şekildedir:
                <br />
DELETE FROM [tablo adı] WHERE [şartlar]
            </p>
            <strong>Örnek :</strong>
            <pre>
                DELETE FROM personel
            </pre>
        </div>

</asp:Content>
