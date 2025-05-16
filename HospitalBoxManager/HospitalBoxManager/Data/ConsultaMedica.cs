using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HospitalBoxManager.Data
{
    public class ConsultaMedica
    {
        public int IdConsulta { get; set; }
        public int IdMedico { get; set; }
        public int IdBox { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFinal { get; set; }
        public Medico? Medico { get; set; }
        public Box? Box { get; set; }
    }


}