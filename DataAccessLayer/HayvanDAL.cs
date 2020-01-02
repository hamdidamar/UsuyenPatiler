using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using System.Data.SqlClient;

namespace DataAccessLayer
{
   public class HayvanDAL
    {
        private DBHelper dbHelper;
        public HayvanDAL()
        {
            dbHelper = new DBHelper();
        }
        public void HayvanEkle(HayvanEntity entity)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "sp_HayvanEkle @Adi,@Turu,@KonumID,@YiyecekDurum";
            cmd.Parameters.Add("@Adi", entity.Adi);
            cmd.Parameters.Add("@Turu", entity.Turu);
            cmd.Parameters.Add("@KonumID", entity.KonumID);
            cmd.Parameters.Add("@YiyecekDurum", entity.YiyecekDurum);
            cmd.ExecuteNonQuery();
        }
        public List<HayvanEntity> Hayvanlar()
        {
            List<HayvanEntity> hayvanlar = new List<HayvanEntity>();
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "select * from view_HayvanGetir ";
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HayvanEntity entity = new HayvanEntity();
                entity.ID = int.Parse(dr["ID"].ToString());
                entity.Adi = dr["Adi"].ToString();
                entity.Turu = dr["Turu"].ToString();
                entity.YiyecekDurum = dr["YiyecekDurum"].ToString();
                entity.KonumID = int.Parse(dr["KonumID"].ToString());

                hayvanlar.Add(entity);

            }
            return hayvanlar;

        }
        public List<HayvanEntity> HayvanGetir(int ID)
        {
            List<HayvanEntity> hayvanlar = new List<HayvanEntity>();
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "select * from view_HayvanGetir WHERE ID = @ID";
            cmd.Parameters.Add("@ID", ID);
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HayvanEntity entity = new HayvanEntity();
                entity.ID = int.Parse(dr["ID"].ToString());
                entity.Adi = dr["Adi"].ToString();
                entity.Turu = dr["Turu"].ToString();
                entity.YiyecekDurum = dr["YiyecekDurum"].ToString();
                entity.KonumID = int.Parse(dr["KonumID"].ToString());

                hayvanlar.Add(entity);

            }
            return hayvanlar;

        }
        public void HayvanGuncelle(HayvanEntity entity)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "update tbl_Hayvan set Adi=@Adi,Turu=@Turu,KonumID=@KonumID,YiyecekDurum=@YiyecekDurum WHERE ID =@ID";
            cmd.Parameters.Add("@Adi", entity.Adi);
            cmd.Parameters.Add("@Turu", entity.Turu);
            cmd.Parameters.Add("@KonumID", entity.KonumID);
            cmd.Parameters.Add("@YiyecekDurum", entity.YiyecekDurum);
            cmd.Parameters.Add("@ID", entity.ID);
            cmd.ExecuteNonQuery();
        }
    }
}
