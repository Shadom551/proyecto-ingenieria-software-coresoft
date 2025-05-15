using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using MySql.Data.MySqlClient;

namespace DataLibrary
{
    public class DataAccess(string connectionString)
    {
        private readonly string _connectionString = connectionString;

        // Existing methods
        public async Task<List<T>> LoadData<T, U>(string sql, U parameters)
        {
            using IDbConnection connection = new MySqlConnection(_connectionString);
            var rows = await connection.QueryAsync<T>(sql, parameters);
            return [.. rows];
        }

        public async Task SaveData<T>(string sql, T parameters)
        {
            using IDbConnection connection = new MySqlConnection(_connectionString);
            await connection.ExecuteAsync(sql, parameters);
        }

        // New multi-mapping method
        public async Task<List<TReturn>> LoadData<T1, T2, TReturn, U>(
            string sql,
            Func<T1, T2, TReturn> map,
            U parameters,
            string splitOn = "Id")
        {
            using IDbConnection connection = new MySqlConnection(_connectionString);
            var result = await connection.QueryAsync(sql, map, parameters, splitOn: splitOn);
            return [.. result];
        }

        // Optional: 3-way join version
        public async Task<List<TReturn>> LoadData<T1, T2, T3, TReturn, U>(
            string sql,
            Func<T1, T2, T3, TReturn> map,
            U parameters,
            string splitOn = "Id")
        {
            using IDbConnection connection = new MySqlConnection(_connectionString);
            var result = await connection.QueryAsync(sql, map, parameters, splitOn: splitOn);
            return [.. result];
        }
    }
}