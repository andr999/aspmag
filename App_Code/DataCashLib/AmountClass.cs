using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace DataCashLib
{
    public class AmountClass
    {
        [XmlAttribute("currency")]
        public string Currency;
        [XmlText()]
        public string Amount;
    }
}
