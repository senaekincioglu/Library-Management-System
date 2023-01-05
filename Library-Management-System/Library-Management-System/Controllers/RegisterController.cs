using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    [AllowAnonymous]
    public class RegisterController : Controller
    {
        // GET: Register
        
        devrimme_senaEntities db = new devrimme_senaEntities();
        [HttpGet]
        public ActionResult Record()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Record(Member p)
        {
            if(!ModelState.IsValid)
            {
                return View("Record");
            }
            db.Member.Add(p);
            db.SaveChanges();
            return View();
        }
    }
}