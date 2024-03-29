﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmunShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //deletes old shopping carts
    protected void deleteButton_Click(object sender, EventArgs e)
    {
        byte days = byte.Parse(daysList.SelectedItem.Value);
        ShoppingCartAccess.DeleteOldCarts(days);
        countLabel.Text = "The old shopping carts where removed from the database";
    }
    //count old shopping carts
    protected void countButton_Click(object sender, EventArgs e)
    {
        byte days = byte.Parse(daysList.SelectedItem.Value);
        int oldItems = ShoppingCartAccess.CountOldCarts(days);
        if (oldItems == -1)
            countLabel.Text = "Could not count the old shopping carts!";
        else if (oldItems == 0)
            countLabel.Text = "There are no old shopping carts";
        else
            countLabel.Text = "There are" + oldItems.ToString() + "old shopping carts.";

    }
}
