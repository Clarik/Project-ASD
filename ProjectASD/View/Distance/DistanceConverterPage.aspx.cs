﻿using ProjectASD.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASD.View.Distance
{
    public partial class DistanceConverterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> unitList = TypeController.getDistanceList();
                ddlFrom.DataSource = unitList;
                ddlFrom.DataBind();
                ddlTo.DataSource = unitList;
                ddlTo.DataBind();
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string input_number = number.Text;
            if (input_number.Contains("."))
                input_number = input_number.Replace(".", ",");
            InputMessage.Text = TypeController.numberCheck(input_number);
            if (InputMessage.Text.Length != 0)
            {
                txtAnswer.Text = "None";
                return;
            }
            double num = double.Parse(input_number);
            double result = TypeController.calculate(num, ddlFrom.SelectedIndex, ddlTo.SelectedIndex);

            txtAnswer.Text = resultString(num, result);
        }

        string resultString(double num, double result)
        {
            return txtAnswer.Text = num.ToString() + " " + ddlFrom.SelectedValue + " = " + result.ToString() + " " + ddlTo.SelectedValue;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            number.Text = "";
            InputMessage.Text = "Input Number";
            txtAnswer.Text = "";
        }

        protected void btnSwap_Click(object sender, EventArgs e)
        {
            var temp = ddlFrom.SelectedValue;
            ddlFrom.SelectedValue = ddlTo.SelectedValue;
            ddlTo.SelectedValue = temp;
        }
    }
}