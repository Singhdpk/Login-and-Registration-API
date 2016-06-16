using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using UnderstandingWebAPI.Models;

namespace UnderstandingWebAPI.Controllers
{
    public class StudentController : ApiController
    {
        [HttpPost] 
        #region CreateNewStudent
        public IHttpActionResult CreateNewStudent(StudentDetail objStudentDetail)
        {
            if (objStudentDetail.Name != null)
            {
                if (!ModelState.IsValid)
                return BadRequest("Invalid StudentDetial");
                   int id;
                bool isCreated = objStudentDetail.CreateNewStudent(objStudentDetail, out id);
                if (isCreated == true)
                   return Ok(id);
                return BadRequest("Unable to Create New Student");
                
            }
            return BadRequest("Invalid StudentDetial");
        }
        #endregion

        [HttpPost]
        #region StudentLogin
        public IHttpActionResult StudentLogin(StudentDetail objStudentDetail)
        {
            if(objStudentDetail.Email!=null)
            {
                //if(!ModelState.IsValid)
                //    return BadRequest("Invalid LoginDetails");
                int id;
                bool isLoggedIn = objStudentDetail.StudentLogin(objStudentDetail, out id);
                if (isLoggedIn == true)
                    return Ok(id);
                return BadRequest("Unable to Login");

            }
            return BadRequest("Invalid LoginDetails");
        }
        #endregion

        [HttpPost]
        #region StudentEditDetail
        public IHttpActionResult StudentEditDetail(StudentDetail objStudentDetail)
        {
            if (objStudentDetail.Id != null)
            {
                //if(!ModelState.IsValid)
                //    return BadRequest("Invalid LoginDetails");
                bool isEdited = objStudentDetail.StudentEditDetail(objStudentDetail);
                if (isEdited == true)
                    return Ok();
                return BadRequest("Unable to Edit Student Detail");

            }
            return BadRequest("Invalid Details");
        }
        #endregion
        [HttpPost]
        #region StudentDelete
        public IHttpActionResult StudentDelete(StudentDetail objStudentDetail)
        {
            if (objStudentDetail.Id != 0)
            {
                //if(!ModelState.IsValid)
                //    return BadRequest("Invalid LoginDetails");
                bool isDeleted = objStudentDetail.StudentDeleted(objStudentDetail);
                if (isDeleted == true)
                    return Ok();
                return BadRequest("Unable to Delete Student");

            }
            return BadRequest("Invalid Details");
        }
    }
       #endregion
    }

