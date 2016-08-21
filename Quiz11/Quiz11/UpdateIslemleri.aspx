<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="UpdateIslemleri.aspx.cs" Inherits="Quiz11.UpdateIslemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
        <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
            <p>
                SQL dilinde <strong>Update</strong> deyimi, veritabanında bulunan verileri değiştirmek-güncellemek amacıyla kullanılan bir deyimdir. 
            </p>
            <p>
                Update deyiminin formatı şu şekildedir:
                <br />
UPDATE [tablo adı] SET [yeni bilgiler] WHERE [şartlar]
            </p>
            <strong>Örnek :</strong>
            <pre>
                UPDATE personel SET bolum='İdari'
            </pre>
        </div>

</asp:Content>
