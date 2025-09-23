using System;

namespace webOnpe_webForms.Pages
{
    public partial class actas_numero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Visible = fvActa.Visible = false;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            fvActa.DataSource = new Controllers.OnpeController().getActaByNumero(nroMesa.Text);
            fvActa.DataBind();
            fvActa.Visible = true;
        }
    }
}