using System;
using Dapper.Contrib.Extensions;

namespace FunctionAppCargaArquivos.Models
{
    [Table("dbo.Arquivos")]
    public class Arquivo
    {
        [Key]
        public int IdArquivo { get; set; }
        public string Nome { get; set; }
        public DateTime? DataCarga { get; set; }
    }
}