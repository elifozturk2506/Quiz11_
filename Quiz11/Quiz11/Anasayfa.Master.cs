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

    public partial class Anasayfa : System.Web.UI.MasterPage
    {
        static int id = 0;
        SqlConnection con = new SqlConnection("server=.;database=WebSiteDB;Trusted_Connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {

         
            SqlDataAdapter da = new SqlDataAdapter("Select konuId,konuAdi from AnaKonular", con);
            DataTable dt = new DataTable("anakonular");
            da.Fill(dt);
            anakonular.DataSource = dt;
            anakonular.DataBind();
            SqlDataAdapter da2 = new SqlDataAdapter("Select * From GununSozu Where sozId=@id", con);
            da2.SelectCommand.Parameters.AddWithValue("id", DateTime.Now.ToShortDateString());
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            gununsozu.DataSource = dt2;
            gununsozu.DataBind();

            SqlDataAdapter da3 = new SqlDataAdapter("select hakkında from SiteBilgileri", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);

            hakkinda.DataSource = dt3;
            hakkinda.DataBind();

        }
       
        int a;
        protected void anakonular_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {      
             a = int.Parse((e.Item.DataItem as DataRowView).Row["konuId"].ToString());
            Repeater r = e.Item.FindControl("altkonular") as Repeater;
            SqlDataAdapter da = new SqlDataAdapter("Select * From AltKonular Where konuId=@id", con);
            da.SelectCommand.Parameters.AddWithValue("id", a);
            DataTable dt = new DataTable();
            da.Fill(dt);
            r.DataSource = dt;
            r.DataBind();
         }
        }
       
    }
