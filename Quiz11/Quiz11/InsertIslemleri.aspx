<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="InsertIslemleri.aspx.cs" Inherits="Quiz11.InsertIslemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
        <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
            <p>
                SQL'de veritabanına kayıt eklemek için <strong>Insert Into</strong>  deyimini kullanırız.
            </p>
            <p>
                Insert Into deyiminin formatı şu şekildedir:
                <br />
INSERT INTO [tablo adı](alan adları) VALUES (veriler)
            </p>
            <strong>Örnek :</strong>
            <pre>
                	
INSERT INTO personel VALUES(65,'Metin Yıldız','Reklam',1975,'İstanbul',1350)
            </pre>
        </div>

</asp:Content>
