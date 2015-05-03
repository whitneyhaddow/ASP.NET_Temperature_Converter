<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Converter</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultfocus = "ddlFrom" defaultbutton ="btnConvert" >
    <div class ="container">
    
            <span class="titleFont">Temperature Converter<br />
            </span>
            <div class="left most">
                <img alt="Thermometer" class="image" src="thermometer.jpg" />
            </div>
            <div class = "left calculator">
                <table class="table">
                    <tr>
                        <td>From:</td>
                        <td>To:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlFrom" CssClass="dropdown" runat="server" TabIndex="1">
                                <asp:ListItem Text="Celsius" />
                                <asp:ListItem Text="Fahrenheit" />
                                <asp:ListItem Text="Kelvin" />
                            </asp:DropDownList>
                        </td>
                        <td><asp:DropDownList ID="ddlTo" CssClass="dropdown" runat="server" TabIndex="2">                        
                                <asp:ListItem Text="Fahrenheit" />
                                <asp:ListItem Text="Kelvin" />
                                <asp:ListItem Text="Celsius" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Input temperature:</td>
                        <td>
                            <asp:TextBox ID="txtInTemp" runat="server" TabIndex="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInTemp" Display="Dynamic" ErrorMessage="Please enter a temperature. " ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtInTemp" Display="Dynamic" ErrorMessage="Please enter a number between <br /> -1000 and 1000." MaximumValue="1000" MinimumValue="-1000" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Output temperature:</td>
                        <td> &nbsp;</td>
                    </tr>
                    <tr>
                        <td id="tallrow" colspan="2">
                            <div class="center" dir="auto">
                            <asp:Label ID="lblOutTemp" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnConvert" CssClass="button" runat="server" Text="Convert" OnClick="btnConvert_Click" TabIndex="4" />
                        </td>
                        <td>
                            <asp:Button ID="btnClear" CssClass="button" runat="server" OnClick="btnClear_Click" Text="Clear" TabIndex="5" />
                        </td>
                    </tr>
                </table>
            </div>
       <div class="clear"></div>
       <div class="center" id="footer" dir="ltr">Photo courtesy of http://www.swifttips.com/preview/Temperatures (2015). </div>
       <div class="clear"></div>
      </div>
    </form>
</body>
</html>
