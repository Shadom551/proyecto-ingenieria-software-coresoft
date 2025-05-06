using HospitalBoxManager.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HospitalBoxManager.Models
{
    public class TipoMedico
    {
        public int IdTipoMedico { get; set; }
        public string Tipo { get; set; } = string.Empty;

        public ICollection<Medico> Medicos { get; set; } = new List<Medico>();
    }
}

