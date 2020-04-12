//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Campeonato.Modelos
{
    using System;
    using System.Collections.Generic;
    
    public partial class JUGADOR
    {
        public JUGADOR()
        {
            this.EQUIPO_JUGADOR = new HashSet<EQUIPO_JUGADOR>();
        }
    
        public int ID { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO1 { get; set; }
        public string APELLIDO2 { get; set; }
        public int IDENTIFICACION { get; set; }
        public int EDAD { get; set; }
        public System.DateTime FECHA_NACIMIENTO { get; set; }
        public int TELEFONO_PRINCIPAL { get; set; }
        public Nullable<int> TELEFONO_SECUNDARIO { get; set; }
        public string CORREO_ELECTRONICO { get; set; }
        public int ID_PROVINCIA { get; set; }
        public int ID_CANTON { get; set; }
        public int ID_DISTRITO { get; set; }
        public string GENERO { get; set; }
        public string DIRECCION { get; set; }
    
        public virtual ICollection<EQUIPO_JUGADOR> EQUIPO_JUGADOR { get; set; }
        public virtual Canton Canton { get; set; }
        public virtual Distrito Distrito { get; set; }
        public virtual Provincia Provincia { get; set; }
    }
}
