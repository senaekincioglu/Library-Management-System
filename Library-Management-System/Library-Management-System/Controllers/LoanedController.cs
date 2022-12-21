
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
namespace Library_Management_System.Controllers
{
    public class LoanedController : Controller
    {
        // GET: Loaned
        devrimme_senaEntities db = new devrimme_senaEntities();
        public ActionResult Index()//kütüphaneden ödünç alınacak hareket tablosuna eklenecek.
        {
            var deger = db.Movement.ToList();
            return View(deger);
        }
        [HttpGet]
        public ActionResult LendMe()//kütüphaneden ödünç verilecek hareket tablosuna eklenecek.
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