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
    
    public partial class CuentaAhorro
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CuentaAhorro()
        {
            this.Beneficiario = new HashSet<Beneficiario>();
            this.CuentaObjeto = new HashSet<CuentaObjeto>();
            this.EstadoCuenta = new HashSet<EstadoCuenta>();
            this.Movimiento = new HashSet<Movimiento>();
        }
    
        public int ID { get; set; }
        public int IdTipoCuentaAhorro { get; set; }
        public int IdCliente { get; set; }
        public string NumeroCuenta { get; set; }
        public decimal Saldo { get; set; }
        public System.DateTime fechaCreacion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Beneficiario> Beneficiario { get; set; }
        public virtual Cliente Cliente { get; set; }
        public virtual TipoCuentaAhorro TipoCuentaAhorro { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CuentaObjeto> CuentaObjeto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EstadoCuenta> EstadoCuenta { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Movimiento> Movimiento { get; set; }
    }
}
