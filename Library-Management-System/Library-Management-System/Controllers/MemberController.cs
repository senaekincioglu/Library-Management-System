﻿using System;
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
        devrimme_senaEntities1 db = new devrimme_senaEntities1();
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
        public ActionResult DeleteMember(int id) 
        {
            var uye = db.Member.Find(id);
            db.Member.Remove(uye);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult BringMember(int id)
        {
            var uye = db.Member.Find(id);
            return View("BringMember", uye);
        }
        public ActionResult UpdateMember(Member p)
        {
            var uye = db.Member.Find(p.Id);
            uye.Name = p.Name;
            uye.Surname = p.Surname;
            uye.Mail = p.Mail;
            uye.UserName = p.UserName;
            uye.Password = p.Password;
            uye.School = p.School;
            uye.Telephone = p.Telephone;
            uye.Photograph = p.Photograph;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }

}
