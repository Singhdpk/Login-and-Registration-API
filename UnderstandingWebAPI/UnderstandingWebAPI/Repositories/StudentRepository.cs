using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UnderstandingWebAPI.Models;

namespace UnderstandingWebAPI.Repositories
{
    public class StudentRepository
    {
        #region CreateNewStudent
        public bool CreateNewStudent(StudentDetail objStudentDetail, out int isStudentId)
        {
            using (StudentPortalEntities db = new StudentPortalEntities())
            {
                try
                {
                    db.StudentDetails.Add(objStudentDetail);
                    db.SaveChanges();
                    isStudentId = objStudentDetail.Id;
                    return true;
                }

                catch (Exception ex)
                {
                    isStudentId = 0;
                    return false;
                }
            }

        }
        #endregion

        #region StudentLogin
        public bool StudentLogin(StudentDetail objStudentDetail, out int isStudentId)
        {
            using (StudentPortalEntities db = new StudentPortalEntities())
            {
                try
                {
                    var student = (from x in db.StudentDetails
                                   where x.Email == objStudentDetail.Email
                                   select x).FirstOrDefault();
                    if (student != null)
                    {
                        if (student.Password == objStudentDetail.Password)
                        {
                            isStudentId = student.Id;
                            return true;
                        }
                    }
                    isStudentId = 0;
                    return false;
                }
                catch (Exception ex)
                {
                    isStudentId = 0;
                    return false;
                }
            }
        }
        #endregion

        #region StudentEditDetail
        public bool StudentEditDetail(StudentDetail objStudentDetail)
        {
            using (StudentPortalEntities db = new StudentPortalEntities())
                try {
                    var existingStudentDetail = db.StudentDetails.Find(objStudentDetail.Id);

                    if (existingStudentDetail != null)
                    {
                        db.Entry(existingStudentDetail).CurrentValues.SetValues(objStudentDetail);
                        db.SaveChanges();
                        return true;
                    }
                    return false;
                }
                catch(Exception ex)
                {
                    return false;

                }
        }
        #endregion
        #region StudentDeleted
        public bool StudentDeleted(StudentDetail objStudentDetail)
        {
            using (StudentPortalEntities db = new StudentPortalEntities())
                try
                {
                    var toBeDeleted = db.StudentDetails.Find(objStudentDetail.Id);
                    db.StudentDetails.Remove(toBeDeleted);
                    db.SaveChanges();
                    return true;
                }
                catch(Exception ex)
                {
                    return false;
                }
        }
        #endregion
    }
}
