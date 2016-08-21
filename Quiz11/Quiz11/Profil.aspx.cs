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
    public partial class Profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            secilenprofil.Visible = false;
            SqlConnection con = new SqlConnection("server=.;database=WebSiteDB;Trusted_Connection=true");
            SqlDataAdapter da = new SqlDataAdapter("select kisiId,CONCAT(kisiAd,' ',kisiSoyad) as AdSoyad from Kisiler", con);
            DataTable dt = new DataTable("kisiler");
            da.Fill(dt);
            kisiler.DataSource = dt;
            kisiler.DataBind();
            if (Request.QueryString["kid"] != null)
            {
                secilenprofil.Visible = true;
                var id = Request.QueryString["kid"];

              SqlCommand com = new SqlCommand("select * from Kisiler where kisiId=@id", con);
              com.Parameters.AddWithValue("@id",id);
              con.Open();
              SqlDataReader dr=com.ExecuteReader();

              while (dr.Read())
              {
                  string ad = dr.GetString(1);
                  string soyad = dr.GetString(2);
                  string meslek = dr.GetString(3);
                  //string foto = dr.GetString(4);
                  string bilgi = dr.GetString(5);
                  lblAd.InnerText = ad;
                  LblSoyad.InnerText = soyad;
                  LblMeslek.InnerText = meslek;
                  lbl_bilgi.InnerText = bilgi;
              }
               
            }
           
        }
    }
}