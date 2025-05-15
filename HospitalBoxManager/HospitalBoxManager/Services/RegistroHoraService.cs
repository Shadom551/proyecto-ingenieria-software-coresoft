using DataLibrary;
using HospitalBoxManager.Data;

namespace HospitalBoxManager.Services
{
    public class RegistroHoraService
    {
        private readonly DataAccess _dataAccess;

        public RegistroHoraService(DataAccess dataAccess)
        {
            _dataAccess = dataAccess;
        }

        public async Task<List<Medico>> GetMedicosAsync()
        {
            string sql = @"
                SELECT 
                    m.IdMedico, m.Nombre, m.Rut, m.FechaNacimiento, m.CodigoDeProfesional,
                    t.TipoMedico AS TipoMedico_IdTipoMedico, m.Nombre AS TipoMedico_Nombre
                FROM Medico m
                JOIN TipoMedico t ON t.IdTipoMedico = m.IdTipoMedico;
            ";

            var result = await _dataAccess.LoadData<Medico, TipoMedico, Medico, dynamic>(
                sql,
                (medico, tipo) =>
                {
                    medico.TipoMedico = tipo;
                    return medico;
                },
                new { },
                splitOn: "TipoMedico_IdTipoMedico"
            );

            return [.. result];
        }

        public async Task<List<Box>> GetBoxesAsync()
        {
            string sql = "SELECT * FROM Box";
            return await _dataAccess.LoadData<Box, dynamic>(sql, new { });
        }

        public async Task RegistrarHoraAsync(RegistroDeHora registro)
        {
            await _dataAccess.SaveData("SET FOREIGN_KEY_CHECKS = 0;", new { });

            string sql = @"
                INSERT INTO consultaMedica (idMedico, idBox, fechaInicio, fechaFinal)
                VALUES (@IdMedico, @IdBox, @FechaInicio, @FechaFinal);
            ";

            await _dataAccess.SaveData(sql, registro);

            await _dataAccess.SaveData("SET FOREIGN_KEY_CHECKS = 1;", new { });
        }
    }
}
