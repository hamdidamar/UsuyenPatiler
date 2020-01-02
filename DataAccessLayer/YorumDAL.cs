using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class YorumDAL
    {
        private DBHelper dbHelper;
        public YorumDAL()
        {
            dbHelper = new DBHelper();
        }
        public void YorumEkle(YorumEntity entity)
        {
            SqlCommand cmd = dbHelper.GetSqlCommand();
            cmd.CommandText = "sp_YorumEkle @p1,@p2,@p3,@p4";
            cmd.Parameters.Add("@p1", entity.AdSoyad);
            cmd.Parameters.Add("@p2", entity.Telefon);
            cmd.Parameters.Add("@p3", entity.Email);
            cmd.Parameters.Add("@p4", entity.yorum);
            cmd.ExecuteNonQuery();
        }
    }
}
