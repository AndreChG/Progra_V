using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Campeonato.Formularios;

namespace Campeonato.Formularios
{
    public partial class Campeonato : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(this.Session["usuariologeado"]) != true)
            {
                this.Mantenimiento.Visible = false;
            }
            
        }

        void VerificaPermisos()
        {
            if (Convert.ToString(this.Session["tipousuario"]) == "ADM");
            {
                this.Mantenimiento.Visible = true;
            }
        }
       
    }
}