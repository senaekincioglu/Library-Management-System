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
        devrimme_senaEntities1 db = new devrimme_senaEntities1();
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
            if(!ModelState.IsValid)//eğer ki modelstate nin yani model üzerinde yapılmış olan geçerleme işlemi ünlemse yani false ise tekrar yazar ekle sayfasına geri döndürsün.
            {
                return View("AddAuthor"); 
            }
            db.Author.Add(p);//if geçerli değilse zaten burdaki işlemleri döndürür.
            db.SaveChanges();
            return RedirectToAction ("Index");
        }
        public ActionResult DeleteAuthor(int id)
        {
            var yazar = db.Author.Find(id);
            db.Author.Remove(yazar);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult BringAuthor(int id)
        {
            var yzr = db.Author.Find(id);
            return View("BringAuthor", yzr);
        }
        public ActionResult UpdateAuthor(Author p)
        {
            var yzr = db.Author.Find(p.Id);
             yzr.Name = p.Name;
            yzr.Surname = p.Surname;
            yzr.Detail = p.Detail;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}