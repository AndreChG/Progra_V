using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Campeonato.Modelos;

namespace Campeonato.Formularios
{
    public partial class frmSesion : System.Web.UI.Page
    {
        BD_TORNEOEntities modelo = new BD_TORNEOEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            if  (this.Page.IsValid)
            { 
                this.valida_autenticacion();
            }
        }

        void valida_autenticacion()
        {
            sp_RetornaUsuarioCorreoPwd_Result resultadoSp =
                this.modelo.sp_RetornaUsuarioCorreoPwd(this.txtCorreo.Text, this.txtContrasena.Text).
                FirstOrDefault();
            if (resultadoSp == null)
            {
                this.lblResultado.Text = "Datos incorrectos";
                this.Session.Add("nombreusuario", null);
                this.Session.Add("idusuario", null);
                this.Session.Add("usuariologeado", null);
            }
            else
            {
                this.Session.Add("nombreusuario", resultadoSp.nombreCompleto);
                this.Session.Add("idusuario", resultadoSp.id_Usuario);
                this.Session.Add("tipousuario", resultadoSp.tipoUsuario);
                this.Session.Add("usuariologeado", true);
                this.Response.Redirect("~/Formularios/frmMantenimiento.aspx");
            }
        }
    }
}