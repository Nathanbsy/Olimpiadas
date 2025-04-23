using ExemploProjeto.Data;
using ExemploProjeto.Models;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;

namespace ExemploProjeto.Controllers
{
    public class CidadeController : Controller
    {
        private readonly Database db = new Database();

        public IActionResult Index()
        {
            List<Cidade> cidades = new List<Cidade>();
            using (var conn = db.GetConnection())
            {
                string sql = @"SELECT codCidade, nomeCidade, cidades.codEstado, estados.nomeEstado FROM cidades 
                JOIN estados ON estados.codEstado = cidades.codEstado";

                var cmd = new MySqlCommand(sql, conn);
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        cidades.Add(new Cidade
                        {
                            CodCidade = reader.GetInt32("codCidade"),
                            NomeCidade = reader.GetString("nomeCidade"),
                            CodEstado = reader.GetInt32("codEstado")
                        });
                    }
                }
                return View(cidades);
            }
        }
        
        public IActionResult Atletas(int id)
        {
            List<Atleta> atletas = new List<Atleta>();
            string nomeCidade = "";

            using (var conn = db.GetConnection())
            {
                string sql = @"
                SELECT a.codAtleta, a.nomeAtleta, a.dataNascimento, a.sexo,
                       a.codModalidade, m.nomeModalidade, c.nomeCidade
                FROM atletas a
                JOIN modalidades m ON m.codModalidade = a.codModalidade
                JOIN cidades c ON c.codCidade = a.codCidade
                WHERE a.codCidade = @id";

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

                nomeCidade = atletas.FirstOrDefault()?.CidadeNascimento ?? "Desconhecida";
            }

            ViewBag.Cidade = nomeCidade;
            return View(atletas);
        }

        public IActionResult Estado(string estado)
        {
            List<Atleta> atletas = new List<Atleta>();
            string nomeCidade = "";

            using (var conn = db.GetConnection())
            {
                string sql = @"
                SELECT a.codAtleta, a.nomeAtleta, a.dataNascimento, a.sexo,
                       a.codModalidade, m.nomeModalidade, cidades.nomeCidade, e.codEstado, e.nomeEstado
                FROM atletas a
                JOIN estados e ON e.codEstado = e.codEstado
                JOIN modalidades m ON m.codModalidade = a.codModalidade
                JOIN cidades ON cidades.codCidade = a.codCidade
                WHERE e.nomeEstado = @estado";

                var cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@estado", estado);
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

                nomeCidade = atletas.FirstOrDefault()?.CidadeNascimento ?? "Desconhecida";
            }
            ViewBag.Cidade = nomeCidade;
            return View(atletas);
        }
    }
}
