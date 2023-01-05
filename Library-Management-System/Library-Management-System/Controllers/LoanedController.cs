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
        [Authorize(Roles ="A")]
        public ActionResult Index()//kütüphaneden ödünç alınacak hareket tablosuna eklenecek.
        {
            var deger = db.Movement.Where(x => x.TransactionStatus == false).ToList();
            return View(deger);
        }
        [HttpGet]
        public ActionResult LendMe()//kütüphaneden ödünç verilecek hareket tablosuna eklenecek.
        {
            //üyeleri dinamik yapı ile dropdown ile getiriyor.
            List<SelectListItem> deger1 = (from x in db.Member.ToList()
                                           select new SelectListItem
                                           {
                                               Text = x.Name+" "+x.Surname,
                                               Value = x.Id.ToString()
                                           }).ToList();
            List<SelectListItem> deger2 = (from y in db.Book.Where(x=>x.Status==true).ToList()
                                           select new SelectListItem
                                           {
                                               Text = y.Name,
                                               Value = y.Id.ToString()
                                           }).ToList();
            List<SelectListItem> deger3 = (from z in db.Employee.ToList()
                                          select new SelectListItem
                                          {
                                              Text = z.Employees,
                                              Value = z.Id.ToString()
                                          }).ToList();
            ViewBag.dgr1=deger1;
            ViewBag.dgr2 = deger2;
            ViewBag.dgr3 = deger3;
                                        
            return View();
        }

        [HttpPost]
        public ActionResult LendMe(Movement p)
        {
            var d1 = db.Member.Where(x => x.Id == p.Member.Id).FirstOrDefault();
            var d2 = db.Book.Where(y => y.Id == p.Book.Id).FirstOrDefault();
            var d3 = db.Employee.Where(x => x.Id == p.Employee.Id).FirstOrDefault();
            p.Member = d1;//buraya değer ataması oluyor.
            p.Book = d2;
            p.Employee = d3;
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