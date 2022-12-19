using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Library_Management_System.Models.Entity;
namespace Library_Management_System.Controllers
{
    public class EmployeeController : Controller
    {
        devrimme_senaEntities db = new devrimme_senaEntities();
        // GET: Employee
        public ActionResult Index()
        {
            var degerler = db.Employee.ToList();
            return View(degerler);
            
        }
    }
}