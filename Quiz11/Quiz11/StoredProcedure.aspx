<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="StoredProcedure.aspx.cs" Inherits="Quiz11.StoredProcedure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
    <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
        <p>
            
Stored Procedure’ler database server üzerinde saklanan SQL cümlecikleridir. 
            Parametreler alabilirler ve size sonuçlar döndürebilirler. 
            Avantajlari arasinda DB server üzerinde olmasindan dolayi daha hizli çalismalari, sadece ilk çalismalarinda derlenmeleri sonraki çalismalarda derlenmemeleri (bu da neden hizli oldugunu açikliyor) SQL cümlecikleri ve programlama dilleri ile yazdigimiz kodlari birbirinden ayristirmamizi saglamasi sayilabilir.
        </p>
        <p>
            <p>Stored Procedure Oluştururken öncelikle <strong>Create Procedure</strong> deyimi kullanılır. Ve ardından Procedure için bir isim tanımlanır. Parantez açılır ve ilgili parametreler tanımlanır. Sonra Parantez kapatılır ve AS deyiminden sonra yapacağım işlemler SQL komutları ile belirtilir. </p>
<pre title="">CREATE PROCEDURE ProcedureIsmi
( @Parametre1 VeriTipi,
  @Parametre2 VeriTipi,
  ...
  ...
  ...
 )
 
 AS
 
 --Diğer SQL komutlarım, yani yapılacak işlemler--</pre>
        </p>
    </div>
</asp:Content>
