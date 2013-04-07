using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

 namespace CommerceLib
  {
    /// <summary>
   /// Standard interface for pipeline sections
  /// </summary>
 public interface IPipelineSection
  {
    void Process(OrderProcessor processor);
     }
}
