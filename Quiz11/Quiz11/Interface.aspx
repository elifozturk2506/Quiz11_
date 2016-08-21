<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Interface.aspx.cs" Inherits="Quiz11.Interface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
     <div id="altkonularicerik" style="margin-left:40px;margin-top:30px;width:700px;height:550px; background-color:#fcfce3;font-family:'Century Schoolbook'" >
         <p>
             <strong>Interface,</strong>  Türkçe anlamı “Arayüz” olan, ve diğer class lara Rehberlik görevi üstlenen bir yapımızdır. 
             Burada Rehberlik kavramına dikkat çekerim. Yani gerçekten yaptığı iş sadece diğer classlara yön göstermektir. 
             Bu yüzden Interface tanımları içerisinde kesinlikle kod bloğumuz bulunmaz. 
             Interface yapılar sadece tanımlamalardan ibarettir, içerisinde hiçbir yapıcı metod ekleyemeyiz.
         </p>
         <p>
             Interface i diğer classlardan ayıran birçok özellik vardır. Bunlara birazdan değineceğim.
             <br />
Ama en önemlisi:
             <br />
* Bir Class sadece bir class tan türetebilirken, bir Class birden çok Interface ten türetilebilir.
Yani, bir Classa birden çok Interface ile rehberlik edebiliriz.
         </p>
         <p>
             Class oluştururken nasıl “Class” parametresi kullanıyorsak, Interface oluştururken de “Interface” anahtar sözcüğünü kullanırız.
             <br />
             
Oluşturduğumuz Interface isimlerinin, I ile başladığına dikkat çekerim. Bu bize kalıtım aldığımız calss ta, kalıtım alınan şeyin bir Interface olduğunu gösterir.
             <br />

Interface oluştururken dikkat edeceğimiz maddeler aşağıda ki gibidir:
             <ul>
<li>Interface ler yukarda bahsettiğim gibi Rehber görevi görürler. Yani içerisine herhangi bir kod parçası ekleyemeyiz. Sadece tnaımlama yaparız.</li
                 <li>Interface ler yukarda bahsettiğim gibi Rehber görevi görürler. Yani içerisine herhangi bir kod parçası ekleyemeyiz. Sadece tnaımlama yaparız.</li
                <li>Bir Interface in tüm üyeleri Public kabul edilir. Private, Protected, Static gibi tanımlanamazlar.</li>
                 <li>Üyeleri public olarak ta tanımlayamayız, çünkü zaten hepsi public olarak tanımlanmış kabul edilir. Aksi halde hata alırız.</li>
                 <li>Bir arayüzü, başka bir arayüzden türetebiliriz, fakat bir Class tan yada Struct dan türetemeyiz.</li>
                 <li>Interface leri miras alan sınıflar, içerisinde tanımlanan tüm metodları Implemente etmek zorundadır.</li>
             </ul>





         </p>
     </div>
</asp:Content>
