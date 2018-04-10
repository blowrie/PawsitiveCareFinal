﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace PawsitiveCare.Controllers
{

    public class ImagesController : Controller
    {
        private PCDbEntities db = new PCDbEntities();
        // GET: Images
        public ActionResult Add()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Add(Image imageModel)
        {
            string fileName = Path.GetFileNameWithoutExtension(imageModel.ImageFile.FileName);
            string extension = Path.GetExtension(imageModel.ImageFile.FileName);
            fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
            imageModel.ImagePath = "~/Image/" + fileName;
            fileName = Path.Combine(Server.MapPath("~/Image"), fileName);
            imageModel.ImageFile.SaveAs(fileName);
            using (PCDbEntities db = new PCDbEntities())
            {
                db.Images.Add(imageModel);
                db.SaveChanges();
            }

            ModelState.Clear();
            return View();
        }
    }
}