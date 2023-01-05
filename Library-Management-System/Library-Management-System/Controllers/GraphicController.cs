using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models;

namespace Library_Management_System.Controllers
{
    public class GraphicController : Controller
    {
        // GET: Graphic
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult VisualizeBookResult()
        {
            return Json(liste());
        }
        public  List<Class1>liste()
        {
            List<Class1> cs = new List<Class1>();
            cs.Add(new Class1()
            {
                Publisher = "Güneş",
                    Number = 7

            });
            cs.Add(new Class1()
            {
                Publisher = "Mars",
                Number = 4

            });
            cs.Add(new Class1()
            {
                Publisher = "Jüpiter",
                Number = 6

            });
            return cs;
        }
    }
}