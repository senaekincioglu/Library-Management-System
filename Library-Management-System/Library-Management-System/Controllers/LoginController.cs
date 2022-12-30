using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        devrimme_senaEntities db = new devrimme_senaEntities();
        [HttpGet]
        public ActionResult LogIn()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LogIn(Member p)
        {
            if(!ModelState.IsValid)
            {
                return View("LogIn");
            }
            db.Member.Add(p);
            db.SaveChanges();
            return View();
            
        }
    }
}