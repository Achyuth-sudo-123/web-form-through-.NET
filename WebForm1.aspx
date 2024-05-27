<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="web_Form1_Bank_Account_details.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <h1> Bank Account details</h1>
    <form id="form1" runat="server" >
        <table align="center">
            <tr>
               <td align="left"> 
                    <asp:Label ID="Label1" runat="server" Text="ID:" ></asp:Label >
               </td>
                 <td> 
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label2" runat="server" Text="ACC.NO:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label3" runat="server" Text="FULLNAME:"></asp:Label>
                </td>
                <td> 
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label4" runat="server" Text="IFC-CODE:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                </td>
           </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label5" runat="server" Text="BRANCH:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label6" runat="server" Text="BANK-BALANCE:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label7" runat="server" Text="GENDER:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" >
                    <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>

        </table>
      
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
        </p>
        
            <div style="align-items:center">
            <asp:Button ID="Button2" runat="server" Text="UPDATE" style="margin-right:10px" OnClick="Button2_Click"/> 

            <asp:Button ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click" />
            </div>
        
    </form>
</body>
</html>
