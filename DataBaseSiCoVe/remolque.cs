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
    
    public partial class remolque
    {
        public int id { get; set; }
        public int personal_remolque_id { get; set; }
        public int playa_acarreo_id { get; set; }
        public int vehiculo_id { get; set; }
        public Nullable<System.DateTime> fecha_hora { get; set; }
        public string ubicacion { get; set; }
        public string detalle_infraccion { get; set; }
        public string dominio { get; set; }
    
        public virtual personal_remolque personal_remolque { get; set; }
        public virtual playa_acarreo playa_acarreo { get; set; }
        public virtual vehiculo vehiculo { get; set; }
    }
}
