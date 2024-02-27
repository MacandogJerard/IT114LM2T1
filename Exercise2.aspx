<table>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <br/>
        <asp:TextBox ID="fname" runat="server" ></asp:TextBox>
        </br>

        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <br/>
        <asp:TextBox ID="lname" runat="server" ></asp:TextBox>
        </br>

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
        <br/>
        <asp:TextBox ID="age" runat="server" TextMode="Number"></asp:TextBox>
        </br>
        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:Label ID="Label4" runat="server" Text="Ticket Type"></asp:Label>
        </br>
        <asp:DropDownList ID="TicketType" runat="server">

        <asp:ListItem Selected="True">Select a Ticket Type</asp:ListItem>
        <asp:ListItem>Starter</asp:ListItem>
        <asp:ListItem>General</asp:ListItem>
        <asp:ListItem>Admissions</asp:ListItem>
        <asp:ListItem>Gold</asp:ListItem>
        <asp:ListItem>VIP</asp:ListItem>

        </asp:DropDownList>
        </br>

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
         </br>
         <asp:Label ID="Label5" runat="server" Text="Day of Attendance"></asp:Label>
         <asp:RadioButtonList ID ="Attend" runat="server">

         <asp:ListItem ID="Day1Only">Day 1 Only</asp:ListItem>
         <asp:ListItem ID="Day2Only">Day 2 Only</asp:ListItem>
         <asp:ListItem ID="BothDays">Both Day 1 and 2</asp:ListItem>

         </asp:RadioButtonList>
         </br>

        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
         <asp:Label ID="Label6" runat="server" Text="Artists"></asp:Label>
         <br/>

         <asp:CheckBoxList ID="Performers" runat="server">

        <asp:ListItem ID="FLow">Heb</asp:ListItem>
        <asp:ListItem ID="Hev">Flow</asp:ListItem>

        </asp:CheckBoxList>
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
        </br>
        <asp:Label ID="Label7" runat="server" Text="Proof Of Payment"></asp:Label>
        </br>
        <asp:FileUpload ID="PaymentProof" runat="server" Accept=".jpg,.png" />
    </form>
</body>
</html>
