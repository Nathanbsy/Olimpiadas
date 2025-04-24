using MySql.Data.MySqlClient;

namespace ExemploProjeto.Data
{
    public class Database
    {
        private readonly string connectionString = "server=localhost;port=3306;database=dbpesquisaOlimpiadas;user=EU;password=S4r!nh4;";

        public MySqlConnection GetConnection()
        {
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();
            return conn;
        }
    }
}
