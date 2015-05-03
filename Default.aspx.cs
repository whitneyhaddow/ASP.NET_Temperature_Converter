using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    const double KELVIN_CONV = 273.15;

    protected void Page_Load(object sender, EventArgs e)
    {
        //turn off unobtrusive validation
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void btnConvert_Click(object sender, EventArgs e)
    {
        double inputTemp = Convert.ToDouble(txtInTemp.Text);
        double outputTemp;

        switch (ddlTo.SelectedItem.ToString())
        {
            case "Celsius": //converting to celsius
                switch(ddlFrom.SelectedItem.ToString())
                {
                    case "Fahrenheit":
                        outputTemp = (inputTemp - 32) * 5 / 9;
                        break;

                    case "Celsius":
                        outputTemp = inputTemp; 
                        break;

                    default: //kelvin
                        outputTemp = inputTemp - KELVIN_CONV;
                        break;
                }
                lblOutTemp.Text = outputTemp.ToString("n2") + " " + (char)176 + "C";
                break;

            case "Fahrenheit": //converting to fahrenheit
                switch(ddlFrom.SelectedItem.ToString())
                {
                    case "Fahrenheit":
                        outputTemp = inputTemp; 
                        break;

                    case "Celsius":
                        outputTemp = inputTemp * 1.8 + 32;
                        break;

                    default: //kelvin
                        outputTemp = (inputTemp - KELVIN_CONV) * 1.8 + 32;
                        break;
                }
                lblOutTemp.Text = outputTemp.ToString("n2") + " " + (char)176 + "F";
                break;

            default: //convert to kelvin
                switch(ddlFrom.SelectedItem.ToString())
                {
                    case "Fahrenheit":
                        outputTemp = ((inputTemp - 32) * 5 / 9) + KELVIN_CONV; 
                        break;

                    case "Celsius":
                        outputTemp = inputTemp + KELVIN_CONV;
                        break;

                    default: //kelvin
                        outputTemp = inputTemp; 
                        break;
                }
                lblOutTemp.Text = outputTemp.ToString("n2") + " K";
                break;
        }

       
    }

    //Clear all selections and label
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ddlFrom.SelectedIndex = 0;
        ddlTo.SelectedIndex = 0;
        txtInTemp.Text = "";
        lblOutTemp.Text = "";
        ddlFrom.Focus();
    }
}