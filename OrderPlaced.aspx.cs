﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPlaced : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Set the title of the page
        this.Title = BalloonShopConfiguration.SiteName + " : Order Placed";
    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
    }
}
