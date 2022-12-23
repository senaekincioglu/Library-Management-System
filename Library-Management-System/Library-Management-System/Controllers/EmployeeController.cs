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
        devrimme_senaEntities1 db = new devrimme_senaEntities1();
        // GET: Employee
        public ActionResult Index()
        {
            var degerler = db.Employee.ToList();
            return View(degerler);
            
        }
        [HttpGet]
        public ActionResult AddEmployee()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddEmployee(Employee p) 
        {
            if(!ModelState.IsValid) //eğer boşsa bunu yapıyor.
            {
                return View("AddEmployee");
            }
            db.Employee.Add(p);//sağlandıysa bu işlemler gerçekleştirsin.
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult DeleteEmployee(int id) 
        {
            var person = db.Employee.Find(id);
            db.Employee.Remove(person);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult BringEmployee(int id) 
        {
            var prs = db.Employee.Find(id);
            return View("BringEmployee", prs);
        }
        public ActionResult UpdateEmployee(Employee p)
        {
            var prs = db.Employee.Find(p.Id);
            prs.Employees = p.Employees;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}