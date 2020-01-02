using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class UyeBLL
    {
        private UyeDAL uyeDal;
        public UyeBLL()
        {
            uyeDal = new UyeDAL();
        }

        public void UyeEkle(UyeEntity e)
        {
            try
            {
                if (e.Ad != null )
                {
                    uyeDal.UyeEkle(e);
                }
            }
            catch (Exception x)
            {
                Console.WriteLine("Uye eklenirken Hata!");
            }
        }

        public bool GirisKontrol(string kullaniciAd,string parola)
        {
            try
            {
                return uyeDal.GirisKontrol(kullaniciAd,parola);
            }
            catch (Exception x)
            {
                Console.WriteLine("Uye eklenirken Hata!");
                return false;
            }
        }

    }
}
