using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    public class MemberController : Controller
    {
        devrimme_senaEntities db = new devrimme_senaEntities();
        // GET: Member
        public ActionResult Index()
        {
            var degerler = db.Member.ToList();
            return View(degerler);
        }
    }
}