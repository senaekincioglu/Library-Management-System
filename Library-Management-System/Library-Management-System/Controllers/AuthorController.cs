using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
namespace Library_Management_System.Controllers
{
    public class AuthorController : Controller
    {
        // GET: Author
        devrimme_senaEntities db = new devrimme_senaEntities();
        public ActionResult Index()
        {
            var degerler = db.Author.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult AddAuthor()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddAuthor(Author p) 
        { 
            db.Author.Add(p);
            db.SaveChanges();
            return RedirectToAction ("Index");
        }
    }
}