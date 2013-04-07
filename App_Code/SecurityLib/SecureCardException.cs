using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace SecurityLib
{
    /// <summary>
    /// Summary description for SecureCardException
    /// </summary>
    public class SecureCardException : Exception
    {
        public SecureCardException(string message)
            :base(message)
        {
        }
    }
}