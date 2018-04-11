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
    public class VaccinationsController : Controller
    {
        private PCDbEntities db = new PCDbEntities();

        // GET: Vaccinations
        public ActionResult Index()
        {
            var vaccinations = db.Vaccinations.Include(v => v.Pet);
            return View(vaccinations.ToList());
        }

        // GET: Vaccinations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vaccination vaccination = db.Vaccinations.Find(id);
            if (vaccination == null)
            {
                return HttpNotFound();
            }
            return View(vaccination);
        }

        // GET: Vaccinations/Create
        public ActionResult Create()
        {
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName");
            return View();
        }

        // POST: Vaccinations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "VaccinationsID,VaccinationType,DateReceived,DueDate,PetID")] Vaccination vaccination)
        {
            if (ModelState.IsValid)
            {
                db.Vaccinations.Add(vaccination);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", vaccination.PetID);
            return View(vaccination);
        }

        // GET: Vaccinations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vaccination vaccination = db.Vaccinations.Find(id);
            if (vaccination == null)
            {
                return HttpNotFound();
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", vaccination.PetID);
            return View(vaccination);
        }

        // POST: Vaccinations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "VaccinationsID,VaccinationType,DateReceived,DueDate,PetID")] Vaccination vaccination)
        {
            if (ModelState.IsValid)
            {
                db.Entry(vaccination).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", vaccination.PetID);
            return View(vaccination);
        }

        // GET: Vaccinations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vaccination vaccination = db.Vaccinations.Find(id);
            if (vaccination == null)
            {
                return HttpNotFound();
            }
            return View(vaccination);
        }

        // POST: Vaccinations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Vaccination vaccination = db.Vaccinations.Find(id);
            db.Vaccinations.Remove(vaccination);
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
