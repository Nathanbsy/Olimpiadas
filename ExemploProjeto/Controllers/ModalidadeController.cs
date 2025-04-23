using ExemploProjeto.Data;
using ExemploProjeto.Models;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;

namespace ExemploProjeto.Controllers
{
    public class ModalidadeController : Controller
    {
        private readonly Database db = new Database();

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Atletas(int id)
        {
            List<Atleta> atletas = new List<Atleta>();
            string modalidade = "";

            using (var conn = db.GetConnection())
            {
                string sql = @"
                SELECT a.codAtleta, a.nomeAtleta, a.dataNascimento, a.sexo,
                       a.codModalidade, m.nomeModalidade, c.nomeCidade
                FROM atletas a
                JOIN modalidades m ON m.codModalidade = a.codModalidade
                JOIN cidades c ON c.codCidade = a.codCidade
                WHERE m.codModalidade = @id";

                var cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@id", id);
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
                            CodModalidade = reader.GetInt32("codModalidade"),
                            Modalidade = reader.GetString("nomeModalidade"),
                            CidadeNascimento = reader.GetString("nomeCidade")
                        });
                    }
                }

                modalidade = atletas.FirstOrDefault()?.Modalidade ?? "Desconhecida";
            }

            ViewBag.Modalidade = modalidade;
            return View(atletas);
        }
    }
}
