using HospitalBoxManager.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HospitalBoxManager.Data
{
    public class TipoBox
    {
        public int IdTipoBox { get; set; }
        public string Tipo { get; set; } = string.Empty;

        public ICollection<Box> Boxes { get; set; } = new List<Box>();
    }
}

