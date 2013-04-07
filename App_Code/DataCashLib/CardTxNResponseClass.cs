using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for CardTxNResponseClass
/// </summary>
namespace DataCashLib
{
    public class CardTxnResponseClass
    {
        [XmlElement("card_scheme")]
        public string CardScheme;
        [XmlElement("country")]
        public string Country;
        [XmlElement("issuer")]
        public string Issuer;
        [XmlElement("authcode")]
        public string AuthCode;
    }
}
