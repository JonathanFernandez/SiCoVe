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
    
    public partial class usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public usuario()
        {
            this.agente_transito = new HashSet<agente_transito>();
            this.denuncias = new HashSet<denuncia>();
            this.personal_remolque = new HashSet<personal_remolque>();
        }
    
        public int id { get; set; }
        public int persona_id { get; set; }
        public int perfil_usuario_id { get; set; }
        public string email { get; set; }
        public string contraseña { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<agente_transito> agente_transito { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<denuncia> denuncias { get; set; }
        public virtual perfil_usuario perfil_usuario { get; set; }
        public virtual persona persona { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<personal_remolque> personal_remolque { get; set; }
    }
}