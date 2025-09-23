using System;

namespace webOnpe_webForms.Controllers
{
    public class OnpeController
    {
        Db db = new Db("cnOnpe");

        internal object getActaByNumero(string nroMesa)
        {
            db.Sentencia(string.Format("usp_getGrupoVotacion '{0}'", nroMesa));
            return db.getDataTable();
        }
    }
}