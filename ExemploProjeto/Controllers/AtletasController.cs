using ExemploProjeto.Data;
using ExemploProjeto.Models;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;

namespace ExemploProjeto.Controllers
{
    public class AtletasController : Controller
    {
        private readonly Database db = new Database();
        public IActionResult Index()
        {
            List<Atleta> atletas = new List<Atleta>();
            int pageNumber = Convert.ToInt32(Request.Query["page"]);
            if(pageNumber == 0)
            {
                pageNumber = 1;
            }
            int pageSize = 10;
            int offset = (pageNumber - 1) * pageSize;
            using (MySqlConnection conn = db.GetConnection())
            {
                string query = @"
                    SELECT * FROM atletas ORDER BY NomeAtleta LIMIT @PageSize OFFSET @Offset";

                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Offset", offset);
                cmd.Parameters.AddWithValue("@PageSize", pageSize);
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
                ViewBag.PageNumber = pageNumber;
                return View(atletas);
            }
        }
    }
}
