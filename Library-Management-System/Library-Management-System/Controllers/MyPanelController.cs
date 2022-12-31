using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Library_Management_System.Controllers
{
    public class MyPanelController : Controller
    {
        // GET: MyPanel
        [Authorize]//giriş işleminde kontrol ettikten sonra panele gidip gitmiceğini kontrol edeceği için bu yazılır.
        public ActionResult Index()
        {
            return View();
        }
    }
}