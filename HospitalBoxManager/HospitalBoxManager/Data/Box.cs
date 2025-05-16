using HospitalBoxManager.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HospitalBoxManager.Data
{
    public class Box
    {
        public int IdBox { get; set; }
        public int IdTipoBox { get; set; }
        public string Pasillo { get; set; } = string.Empty;
        public string Estado { get; set; } = string.Empty;
    }

}
