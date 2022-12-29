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
            var deger = db.Movement.Where(x => x.TransactionStatus == false).ToList();
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
        public ActionResult LoanReturn(Movement p )//kitabı iade et kısmıdır. index sayfasında kitabı iade et butonuna tıklandığında çalışacak kısımdır. ve normalde hareket tablosuna eklenmişti hareket tablosundan alacağın kitabın id sini tutar 
        {
            var odn = db.Movement.Find(p.Id);
            DateTime d1 = DateTime.Parse(odn.FinishDate.ToString());
            DateTime d2=Convert.ToDateTime(DateTime.Now.ToShortDateString());
            TimeSpan d3 = d2 - d1;
            ViewBag.dgr = d3.TotalDays;
            return View("LoanReturn", odn);
        }
        public ActionResult LoanUpdate(Movement p)
        {
            var hrk = db.Movement.Find(p.Id);
            hrk.BringMemberDate = p.BringMemberDate;
            hrk.TransactionStatus = true;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}