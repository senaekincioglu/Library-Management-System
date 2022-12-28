using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    public class ProcessController : Controller
    {
        // GET: Process
        devrimme_senaEntities db=new devrimme_senaEntities();
        public ActionResult Index()
        {
            var deger = db.Movement.Where(x => x.TransactionStatus == true).ToList();
            return View(deger); //durumu true olanları listele ve göster.
        }
    }
}