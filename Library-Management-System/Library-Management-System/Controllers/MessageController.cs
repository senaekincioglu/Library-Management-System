using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
namespace Library_Management_System.Controllers
{
    public class MessageController : Controller
    {
        // GET: Message
        devrimme_senaEntities db = new devrimme_senaEntities();
        public ActionResult Index()
        {
            //maile gelen sadece gelen mesajları görüntülesin ve listelesin dediği için bu aşağıdakiler kullanılır.
            var membermail = (string)Session["Mail"].ToString();//maile gelenler yani mail kısmına.
            var message = db.Message.Where(x=>x.Buyer==membermail.ToString()).ToList();//listelesin ama gelen mesajları.
            return View(message);
        }
        [HttpGet]
        public ActionResult NewMessage()
        {
            return View();
        }
        [HttpPost]
        public ActionResult NewMessage(Message t)
        {
            var membermail = (string)Session["Mail"].ToString();
            t.Sender=membermail.ToString(); 
            t.Date=DateTime.Parse(DateTime.Now.ToShortDateString());
            db.Message.Add(t);
            db.SaveChanges();
            return View();
        }
    }
}