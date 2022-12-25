using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    public class ShowCaseController : Controller
    {
        // GET: ShowCase
        devrimme_senaEntities1 db=new devrimme_senaEntities1();
        public ActionResult Index()
        {
            var degerler = db.Book.ToList();
            return View(degerler);
        }
    }
}