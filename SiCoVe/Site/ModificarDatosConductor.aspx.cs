﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseSiCoVe;

namespace SiCoVe
{
    public partial class ModificarDatosConductor : SiCoVeMaster
    {
        sicoveEntities sicove = new sicoveEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack) {

                CargarCombos();

                var id = 0;
                if (Session["id"] != null)
                    id = Convert.ToInt32(Session["id"].ToString());

                persona per = (from a in sicove.personas where a.id == id select a).FirstOrDefault();

                txtApellido.Text = per.apellido;
                txtNombre.Text = per.nombre;
                txtNumDocumento.Text = Convert.ToString(per.dni);
                ddlSexo.SelectedValue = Convert.ToString(per.sexo_id);
                ddlNacionalidad.SelectedValue = Convert.ToString(per.nacionalidad_id);
                ddlProvincia.SelectedValue = Convert.ToString(per.provincia_id);
                ddlLocalidad.SelectedValue = Convert.ToString(per.localidad_id);
                txtDomicilio.Text = per.domicilio;
                txtPiso.Text = Convert.ToString(per.piso);
                txtDepartamento.Text = per.departamento;
                txtNumPuerta.Text = per.nro_puerta;
                txtFechaNacimiento.Text = Convert.ToString(per.fecha_nacimiento);
                txtLugarNacimiento.Text = per.lugar_nacimiento;
                cckrdatoconductor.Checked = per.flag_conductor;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).FirstOrDefault();

                txtEMail.Text = usu.email;
              

                agente_transito at = (from t in sicove.agente_transito where t.usuario_id == usu.id select t).FirstOrDefault();

                
            }

        }

        private void CargarCombos()
        {
            CargarSexo();
            CargarNacionalidad();
            CargarProvincia();
            CargarLocalidad();
        }

        private void CargarSexo()
        {

            var sexo = sicove.sexoes.ToList();

            ddlSexo.DataTextField = "descripcion";
            ddlSexo.DataValueField = "id";
            ddlSexo.DataSource = sexo;
            ddlSexo.DataBind();
        }

        private void CargarNacionalidad()
        {
            var nacionalidades = sicove.nacionalidads.ToList();
            ddlNacionalidad.DataTextField = "descripcion";
            ddlNacionalidad.DataValueField = "id";
            ddlNacionalidad.DataSource = nacionalidades;
            ddlNacionalidad.DataBind();

        }
        private void CargarProvincia()
        {
            var provincia = sicove.provincias.ToList();
            ddlProvincia.DataTextField = "descripcion";
            ddlProvincia.DataValueField = "id";
            ddlProvincia.DataSource = provincia;
            ddlProvincia.DataBind();
        }

        private void CargarLocalidad()
        {
            var localidad = sicove.localidads.ToList();
            ddlLocalidad.DataTextField = "descripcion";
            ddlLocalidad.DataValueField = "id";
            ddlLocalidad.DataSource = localidad;
            ddlLocalidad.DataBind();
        }

        protected void btnRegistrarMDC_Click(object sender, EventArgs e)
        {
            var id = 0;
            if (Session["id"] != null)
                id = Convert.ToInt32(Session["id"].ToString());

            bool result = ActualizarDatosConductor(id);

            if (result)
                Response.Redirect("ListarCoductor.aspx");

        }

        public bool ActualizarDatosConductor(int id)
        {
            bool result = false;

            try
            {

                persona per = (from a in sicove.personas where a.id == id select a).First();

                per.apellido = txtApellido.Text;
                per.nombre = txtNombre.Text;
                per.dni = Convert.ToInt32(txtNumDocumento.Text);
                per.sexo_id = Convert.ToInt32(ddlSexo.SelectedValue);
                per.nacionalidad_id = Convert.ToInt32(ddlNacionalidad.SelectedValue);
                per.provincia_id = Convert.ToInt32(ddlProvincia.SelectedValue);
                ddlLocalidad.SelectedValue = Convert.ToString(per.localidad_id);
                per.domicilio = txtDomicilio.Text;
                per.piso = Convert.ToInt16(txtPiso.Text);
                per.departamento = txtDepartamento.Text;
                per.nro_puerta = txtNumPuerta.Text;
                per.fecha_nacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
                per.lugar_nacimiento = txtLugarNacimiento.Text;
                per.flag_conductor = cckrdatoconductor.Checked;

                usuario usu = (from u in sicove.usuarios where u.persona_id == per.id select u).First();

                usu.email = txtEMail.Text;
                
                agente_transito at = (from t in sicove.agente_transito where t.usuario_id == usu.id select t).First();

                

                sicove.SaveChanges();

                return result = true;
            }
            catch (Exception ex)
            {
                LblError.Text = "No se pudieron actualizar los datos del agente de transito, verifique los datos ingresados.";
            }
            return result;
        }
    }
}