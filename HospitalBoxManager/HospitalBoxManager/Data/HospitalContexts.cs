using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HospitalBoxManager.Data;

namespace HospitalBoxManager.Data
{
    public class HospitalContext : DbContext
    {
        public HospitalContext(DbContextOptions<HospitalContext> options) : base(options) { }

        public DbSet<Medico> Medicos { get; set; }
        public DbSet<TipoMedico> TiposMedico { get; set; }
        public DbSet<Box> Boxes { get; set; }
        public DbSet<TipoBox> TiposBox { get; set; }
        public DbSet<RegistroDeHora> RegistrosDeHora { get; set; }
    }
}
