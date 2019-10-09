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
    
    public partial class Movimiento
    {
        public int ID { get; set; }
        public int IdCuentaAhorro { get; set; }
        public int IdEstadoCuenta { get; set; }
        public int IdTipoMovimiento { get; set; }
        public string NumeroCuenta { get; set; }
        public System.DateTime Fecha { get; set; }
        public decimal Monto { get; set; }
    
        public virtual CuentaAhorro CuentaAhorro { get; set; }
        public virtual EstadoCuenta EstadoCuenta { get; set; }
        public virtual TipoMovimiento TipoMovimiento { get; set; }
    }
}