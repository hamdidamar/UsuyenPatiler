using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class UyeDAL
    {
        private DBHelper dbHelper;
        public UyeDAL()
        {
            dbHelper = new DBHelper();
        }
        public void UyeEkle(UyeEntity entity)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "sp_UyeEkle @Ad,@Soyad,@Email,@KullaniciAd,@Sifre,@Telefon";
            cmd.Parameters.Add("@Ad", entity.Ad);
            cmd.Parameters.Add("@Soyad", entity.Soyad);
            cmd.Parameters.Add("@Email", entity.Email);
            cmd.Parameters.Add("@KullaniciAd", entity.KullaniciAd);
            cmd.Parameters.Add("@Sifre", entity.Sifre);
            cmd.Parameters.Add("@Telefon", entity.Telefon);
            cmd.ExecuteNonQuery();
        }
        public bool GirisKontrol(string kullaniciAd,string parola)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "select * from tbl_Uye where KullaniciAd = @p1 and Sifre = @p2 ";
            cmd.Parameters.Add("@p1", kullaniciAd);
            cmd.Parameters.Add("@p2", parola);
            cmd.ExecuteNonQuery();
            bool kontrol = false;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                kontrol = true;
                GirisBilgiler.Ad = dr["Ad"].ToString();
                GirisBilgiler.Soyad = dr["Soyad"].ToString();
                GirisBilgiler.ID = int.Parse(dr["ID"].ToString());
            }
            return kontrol;
            
        }

    }
}
