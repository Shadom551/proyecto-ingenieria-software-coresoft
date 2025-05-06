using HospitalBoxManager.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.Maui.ApplicationModel.Permissions;

namespace HospitalBoxManager.Models
{
    public class Medico
    {
        public int IdMedico { get; set; }
        public int IdTipoMedico { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public int Rut { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string CodigoDeProfesional { get; set; } = string.Empty;

        public TipoMedico TipoMedico { get; set; } = new TipoMedico();
        public ICollection<RegistroDeHora> RegistrosDeHora { get; set; } = new List<RegistroDeHora>();
    }
}