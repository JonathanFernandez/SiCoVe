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
    
    public partial class denuncia
    {
        public int id { get; set; }
        public int usuario_id { get; set; }
        public int estado_id { get; set; }
        public Nullable<int> infraccion_id { get; set; }
        public string dominio { get; set; }
        public string ubicacion { get; set; }
        public byte[] adjunto { get; set; }
        public string ruta_adjunto { get; set; }
        public Nullable<System.DateTime> fecha_hora { get; set; }
        public string observaciones { get; set; }
        public int localidad_id { get; set; }
    
        public virtual estado_denuncia estado_denuncia { get; set; }
        public virtual localidad localidad { get; set; }
        public virtual usuario usuario { get; set; }
        public virtual infraccion infraccion { get; set; }
    }
}
