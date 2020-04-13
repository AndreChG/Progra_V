using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Campeonato.Modelos;

namespace Campeonato.Formularios
{
    public partial class JugadorModifica : System.Web.UI.Page
    {
        BD_TORNEOEntities2 modelo = new BD_TORNEOEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack==false )
            {
                this.CargaDatosEditar();
            }
        }
        void CargaProvincias()
        {
            List<sp_RetornaProvincias_Result> Provincias =
            this.modelo.sp_RetornaProvincias(null, null).ToList();
            this.ddlprovincia.DataSource = Provincias;
            this.ddlprovincia.DataBind();
            this.ddlprovincia.Items.Insert(0, new ListItem("Por favor seleccione una provincia", ""));
            this.ddlprovincia.SelectedValue = "";
        }
        void CargaCantones()
        {
            int id_provincia = Convert.ToInt16(this.ddlprovincia.SelectedValue);
            List<sp_RetornaCantones_Result> Cantones =
            this.modelo.sp_RetornaCantones(null, id_provincia).ToList();
            this.ddlcanton.DataSource = Cantones;
            this.ddlcanton.DataBind();
            this.ddlcanton.Items.Insert(0, new ListItem("Por favor seleccione un cantón", ""));
            this.ddlcanton.SelectedValue = "";
        }
        void CargaDistritos()
        {
            int id_Canton = Convert.ToInt16(this.ddlcanton.SelectedValue);
            List<sp_RetornaDistritos_Result> Cantones =
            this.modelo.sp_RetornaDistritos(null, id_Canton).ToList();
            this.ddldistrito.DataSource = Cantones;
            this.ddldistrito.DataBind();
            this.ddldistrito.Items.Insert(0, new ListItem("Por favor seleccione un cantón", ""));
            this.ddldistrito.SelectedValue = "";
        }
        protected void ddlprovincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargaCantones();
        }

        protected void ddlcanton_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargaDistritos();
        }

        protected void ddldistrito_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnnuevojugador_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                //CreaJugador();
            }
        }

        void CargaDatosEditar()
        {
            string datos = this.Request.QueryString["IDENTIFICACION"];
            if (string.IsNullOrEmpty(datos))
            {
                this.lberrorinserta.Text = "Parametro nulo";
            }
            else
            {
                int identificacion = Convert.ToInt16(datos);
                
            }
        }
    }
}