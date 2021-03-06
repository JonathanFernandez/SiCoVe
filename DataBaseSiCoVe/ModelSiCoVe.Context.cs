﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class sicoveEntities : DbContext
    {
        public sicoveEntities()
            : base("name=sicoveEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<agente_transito> agente_transito { get; set; }
        public virtual DbSet<aseguradora> aseguradoras { get; set; }
        public virtual DbSet<categoria_infraccion> categoria_infraccion { get; set; }
        public virtual DbSet<categoria_licencia> categoria_licencia { get; set; }
        public virtual DbSet<control> controls { get; set; }
        public virtual DbSet<denuncia> denuncias { get; set; }
        public virtual DbSet<estado_cedula> estado_cedula { get; set; }
        public virtual DbSet<estado_denuncia> estado_denuncia { get; set; }
        public virtual DbSet<licencia> licencias { get; set; }
        public virtual DbSet<localidad> localidads { get; set; }
        public virtual DbSet<marca_vehiculo> marca_vehiculo { get; set; }
        public virtual DbSet<municipio> municipios { get; set; }
        public virtual DbSet<nacionalidad> nacionalidads { get; set; }
        public virtual DbSet<perfil_usuario> perfil_usuario { get; set; }
        public virtual DbSet<persona> personas { get; set; }
        public virtual DbSet<personal_remolque> personal_remolque { get; set; }
        public virtual DbSet<playa_acarreo> playa_acarreo { get; set; }
        public virtual DbSet<provincia> provincias { get; set; }
        public virtual DbSet<sexo> sexoes { get; set; }
        public virtual DbSet<tipo_vehiculo> tipo_vehiculo { get; set; }
        public virtual DbSet<uso_cedula> uso_cedula { get; set; }
        public virtual DbSet<usuario> usuarios { get; set; }
        public virtual DbSet<vehiculo> vehiculoes { get; set; }
        public virtual DbSet<remolque> remolques { get; set; }
        public virtual DbSet<infraccion> infraccions { get; set; }
        public virtual DbSet<cedula> cedulas { get; set; }
        public virtual DbSet<poliza> polizas { get; set; }
        public virtual DbSet<codigo_infraccion> codigo_infraccion { get; set; }
    
        public virtual ObjectResult<SP_GENERAR_EMAIL_ACARREO_Result> SP_GENERAR_EMAIL_ACARREO(string dominio, Nullable<int> remolque_id)
        {
            var dominioParameter = dominio != null ?
                new ObjectParameter("dominio", dominio) :
                new ObjectParameter("dominio", typeof(string));
    
            var remolque_idParameter = remolque_id.HasValue ?
                new ObjectParameter("remolque_id", remolque_id) :
                new ObjectParameter("remolque_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_GENERAR_EMAIL_ACARREO_Result>("SP_GENERAR_EMAIL_ACARREO", dominioParameter, remolque_idParameter);
        }
    
        public virtual ObjectResult<SP_GENERAR_EMAIL_DENUNCIA_Result> SP_GENERAR_EMAIL_DENUNCIA(Nullable<int> denuncia)
        {
            var denunciaParameter = denuncia.HasValue ?
                new ObjectParameter("denuncia", denuncia) :
                new ObjectParameter("denuncia", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_GENERAR_EMAIL_DENUNCIA_Result>("SP_GENERAR_EMAIL_DENUNCIA", denunciaParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_ACARREO_X_REMOLCADOR_Result> SP_LISTADO_ACARREO_X_REMOLCADOR(Nullable<int> uSUARIO)
        {
            var uSUARIOParameter = uSUARIO.HasValue ?
                new ObjectParameter("USUARIO", uSUARIO) :
                new ObjectParameter("USUARIO", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_ACARREO_X_REMOLCADOR_Result>("SP_LISTADO_ACARREO_X_REMOLCADOR", uSUARIOParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_AGENTE_TRANSITO_Result> SP_LISTADO_AGENTE_TRANSITO(Nullable<int> nRO_LEGAJO, string aPELLIDO, string nOMBRE)
        {
            var nRO_LEGAJOParameter = nRO_LEGAJO.HasValue ?
                new ObjectParameter("NRO_LEGAJO", nRO_LEGAJO) :
                new ObjectParameter("NRO_LEGAJO", typeof(int));
    
            var aPELLIDOParameter = aPELLIDO != null ?
                new ObjectParameter("APELLIDO", aPELLIDO) :
                new ObjectParameter("APELLIDO", typeof(string));
    
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_AGENTE_TRANSITO_Result>("SP_LISTADO_AGENTE_TRANSITO", nRO_LEGAJOParameter, aPELLIDOParameter, nOMBREParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_CONDUCTORES_Result> SP_LISTADO_CONDUCTORES(Nullable<int> dNI, string aPELLIDO, string nOMBRE)
        {
            var dNIParameter = dNI.HasValue ?
                new ObjectParameter("DNI", dNI) :
                new ObjectParameter("DNI", typeof(int));
    
            var aPELLIDOParameter = aPELLIDO != null ?
                new ObjectParameter("APELLIDO", aPELLIDO) :
                new ObjectParameter("APELLIDO", typeof(string));
    
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_CONDUCTORES_Result>("SP_LISTADO_CONDUCTORES", dNIParameter, aPELLIDOParameter, nOMBREParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_DENUNCIA_Result> SP_LISTADO_DENUNCIA(Nullable<int> localidad_id)
        {
            var localidad_idParameter = localidad_id.HasValue ?
                new ObjectParameter("localidad_id", localidad_id) :
                new ObjectParameter("localidad_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_DENUNCIA_Result>("SP_LISTADO_DENUNCIA", localidad_idParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_MIS_DENUNCIA_Result> SP_LISTADO_MIS_DENUNCIA(Nullable<int> id_usuario)
        {
            var id_usuarioParameter = id_usuario.HasValue ?
                new ObjectParameter("id_usuario", id_usuario) :
                new ObjectParameter("id_usuario", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_MIS_DENUNCIA_Result>("SP_LISTADO_MIS_DENUNCIA", id_usuarioParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_PERSONAL_REMOLQUE_Result> SP_LISTADO_PERSONAL_REMOLQUE(Nullable<int> nRO_LEGAJO, string aPELLIDO, string nOMBRE)
        {
            var nRO_LEGAJOParameter = nRO_LEGAJO.HasValue ?
                new ObjectParameter("NRO_LEGAJO", nRO_LEGAJO) :
                new ObjectParameter("NRO_LEGAJO", typeof(int));
    
            var aPELLIDOParameter = aPELLIDO != null ?
                new ObjectParameter("APELLIDO", aPELLIDO) :
                new ObjectParameter("APELLIDO", typeof(string));
    
            var nOMBREParameter = nOMBRE != null ?
                new ObjectParameter("NOMBRE", nOMBRE) :
                new ObjectParameter("NOMBRE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_PERSONAL_REMOLQUE_Result>("SP_LISTADO_PERSONAL_REMOLQUE", nRO_LEGAJOParameter, aPELLIDOParameter, nOMBREParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_ACARREOS_X_LOCALIDAD_Result> SP_LISTAR_ACARREOS_X_LOCALIDAD(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_ACARREOS_X_LOCALIDAD_Result>("SP_LISTAR_ACARREOS_X_LOCALIDAD", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_ACARREOS_X_PLAYA_Result> SP_LISTAR_ACARREOS_X_PLAYA(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_ACARREOS_X_PLAYA_Result>("SP_LISTAR_ACARREOS_X_PLAYA", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_CONTROLES_X_AGENTE_Result> SP_LISTAR_CONTROLES_X_AGENTE(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_CONTROLES_X_AGENTE_Result>("SP_LISTAR_CONTROLES_X_AGENTE", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_CONTROLES_X_LOCALIDAD_Result> SP_LISTAR_CONTROLES_X_LOCALIDAD(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_CONTROLES_X_LOCALIDAD_Result>("SP_LISTAR_CONTROLES_X_LOCALIDAD", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_DENUNCIAS_X_LOCALIDAD_Result> SP_LISTAR_DENUNCIAS_X_LOCALIDAD(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_DENUNCIAS_X_LOCALIDAD_Result>("SP_LISTAR_DENUNCIAS_X_LOCALIDAD", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_INFRACCIONES_X_CATEGORIA_Result> SP_LISTAR_INFRACCIONES_X_CATEGORIA(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_INFRACCIONES_X_CATEGORIA_Result>("SP_LISTAR_INFRACCIONES_X_CATEGORIA", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_INFRACCIONES_X_LOCALIDAD_Result> SP_LISTAR_INFRACCIONES_X_LOCALIDAD(Nullable<System.DateTime> fecha_desde, Nullable<System.DateTime> fecha_hasta)
        {
            var fecha_desdeParameter = fecha_desde.HasValue ?
                new ObjectParameter("fecha_desde", fecha_desde) :
                new ObjectParameter("fecha_desde", typeof(System.DateTime));
    
            var fecha_hastaParameter = fecha_hasta.HasValue ?
                new ObjectParameter("fecha_hasta", fecha_hasta) :
                new ObjectParameter("fecha_hasta", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_INFRACCIONES_X_LOCALIDAD_Result>("SP_LISTAR_INFRACCIONES_X_LOCALIDAD", fecha_desdeParameter, fecha_hastaParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_PERSONAS_AUTORIZADAS_Result> SP_LISTAR_PERSONAS_AUTORIZADAS(string dominio)
        {
            var dominioParameter = dominio != null ?
                new ObjectParameter("dominio", dominio) :
                new ObjectParameter("dominio", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_PERSONAS_AUTORIZADAS_Result>("SP_LISTAR_PERSONAS_AUTORIZADAS", dominioParameter);
        }
    
        public virtual ObjectResult<SP_LISTAR_DATOS_PERSONA_Result> SP_LISTAR_DATOS_PERSONA(Nullable<int> persona)
        {
            var personaParameter = persona.HasValue ?
                new ObjectParameter("persona", persona) :
                new ObjectParameter("persona", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTAR_DATOS_PERSONA_Result>("SP_LISTAR_DATOS_PERSONA", personaParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_ACARREO_Result> SP_LISTADO_ACARREO(Nullable<int> lOCALIDAD, Nullable<int> rEMOLCADOR_ID)
        {
            var lOCALIDADParameter = lOCALIDAD.HasValue ?
                new ObjectParameter("LOCALIDAD", lOCALIDAD) :
                new ObjectParameter("LOCALIDAD", typeof(int));
    
            var rEMOLCADOR_IDParameter = rEMOLCADOR_ID.HasValue ?
                new ObjectParameter("REMOLCADOR_ID", rEMOLCADOR_ID) :
                new ObjectParameter("REMOLCADOR_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_ACARREO_Result>("SP_LISTADO_ACARREO", lOCALIDADParameter, rEMOLCADOR_IDParameter);
        }
    
        public virtual ObjectResult<SP_LISTADO_CONTROLES_Result> SP_LISTADO_CONTROLES(Nullable<int> lOCALIDAD, Nullable<int> aGENTE_ID)
        {
            var lOCALIDADParameter = lOCALIDAD.HasValue ?
                new ObjectParameter("LOCALIDAD", lOCALIDAD) :
                new ObjectParameter("LOCALIDAD", typeof(int));
    
            var aGENTE_IDParameter = aGENTE_ID.HasValue ?
                new ObjectParameter("AGENTE_ID", aGENTE_ID) :
                new ObjectParameter("AGENTE_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_LISTADO_CONTROLES_Result>("SP_LISTADO_CONTROLES", lOCALIDADParameter, aGENTE_IDParameter);
        }
    }
}
