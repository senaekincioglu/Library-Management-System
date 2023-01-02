using Library_Management_System.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Library_Management_System.Controllers
{
    public class MyPanelController : Controller
    {
        // GET: MyPanel
        devrimme_senaEntities db=new devrimme_senaEntities();
        [HttpGet]
        [Authorize]//giriş işleminde kontrol ettikten sonra panele gidip gitmiceğini kontrol edeceği için bu yazılır.
        public ActionResult Index()
        {
            var uyemail = (string)Session["Mail"];
            var degerler = db.Member.FirstOrDefault(z => z.Mail == uyemail);
            return View(degerler);
        }
        [HttpPost]
        public ActionResult Index2(Member p)
        {
            var kullanici = (string)Session["Mail"];
            var uye = db.Member.FirstOrDefault(x => x.Mail == kullanici);
            uye.Password = p.Password;
            uye.Name = p.Name;
            uye.Photograph = p.Photograph;
            uye.School = p.School;
            uye.UserName = p.UserName;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult MyBooks()
        {
            var kullanici = (string)Session["Mail"];
            var id = db.Member.Where(x => x.Mail == kullanici.ToString()).Select(z=>z.Id).FirstOrDefault();
            var deger = db.Movement.Where(x => x.Member_Id == id).ToList();
            return View(deger); //durumu true olanları listele ve göster.             
        }
        public ActionResult Announcements()
        {
            var announcementList=db.Announcements.ToList();
            return View(announcementList);  
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("LogIn", "Login");
        }
    }
}