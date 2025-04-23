using ExemploProjeto.Data;
using ExemploProjeto.Models;
using MySql.Data.MySqlClient;
using Microsoft.AspNetCore.Mvc;


namespace ExemploProjeto.Controllers
{
    public class EdicaoController : Controller
    {
        private readonly Database db = new Database();
        public IActionResult Index()
        {
            List<Edicao> edicoes = new List<Edicao>();
            using (MySqlConnection conn = db.GetConnection())
            {
                string sql = "SELECT * FROM edicao";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        edicoes.Add(new Edicao
                        {
                            Codedicao = reader.GetInt32("codedicao"),
                            Ano = reader.GetInt32("ano"),
                            Sede = reader.GetString("sede")
                        });
                    }
                }
            }
            return View(edicoes);
        }

        public IActionResult Atletas(int id)
        {
            List<Atleta> atletas = new List<Atleta>();
            string nomeEdicao = "";
            int totalAtletas = 0;

            using (MySqlConnection conn = db.GetConnection())
            {
                string query = @"
                    SELECT DISTINCT a.codAtleta, a.nomeAtleta, a.dataNascimento, a.sexo, 
                    a.codCidade, a.codModalidade, m.nomeModalidade
                    FROM resultadosatletas r
                    JOIN atletas a ON a.codAtleta = r.codAtleta
                    JOIN modalidades m ON m.codModalidade = a.codModalidade
                    WHERE r.codedicao = @id";

                MySqlCommand cmd = new MySqlCommand(query, conn);
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
                            CodCidade = reader.GetInt32("codCidade"),
                            CodModalidade = reader.GetInt32("codModalidade"),
                            Modalidade = reader.GetString("nomeModalidade")
                        });
                    }
                }

                totalAtletas = atletas.Count;
            }

            ViewBag.EdicaoId = id;
            ViewBag.TotalAtletas = totalAtletas;
            return View(atletas);
        }

        public IActionResult Detalhes(int id)
        {
            Atleta atleta = null;
            List<(string Prova, string Edicao, string Resultado, string Medalha)> participacoes = new();

            using (var conn = db.GetConnection())
            {
                string query = @"
                SELECT a.codAtleta, a.nomeAtleta, a.dataNascimento, a.sexo, 
                       c.nomeCidade, e.nomeEstado, a.codModalidade, m.nomeModalidade, a.codCidade
                FROM atletas a
                JOIN cidades c ON c.codCidade = a.codCidade
                JOIN estados e ON e.codEstado = c.codEstado
                JOIN modalidades m ON m.codModalidade = a.codModalidade
                WHERE a.codAtleta = @id";

                var cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", id);

                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        atleta = new Atleta
                        {
                            CodAtleta = reader.GetInt32("codAtleta"),
                            NomeAtleta = reader.GetString("nomeAtleta"),
                            DataNascimento = reader.GetString("dataNascimento"),
                            Sexo = reader.GetChar("sexo"),
                            CidadeNascimento = reader.GetString("nomeCidade"),
                            CodModalidade = reader.GetInt32("codModalidade"),
                            Modalidade = reader.GetString("nomeModalidade"),
                            EstadoNascimento = reader.GetString("nomeEstado"),
                            CodCidade = reader.GetInt32("codCidade")
                        };
                    }
                }

                // Buscar participações
                string participacaoQuery = @"
                    SELECT p.nomeProva, e.ano, e.sede, r.resultado, r.medalha
                    FROM resultadosatletas r
                    JOIN provas p ON p.codProva = r.codProva
                    JOIN edicao e ON e.codedicao = r.codedicao
                    WHERE r.codAtleta = @id";

                var cmd2 = new MySqlCommand(participacaoQuery, conn);
                cmd2.Parameters.AddWithValue("@id", id);
                using (var reader = cmd2.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        participacoes.Add((
                                reader.GetString("nomeProva"),
                                $"{reader.GetInt32("ano")} - {reader.GetString("sede")}",
                                reader.GetString("resultado"),
                                reader.GetString("medalha")
                            ));
                    }
                }

            }
            ViewBag.Participacoes = participacoes;
            return View(atleta);
        }
    }
}
