using Library_Management_System.Models.Entity;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Library_Management_System.Controllers
{
    public class SettingsController : Controller
    {
        // GET: Settings
        devrimme_senaEntities db = new devrimme_senaEntities();
        public ActionResult Index()
        {
            var users = db.Admin.ToList();
            return View(users);
        }
        public ActionResult Index2()
        {
            var users = db.Admin.ToList();
            return View(users);
        }
        [HttpGet]
        public ActionResult NewAdmin()
        {
            return View();
        }
        [HttpPost]
        public ActionResult NewAdmin(Admin t)
        {
            db.Admin.Add(t);
            db.SaveChanges();
            return RedirectToAction("Index2");
        }
        public ActionResult DeleteAdmin(int id)
        {
            var admin = db.Admin.Find(id);
            db.Admin.Remove(admin);
            db.SaveChanges();
            return RedirectToAction("Index2");
        }
        [HttpGet]
        public ActionResult UpdateAdmin(int id)
        {
            var admin = db.Admin.Find(id);
            return View("UpdateAdmin","Index");
        }
        [HttpPost]
        public ActionResult UpdateAdmin(Admin p)
        {
            var admin = db.Admin.Find(p.Id);
            admin.UserName = p.UserName;
            admin.Password=p.Password;
            admin.Authority= p.Authority;
            db.SaveChanges();

            return RedirectToAction("Index2");
        }
    }

}