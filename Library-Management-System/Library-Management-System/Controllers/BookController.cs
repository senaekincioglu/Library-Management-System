using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using System.Web.WebPages.Html;
using Library_Management_System.Models.Entity;
using Microsoft.Ajax.Utilities;
using SelectListItem = System.Web.Mvc.SelectListItem;

namespace Library_Management_System.Controllers
{
    public class BookController : Controller
    {
        devrimme_senaEntities db = new devrimme_senaEntities();
       
        public ActionResult Index(string p)

        {
            var kitaplar = from k in db.Book select k;
            if(!string.IsNullOrEmpty(p))
            {
                kitaplar = kitaplar.Where(m => m.Name.Contains(p));

                return View(kitaplar.ToList());
            }
            //var books = db.Book.ToList();

            return View(kitaplar.ToList());
        }
        [HttpGet]
        public ActionResult AddBook()
        {
            List<SelectListItem> deger1 = (from i in db.Category.ToList() //ilişkili tablolarda geçerli
                                           select new SelectListItem
                                           {
                                               Text = i.Name,
                                               Value = i.Id.ToString()
                                           }).ToList();
            ViewBag.dgr1 = deger1;
            List<SelectListItem> deger2 = (from i in db.Author.ToList()
                                           select new SelectListItem
                                           {
                                               Text = i.Name +  ' ' + i.Surname,
                                               Value = i.Id.ToString()
                                           }).ToList();
            ViewBag.dgr2 = deger2;
                       
                                        
            return View();
        }
        [HttpPost]
        public ActionResult AddBook(Book p)
        {
            var ktg = db.Category.Where(k => k.Id == p.Category.Id).FirstOrDefault();//ilişkili tablolarda geçerli
            var yzr=db.Author.Where(y=>y.Id== p.Author.Id).FirstOrDefault();
            p.Category = ktg;
            p.Author = yzr;
            db.Book.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult DeleteBook(int id)
        {
            var kitap = db.Book.Find(id);
            db.Book.Remove(kitap); 
            db.SaveChanges();    
            return RedirectToAction("Index");  
        }
        public ActionResult BringBook(int id) 
        {
            var ktp=db.Book.Find(id);
            List<SelectListItem> deger1 = (from i in db.Category.ToList() //ilişkili tablolarda geçerli
                                           select new SelectListItem
                                           {
                                               Text = i.Name,
                                               Value = i.Id.ToString()
                                           }).ToList();
            ViewBag.dgr1 = deger1;
            List<SelectListItem> deger2 = (from i in db.Author.ToList()
                                           select new SelectListItem
                                           {
                                               Text = i.Name + ' ' + i.Surname,
                                               Value = i.Id.ToString()
                                           }).ToList();
            ViewBag.dgr2 = deger2;
            return View("BringBook",ktp);//id ye göre getir demek.
        }
        public ActionResult UpdateBook(Book p)
        {
            var kitap = db.Book.Find(p.Id);
            kitap.Name=p.Name;
            kitap.PrintYear=p.PrintYear;
            kitap.Page = p.Page;
            kitap.Publisher = p.Publisher;
            var ktg = db.Category.Where(k => k.Id == p.Category.Id).FirstOrDefault();
            var yzr = db.Author.Where(y => y.Id == p.Author.Id).FirstOrDefault();
            kitap.Category_Id = ktg.Id;
            kitap.Author_Id = yzr.Id;
            db.SaveChanges();
            return RedirectToAction("Index");

        }
    }
}