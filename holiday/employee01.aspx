<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee01.aspx.cs" Inherits="holiday.employee01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        //comment has been added
        function validation() {
            var errorsummry ="";
            errorsummry += checkname();
            errorsummry += checkemail();
            errorsummry += checkpassword();
            errorsummry += checkrepassword();
            errorsummry += checkage();
            errorsummry += checksalary();
           errorsummry += checknumber();
           
            if (errorsummry !="") {
                alert(errorsummry);
                return false;
            }
        }
        function checkname() {
            var name = document.getElementById("txtname");
            var exp = /^[a-zA-Z ]+$/;

            if (name.value =="") { return "pls enter your name \n"; }
            else if (exp.test(name.value)) { return ""; }
            else { return "pls enter alphabets only";}
        }
        function checkemail() {
            var email = document.getElementById("txtemail");
            var exp = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
            if (email.value == "") { return "pls enter your email address \n"; }
            else if (exp.test(email.value)) { return ""; }
            else { return "pls enter valid email address"; }
        }

            function checkpassword() {
                var password = document.getElementById("txtpassword");
                var exp = /^([a-zA-Z0-9_-]){8,15}$/
                if (password.value == "") { return "pls enter your password \n"; }
               else if (exp.test(password.value)) { return ""; }
            
                    else {return "pls enter password in between 8 to 15 digits"}

            }
            function checkrepassword() {
                var password = document.getElementById("txtpassword");
                var repassword = document.getElementById("txtrepassword");
                
                if (repassword.value == "") { return "pls enter confrim password \n"; }
                else if (password.value==repassword.value) { return ""; }

                else { return "password mismacth" }

            }
            function checkage() {
                var age = document.getElementById("txtage");
                
                if (age.value == "") { return "pls enter your age \n"; }
                else if (age.value>=18) { return ""; }

                else { return "sorry your are not eligible min age is 18" }

            }
            function checksalary() {
                var salary = document.getElementById("txtsalary");
                //var exp = /^[0-9]{20000,40000}$/;
                if (salary.value == "") { return "pls enter your salary \n"; }
                else if (salary.value>=20000 && salary.value<=40000) { return ""; }

                else { return "salary should be in range between 20k to 40k" }

            }
            function checknumber() {
                var number = document.getElementById("txtnumber");
                var exp = /^[0-9]{10}$/;
                if (number.value == "") { return "pls enter your phone number \n"; }
                else if (exp.test(number.value)) { return ""; }

                else { return "pls enter a valid 10 digit phn number" }

            }

        

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
        <table>
            <tr><td>Name</td><td><asp:TextBox ID="txtname" runat="server" ></asp:TextBox></td></tr>
            <tr><td>Email</td><td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td></tr>
            <tr><td>Password</td><td><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td></tr>
            <tr><td>Confirm Password</td><td><asp:TextBox ID="txtrepassword" runat="server" ></asp:TextBox></td></tr>
            <tr><td>Age</td><td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td></tr>
            <tr><td>Salary</td><td><asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td></tr>
            <tr><td>Mobile no.</td><td><asp:TextBox ID="txtnumber" runat="server"></asp:TextBox></td></tr>
            <tr><td></td><td><asp:Button ID="btnsave" Text="SAVE" runat="server" OnClientClick="return validation()" OnClick="btnsave_Click" /></td></tr>
        </table>
    </center>
        </div>
    </form>
</body>
</html>
