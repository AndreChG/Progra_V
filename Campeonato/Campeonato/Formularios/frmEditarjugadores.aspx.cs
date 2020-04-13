using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Campeonato.Modelos;

namespace Campeonato.Formularios
{
    public partial class frmEditarjugadores : System.Web.UI.Page
    {
        BD_TORNEO_Entities modelo = new BD_TORNEO_Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                CargaDatosGrid();
            }

        }

        void CargaDatosGrid()
        {
            List<sp_Selecciona_Jugadores_2_Result> sp_Resultado =
               this.modelo.sp_Selecciona_Jugadores_2(this.txtnombrebuscar.Text, 
               this.txtapellidobuscar.Text).ToList();

            this.gvwjugadores.DataSource = sp_Resultado;
            this.gvwjugadores.DataBind();
        }

        protected void gvwjugadores_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvwjugadores.PageIndex = e.NewPageIndex;
            this.CargaDatosGrid();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            List<sp_Selecciona_Jugadores_2_Result> sp_Resultado =
               this.modelo.sp_Selecciona_Jugadores_2(this.txtnombrebuscar.Text,
               this.txtapellidobuscar.Text).ToList();

            this.gvwjugadores.DataSource = sp_Resultado;
            this.gvwjugadores.DataBind();
        }
    }   
}