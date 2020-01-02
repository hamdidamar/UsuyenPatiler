using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class HaritaDAL
    {
        private DBHelper dbHelper;
        public HaritaDAL()
        {
            dbHelper = new DBHelper();
        }

        public List<HaritaEntity> KonumGetir()
        {
            List<HaritaEntity> konumlar = new List<HaritaEntity>();
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "select * from view_HaritaGetir";
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HaritaEntity entity = new HaritaEntity();
                entity.Adres = dr["Adres"].ToString();
                entity.Aciklama = dr["Aciklama"].ToString();
                entity.X = dr["X"].ToString();
                entity.Y = dr["Y"].ToString();

                konumlar.Add(entity);

            }
            return konumlar;
            
        }

        public List<HaritaEntity> HamdileriGetir()
        {
            List<HaritaEntity> konumlar = new List<HaritaEntity>();
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "AcHayvanGetir";
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HaritaEntity entity = new HaritaEntity();
                entity.Adres = dr["Adres"].ToString();
                entity.Aciklama = dr["Aciklama"].ToString();
                entity.X = dr["X"].ToString();
                entity.Y = dr["Y"].ToString();
                entity.hayvanBilgi.Adi = dr["Adi"].ToString();

                konumlar.Add(entity);

            }
            return konumlar;

        }

        public  int KonumIdGetir(HaritaEntity entity)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "sp_KonumEkle @X,@Y,@Adres,@Aciklama";
            cmd.Parameters.Add("@X", entity.X);
            cmd.Parameters.Add("@Y", entity.Y);
            cmd.Parameters.Add("@Adres", entity.Adres);
            cmd.Parameters.Add("@Aciklama", entity.Aciklama);
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = dbHelper.GetSqlCommand();
            cmd2.CommandText = "select KonumID from tbl_Harita where X = @X and Y = @Y";
            cmd2.Parameters.Add("@X", entity.X);
            cmd2.Parameters.Add("@Y", entity.Y);
            cmd2.ExecuteNonQuery();

            SqlDataReader dr = cmd2.ExecuteReader();
            int id =0;
            while (dr.Read())
            {
                id = int.Parse(dr["KonumId"].ToString());
            }
            return id;

        }

    }
}
