using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Data.Sql;

namespace ModelFirstCafe.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        Model1Container baglan = new Model1Container();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SignUp()
        {
            return View();
        }

      

    }
}