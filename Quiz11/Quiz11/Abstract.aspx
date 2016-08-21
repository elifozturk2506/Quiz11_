<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Abstract.aspx.cs" Inherits="Quiz11.Abstract" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
   
    <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
        <p></p>
        <p>
        <strong>Abstract Class</strong>, ortak özellikli Class’lara Base(taban) Class olma görevini üstlenir. Örneğin siz projenizde birden fazla Class oluşturup kullanmak istiyorsunuz. Ve oluşturacağınız Class’lar pek çok yönden ortak özellikleri içerisinde barındırıyor. <br />
        İşte bu durumda Abstract Class kullanmanız kodunuzun daha sağlıklı olmasını sağlayacaktır.
 </p>
    <p>
Abstract Class’lar, diğer sınıflara base Class olmak için yazılır. Bu nedenle Abstract Class’dan nesne türetilemez.
    </p>
    <p>
<strong>
Abstract Method
</strong>
        İkinci iş olarak Abstract Method‘ların ne olduğunu açıklığa kavuşturalım. 
        <p>Abstract method, sadece Abstract Class’ların içerisinde tanımlanır ve Abstract Class’ı kalıtan sınıf tarafından override edilmek zorundadır</p>. 
        <p>Oluşturduğumuz Abstract Class içerisine, Abstract Method yazılırken gövdesi yazılmaz ve daha sonra Abstract Class’ımızı kalıtacağımız sınıfta Abstract Method’u override ederiz.</p>
        <p>Abstract Method, sadece Abstract Class’ların içerisinde tanımlanabilen, tanımlanırken gövde bulundurmayan, daha sonra içerisinde bulunduğu Abstract Class kalıtılırken override edilen Method‘lardır.</p>

<p>Abstract Method’lar, Private olarak tanımlanamaz.</p>
    </p>
    </div>
        
    


   
</asp:Content>
