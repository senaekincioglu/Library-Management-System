using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
using PagedList;
using PagedList.Mvc;

namespace Library_Management_System.Controllers
{
    public class MemberController : Controller
    {
        devrimme_senaEntities db = new devrimme_senaEntities();
        // GET: Member
        public ActionResult Index(int sayfa = 1)
        {
            //var degerler = db.Member.ToList();
            var degerler = db.Member.ToList().ToPagedList(sayfa, 3);
            return View(degerler);
        }
        [HttpGet]
        public ActionResult AddMember()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddMember(Member p)
        {
            if (!ModelState.IsValid) //eğer boşsa bunu yapıyor.
            {
                return View("AddMember");
            }
            db.Member.Add(p);//sağlandıysa bu işlemler gerçekleştirsin.
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }

}
