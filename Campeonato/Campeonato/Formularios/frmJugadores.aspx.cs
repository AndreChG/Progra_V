using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Campeonato.Modelos;

namespace Campeonato.Formularios
{
    public partial class frmJugadores : System.Web.UI.Page
    {
        BD_TORNEOEntities modelo = new BD_TORNEOEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.CargaProvincias();
            }
            
        }

        void CargaProvincias ()
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
                CreaJugador();
            }
        }

        void CreaJugador ()
        {
            int id_provincia, id_canton, id_distrito = 0;
            id_provincia = Convert.ToInt16(this.ddlprovincia.SelectedValue);
            id_canton = Convert.ToInt16(this.ddlcanton.SelectedValue);
            id_distrito = Convert.ToInt16(this.ddldistrito.SelectedValue);

            int registros_afect = 0;
            try
            {
                registros_afect = this.modelo.sp_InsertaNuevoJugador
                    (Convert.ToInt16(this.txtcedula.Text), this.txtgenero.Text, Convert.ToDateTime(this.txtfechanacimiento.Text),
                    this.txtnombre.Text, this.txtapellido1.Text, this.txtapellido2.Text, Convert.ToInt16(this.txttel1.Text),
                    Convert.ToInt16(this.txttel2.Text), this.txtemail.Text, id_provincia, id_canton, id_distrito,
                    Convert.ToInt16(this.txtedad.Text),
                    this.txtdireccion.Text
                    );
            }
            catch ( Exception error)
            {

                this.lberrorinserta.Text="Erro al insertar registro " + error.Message;
            }
            if (registros_afect > 0)
            
                this.lberrorinserta.Text = "Registro agregado ";
            
            else
                this.lberrorinserta.Text = "No se pudo insertar el registro ";
        }
    }
}