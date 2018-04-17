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
    public class WeightsController : Controller
    {
        private PCDbEntities db = new PCDbEntities();

        // GET: Weights
        public ActionResult Index(int? id)
        {
            var weights = db.Weights.Include(w => w.Pet);
            if (id.HasValue)
            {
                weights = weights.Where(w => w.PetID == id.Value);

            }

            return View(weights.ToList());
        }

        public PartialViewResult SpecificPetWeights( int? id)
        {
            List < Weight > model = db.Weights.Where(w => w.PetID == id.Value).OrderByDescending(x => x.WeightDate).Take(3).ToList();
            return PartialView("WeightParsh", model);
        }


        // GET: Weights/Create
        public ActionResult Create(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Weight weight = db.Weights.Where(c => c.PetID == id).OrderByDescending(x => x.WeightDate).FirstOrDefault();
            //if (weight == null)
            //{
            //    return HttpNotFound();
            //}
            weight.WeightDate = DateTime.Now;

            return View(weight);
        }

        // POST: Weights/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "WeightID,Weight1,PetID,WeightDate")] Weight weight,int? id)
        {
            if (ModelState.IsValid)
            {
                db.Weights.Add(weight);
                db.SaveChanges();
                return RedirectToAction("Details", "Pets", new { id = weight.PetID });

            }

            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", weight.PetID);
            return View(weight);
        }

        // GET: Weights/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Weight weight = db.Weights.Find(id);
            if (weight == null)
            {
                return HttpNotFound();
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", weight.PetID);
            return View(weight);
        }

        // POST: Weights/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "WeightID,Weight1,PetID,WeightDate")] Weight weight)
        {
            if (ModelState.IsValid)
            {
                db.Entry(weight).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetID = new SelectList(db.Pets, "PetID", "PetName", weight.PetID);
            return View(weight);
        }

        // GET: Weights/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Weight weight = db.Weights.Find(id);
            if (weight == null)
            {
                return HttpNotFound();
            }
            return View(weight);
        }

        // POST: Weights/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Weight weight = db.Weights.Find(id);
            db.Weights.Remove(weight);
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
