using ExemploProjeto.Data;
using ExemploProjeto.Models;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;

namespace ExemploProjeto.Controllers
{
    public class ProvaController : Controller
    {
        private readonly Database db = new Database();

        public IActionResult Index()
        {

            using (MySqlConnection conn = db.GetConnection())
            {
                string query = @"
                    SELECT * FROM atletas ORDER BY NomeAtleta LIMIT @PageSize OFFSET @Offset";

                MySqlCommand cmd = new MySqlCommand(query, conn);
                
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        atletas.Add(new Atleta
                        {
                            CodAtleta = reader.GetInt32("codAtleta"),
                            NomeAtleta = reader.GetString("nomeAtleta"),
                            DataNascimento = reader.GetString("dataNascimento"),
                            Sexo = reader.GetChar("sexo"),
                            CodCidade = reader.GetInt32("codCidade"),
                            CodModalidade = reader.GetInt32("codModalidade"),
                        });
                    }
                }
                return View();
        }
    }
}
