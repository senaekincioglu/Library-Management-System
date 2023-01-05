using Library_Management_System.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Library_Management_System.Controllers
{
    [Authorize]//burda yazınca bu sayfaya ait hepsini kapsar.
    public class MyPanelController : Controller
    {

        // GET: MyPanel
        devrimme_senaEntities db=new devrimme_senaEntities();
        [HttpGet]
       /* [Authorize]*///giriş işleminde kontrol ettikten sonra panele gidip gitmiceğini kontrol edeceği için bu yazılır.
        public ActionResult Index()
        {
            var uyemail = (string)Session["Mail"];
            //var degerler = db.Member.FirstOrDefault(z => z.Mail == uyemail);
            var degerler = db.Announcements.ToList();
            var d1=db.Member.Where(x=>x.Mail==uyemail).Select(y=>y.Name).FirstOrDefault();//ismi çekmek için kullanılır.viewbag ile view kısmına yazdırılır.
            ViewBag.d1 = d1;
            var d2 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.Surname).FirstOrDefault();
            ViewBag.d2 = d2;
            var d3 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.Photograph).FirstOrDefault();
            ViewBag.d3 = d3;
            var d4 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.UserName).FirstOrDefault();
            ViewBag.d4 = d4;
            var d5 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.School).FirstOrDefault();
            ViewBag.d5 = d5;
            var d6 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.Telephone).FirstOrDefault();
            ViewBag.d6 = d6;
            var d7 = db.Member.Where(x => x.Mail == uyemail).Select(y => y.Mail).FirstOrDefault();
            ViewBag.d7 = d7;
            var uyeid=db.Member.Where(x=>x.Mail==uyemail).Select(y=>y.Id).FirstOrDefault();
            var d8 = db.Movement.Where(x => x.Member_Id == uyeid).Count();
            ViewBag.d8 = d8;
            var d9 = db.Message.Where(x => x.Buyer == uyemail).Count();
            ViewBag.d9 = d9;
            var d10 = db.Announcements.Count();
            ViewBag.d10 = d10;

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
        //[Authorize]
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
        public PartialViewResult Partial1()//parçalı view kullanıyor. Duyurular kısmını ayrı ayrı çekmek için.
        {
            return PartialView();
        }
        public PartialViewResult Partial2()
        {
            var kullanici = (string)Session["Mail"];
            var id = db.Member.Where(x => x.Mail == kullanici).Select(y => y.Id).FirstOrDefault();
            var findmember = db.Member.Find(id);
            return PartialView("Partial2",findmember);
        }
    }
}