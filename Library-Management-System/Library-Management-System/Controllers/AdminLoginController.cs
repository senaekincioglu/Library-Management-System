using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Library_Management_System.Models.Entity;

namespace Library_Management_System.Controllers
{
    [AllowAnonymous]
    public class AdminLoginController : Controller
    {
        // GET: AdminLogin
        devrimme_senaEntities db = new devrimme_senaEntities();
        public ActionResult Login()
        {
            return View();

        }
        [HttpPost]
        public ActionResult Login(Admin p)
        {
            var informations = db.Admin.FirstOrDefault(x => x.UserName == p.UserName && x.Password == p.Password);
            if(informations!=null)
            {
                FormsAuthentication.SetAuthCookie(informations.UserName, false);
                Session["UserName"] = informations.UserName.ToString();
                return RedirectToAction("Index", "Category");
            }
            else
            {
                return View();
            }
        }
           
    }
}