using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
using Library_Management_System.Models.MyClasses;
namespace Library_Management_System.Controllers
{
    public class ShowCaseController : Controller
    {
        // GET: ShowCase
        devrimme_senaEntities1 db=new devrimme_senaEntities1();
        [HttpGet]
        public ActionResult Index()
        {
            Class1 cs = new Class1();
            cs.Deger1 = db.Book.ToList();
            cs.Deger2=db.About.ToList();
            //var degerler = db.Book.ToList();
            return View(cs);
        }
        [HttpPost]
        public ActionResult Index(Contact t)
        {
            db.Contact.Add(t);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}