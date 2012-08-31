using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OpenGarage.Models;
using System.Security.Cryptography;
using System.Text;

namespace OpenGarage.Common
{
    public class SecurityProvider
    {
        public static User Login(string emailAddress, string password)
        {
            // connect to database
            DatabaseDataContext db = new DatabaseDataContext();

            // validate user credentials
            var user = db.Users.Where(z => z.EmailAddress == emailAddress &&
                                           z.Password == HashPassword(password)).SingleOrDefault();

            // close connection
            db.Dispose();

            // return user
            return user;
        }

        public static string HashPassword(string input)
        {
            // initialize MD5 instance
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);

            // generate hash
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }

            // return hash as string
            return sb.ToString();
        }
    }
}