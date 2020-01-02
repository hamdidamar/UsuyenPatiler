using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class HaritaEntity
    {
        public string Adres { get; set; }
        public string X { get; set; }
        public string Y { get; set; }
        public string Aciklama { get; set; }
        public HayvanEntity hayvanBilgi { get; set; }

        public HaritaEntity()
        {
            hayvanBilgi = new HayvanEntity();
        }

    }
}
