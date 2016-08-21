using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.;database=WebSiteDB;Trusted_Connection=true");
            SqlCommand com = new SqlCommand("select iletisimAdresi,iletisimTelno,iletisimMail from SiteBilgileri", con);
              con.Open();
              SqlDataReader dr=com.ExecuteReader();

              while (dr.Read())
              {
                  string adres = dr.GetString(0);
                  string telno = dr.GetString(1);
                  string mail=dr.GetString(2);
                  lbl_adres.Text = adres;
                  lbl_telno.Text = telno;
                  lbl_mail.Text = mail;
              }
        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            lbl_yorum.Text = "";
 
            SqlConnection con = new SqlConnection("server=.;database=WebSiteDB;Trusted_Connection=true");
            SqlCommand com = new SqlCommand("insert into KullaniciYorum(Ad,Soyad,Mail,Yorum) Values(@ad,@soyad,@mail,@yorum)",con);
            com.Parameters.AddWithValue("@ad",txt_ad.Text);
            com.Parameters.AddWithValue("@soyad", txt_soyad.Text);
            com.Parameters.AddWithValue("@mail", txt_mail.Text);
            com.Parameters.AddWithValue("@yorum", txt_yorum.Text);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                
                    lbl_yorum.Text = "Yorum iletildi."; 
            }
            txt_ad.Text = "";
            txt_soyad.Text = "";
            txt_mail.Text = "";
            txt_yorum.Text = "";
        }
    }
}