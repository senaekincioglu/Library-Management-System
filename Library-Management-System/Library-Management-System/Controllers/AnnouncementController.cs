using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
using Microsoft.Ajax.Utilities;

namespace Library_Management_System.Controllers
{
    public class AnnouncementController : Controller
    {
        // GET: Announcement
        devrimme_senaEntities db = new devrimme_senaEntities()
;        public ActionResult Index()
        {
            var degerler = db.Announcements.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult NewAnnouncement()
        {
            return View();
        }
        [HttpPost]
        public ActionResult NewAnnouncement(Announcements t)
        {
            db.Announcements.Add(t);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult DeleteAnnouncement(int id)
        {
            var announcement = db.Announcements.Find(id);
            db.Announcements.Remove(announcement);
            db.SaveChanges();
          return RedirectToAction("Index");
        }
        public ActionResult AnnouncementDetail(Announcements p)
        {
            var announcement = db.Announcements.Find(p.Id);
            return View("AnnouncementDetail", announcement);
        }
        public ActionResult UpdateAnnouncement(Announcements t)
        {
            var announcement=db.Announcements.Find(t.Id);
            announcement.CategoryText = t.CategoryText;
            announcement.Contents= t.Contents;  
            announcement.Date=t.Date;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        
    }
}