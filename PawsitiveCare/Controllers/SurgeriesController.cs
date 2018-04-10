using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PawsitiveCare;

namespace PawsitiveCare.Controllers
{
    [Authorize]
    public class SurgeriesController : Controller
    {
        private PCDbEntities db = new PCDbEntities();

        // GET: Surgeries
        public ActionResult Index()
        {
            var surgeries = db.Surgeries.Include(s => s.Pet);
            return View(surgeries.ToList());
        }

        // GET: Surgeries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Surgery surgery = db.Surgeries.Find(id);
            if (surgery == null)
            {
                return HttpNotFound();
            }
            return View(surgery);
        }

        // GET: Surgeries/Create
        public ActionResult Create()
        {
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName");
            return View();
        }

        // POST: Surgeries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SurgeryID,SurgeryDate,SurgeryDescription,PetID")] Surgery surgery)
        {
            if (ModelState.IsValid)
            {
                db.Surgeries.Add(surgery);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", surgery.PetID);
            return View(surgery);
        }

        // GET: Surgeries/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Surgery surgery = db.Surgeries.Find(id);
            if (surgery == null)
            {
                return HttpNotFound();
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", surgery.PetID);
            return View(surgery);
        }

        // POST: Surgeries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SurgeryID,SurgeryDate,SurgeryDescription,PetID")] Surgery surgery)
        {
            if (ModelState.IsValid)
            {
                db.Entry(surgery).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", surgery.PetID);
            return View(surgery);
        }

        // GET: Surgeries/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Surgery surgery = db.Surgeries.Find(id);
            if (surgery == null)
            {
                return HttpNotFound();
            }
            return View(surgery);
        }

        // POST: Surgeries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Surgery surgery = db.Surgeries.Find(id);
            db.Surgeries.Remove(surgery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
