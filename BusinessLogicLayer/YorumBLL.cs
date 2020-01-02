using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class YorumBLL
    {
        private YorumDAL dal;
        public YorumBLL()
        {
            dal = new YorumDAL();
        }
        public void YorumEkle(YorumEntity e)
        {
            try
            {
                
                dal.YorumEkle(e);
                
            }
            catch (Exception x)
            {
                Console.WriteLine(x);
            }
        }
    }
}
