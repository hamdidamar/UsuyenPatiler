using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using DataAccessLayer;


namespace BusinessLogicLayer
{
    public class HayvanBLL
    {
        private HayvanDAL dal;
        public HayvanBLL()
        {
            dal = new HayvanDAL();
        }
        public void HayvanEkle(HayvanEntity e)
        {
            try
            {
                if (e.Adi !=null)
                {
                   dal.HayvanEkle(e);
                }
            }
            catch (Exception x)
            {
                Console.WriteLine(x);
            }
        }

        public List<HayvanEntity> Hayvanlar()
        {
                return dal.Hayvanlar();
        }

    }
}
