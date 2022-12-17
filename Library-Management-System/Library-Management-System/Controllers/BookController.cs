using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    public class BookController : Controller
    {
        devrimme_senaEntities db = new devrimme_senaEntities();
        // GET: Book
        public ActionResult Index()
        {
            var books = db.Book.ToList();

            return View(books);
        }
    }
}