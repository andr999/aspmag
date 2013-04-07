using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace DataCashLib
{
    public class AuthenticationClass
    {
        [XmlElement("password")]
        public string Password;
        [XmlElement("client")]
        public string Client;
    }
}
