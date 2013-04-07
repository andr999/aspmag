using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace DataCashLib
{
    public class CardTxnRequestClass
    {
        [XmlElement("method")]
        public string Method;
        [XmlElement("Card")]
        public CardClass Card = new CardClass();
    }
}
