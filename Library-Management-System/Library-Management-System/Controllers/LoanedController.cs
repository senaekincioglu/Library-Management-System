using Library_Management_System.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Library_Management_System.Models.Entity;
using System.Web.Mvc;


namespace Library_Management_System.Controllers
{
    public class LoanedController : Controller
    {
        // GET: Loaned
        devrimme_senaEntities db=new devrimme_senaEntities();   
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LendMe()//kütüphaneden ödünç verilecek
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult LendMe(Movement p) 
        {
            db.Movement.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}