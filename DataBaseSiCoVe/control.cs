//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataBaseSiCoVe
{
    using System;
    using System.Collections.Generic;
    
    public partial class control
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public control()
        {
            this.infraccions = new HashSet<infraccion>();
        }
    
        public int id { get; set; }
        public int agente_transito_id { get; set; }
        public int vehiculo_id { get; set; }
        public int persona_id { get; set; }
        public Nullable<System.DateTime> fecha_hora { get; set; }
        public int provincia_id { get; set; }
        public int localidad_id { get; set; }
        public string locacion { get; set; }
        public string observaciones { get; set; }
        public string dominio { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<infraccion> infraccions { get; set; }
    }
}
