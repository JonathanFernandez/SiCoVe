//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataBaseSiCoVe
{
    using System;
    using System.Collections.Generic;
    
    public partial class codigo_infraccion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public codigo_infraccion()
        {
            this.infraccions = new HashSet<infraccion>();
        }
    
        public int id { get; set; }
        public string codigo_infraccion1 { get; set; }
        public int categoria_id { get; set; }
        public string descripcion { get; set; }
    
        public virtual categoria_infraccion categoria_infraccion { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<infraccion> infraccions { get; set; }
    }
}
