//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CuentaObjeto
    {
        public int ID { get; set; }
        public int IdCuentaAhorro { get; set; }
        public System.DateTime FechaInicial { get; set; }
        public System.DateTime FechaFinal { get; set; }
        public decimal Saldo { get; set; }
        public decimal MontoAhorro { get; set; }
    
        public virtual CuentaAhorro CuentaAhorro { get; set; }
    }
}
