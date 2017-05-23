<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SignupForm.WebForm1" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>URI Sign UP Page</title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="jquery.js"></script>
    <script src="js.js"></script>
    <script>

        $(document).ready(function () {
            $("#select").change(function () {
                 
                if ($(this).val() != "Employ" && $(this).val() != "--Select--") {
                    $("#deg").show();
                    $("#se").show();
                    $("#enr").show();
        //          if (degree == null) {
        //    document.getElementById('lblResult').innerHTML = 'Degree not Empty';
        //} else if (session == null) {
        //    document.getElementById('lblResult').innerHTML = 'Session not Empty';
        //} else if (enrollment == null) {
        //    document.getElementById('lblResult').innerHTML = 'Enrollment Number not Empty';
        //} else { document.getElementById('lblResult').innerHTML = ''; }

                } else {
                    $("#deg").hide();
                    $("#se").hide();
                    $("#enr").hide();
                }

            });
        });
        

        //$(document).ready(function () {
        //    $('#select').on('change', function () {
        //        if (this.value == 'Student') {
        //            $("#deg").show();
        //            $("#se").show();
        //            $("#enr").show();
        //        }
        //        else {
        //            $("#deg").hide();
        //            $("#se").hide();
        //            $("#enr").hide();
        //        }
        //    });
        //});
    </script>


</head>
<body style="background-color: #778899">

    <div class="container" style="background-color: black" id="form">






        <div class="well well-sm" style="background-color: gray">
            <h1 style="color: white">Form:</h1>
        </div>
        <hr />
        <p style="color: white">please fill correct information below.</p>
        <asp:Label ID="Result" runat="server" Text="" style="margin-left:17%" 
        Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
        <asp:Label ID="Result1" runat="server" Text=""  
        Font-Bold="True" Font-Underline="True" ForeColor="green"></asp:Label>
        <form name="myform" action="#" enctype="text/plan" class="form-horizontal" role="form"  runat="server" method="post">
            <div class="form-group">
                <label for="name" class="control-label col-md-2" style="color: white">Full Name:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter Full Name" autofocus ID="name" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="mail" class="control-label col-md-2" style="color: white">Email:</label>
                <div class="col-md-4">
                   <asp:TextBox type="text" class="form-control "  placeholder="Enter Email address" ID="email" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="campus" class="control-label col-md-2" style="color: white">Campus:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter campus" ID="campus" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="department" class="control-label col-md-2" style="color: white">Department:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter Department" ID="department" runat="server"></asp:TextBox>
                </div>
            </div>
             <div class="form-group">
                 <label for="s" class="control-label col-md-2" style="color: white">Select:</label>
                 <div class="col-md-4">
                    <select class="form-control" id="select">
                      <option>--Select--</option>
                      <option>Student</option>
                      <option>Employ</option>
    
                    </select>
                     </div>
            </div>
            <div class="form-group" id="deg" style=" display:none;">
                <label for="degree" class="control-label col-md-2" style="color: white;">Degree:</label>
                <div class="col-md-4" >
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter degree"  ID="degree" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group" id="se" style=" display:none;">
                <label for="session" class="control-label col-md-2" style="color: white;">Session:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter Session" ID="session" runat="server"></asp:TextBox>
                </div>
            </div>
              <div class="form-group" id="enr" style=" display:none;">
                <label for="enrollment" class="control-label col-md-2" style="color: white;">Enrollment Number:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter Enrollment" ID="enrollment" runat="server"></asp:TextBox>
                </div>
            </div>
              <div class="form-group">
                <label for="id" class="control-label col-md-2" style="color: white">Login ID:</label>
                <div class="col-md-4">
                    <asp:TextBox type="text" class="form-control "  placeholder="Enter Login ID" ID="id" runat="server"></asp:TextBox>
                </div>
            </div>
              <div class="form-group">
                <label for="pass" class="control-label col-md-2" style="color: white">Password:</label>
                <div class="col-md-4">
                    <asp:TextBox type="password" class="form-control "  placeholder="Enter Password" ID="pass" runat="server"></asp:TextBox>
                </div>
            </div>
       
            <br />
          
            <br />
            <div class="col-md-offset-2 col-sm-10">
                <asp:Button type="button" class="btn btn-default" ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" />
                <asp:Button type="reset" class="btn btn-default" ID="reset" runat="server" Text="Reset" OnClick="reset_Click" />
                

            </div>
            <hr />
            <hr />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Users Dtails" Font-Bold="true" ForeColor="White" Font-Underline="true" Font-Size="Medium" Font-Italic="true"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" HorizontalAlign="Center" ForeColor="#8C451" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>



        </form>
        <br />
        <hr />
        

        <p>
            <center><b><u>copyright &copyURI </u></b></center>
        </p>





    </div>
</body>
</html>
