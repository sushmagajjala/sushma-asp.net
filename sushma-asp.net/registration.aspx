<%@ Page Language="C#" %>

<!DOCTYPE html>


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <meta charset="utf-8" />

    <style>
        body {
            font-family: 'Times New Roman';
            color: black;
        }

        .form {
            background-color: #646969;
            padding: 40px;
            max-width: 600px;
            margin: 40px auto;
            border-radius: 4px;
            box-shadow: 0 4px 10px 4px #13232f;
        }

        h1 {
            color: black;
            text-align: center;
        }

        .form-control {
            background-color: #E3E5E7;
        }
        .custom{
            text-align:center;
        }




    </style>
    <title>simple form</title>

</head>

<body>

    <h1>USER REGISTRATION FORM</h1>
    <div class="form">
        <form id="form1" runat="server">
            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblName" CssClass="col-md-6 " runat="server" Text="First Name" AssociatedControlID="txtName"></asp:Label>
                    <asp:TextBox ID="txtName" CssClass="col-md-6 form-control " runat="server" placeholder="First Name"></asp:TextBox>

                </div>
            </div>
            <asp:RequiredFieldValidator ID="rfvfn" runat="server" ControlToValidate="txtName" ErrorMessage="First Name cannot be empty" ForeColor="Red" SetFocusOnError="true" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regfn" runat="server" ControlToValidate="txtName" ErrorMessage="digits and special characters are not allowed" ForeColor="Red" ValidationExpression="^[a-z A-Z]*"></asp:RegularExpressionValidator>





            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblLast" runat="server" CssClass="col-md-6" Text="Last Name" AssociatedControlID="txtLast"></asp:Label>
                    <asp:TextBox ID="txtLast" CssClass="col-md-6 form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                </div>

            </div>

            <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txtLast" ErrorMessage="Last Name cannot be empty" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regln" runat="server" ControlToValidate="txtLast" ErrorMessage="digits and special characters are not allowed" ForeColor="Red" ValidationExpression="^[a-z A-Z]*"></asp:RegularExpressionValidator>

            <div class="form-group">
                <div class="row ">
                    <asp:Label ID="lblUser" runat="server" CssClass="col-md-6" Text="User Name" AssociatedControlID="txtuser"></asp:Label>

                    <asp:TextBox ID="txtuser" CssClass="col-md-6 form-control" runat="server" placeholder="User Name"></asp:TextBox>
                </div>
            </div>

            <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtuser" ErrorMessage="User Name cannot be empty" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regUn" runat="server" ControlToValidate="txtuser" ErrorMessage="digits should be not allowed" ForeColor="Red" ValidationExpression="^[a-z A-Z]*"></asp:RegularExpressionValidator>


            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblPwd" runat="server" CssClass="col-md-6" Text="Password" AssociatedControlID="txtPwd"></asp:Label>

                    <asp:TextBox ID="txtPwd" runat="server" CssClass="col-md-6 form-control" TextMode="PassWord" placeholder="Password"></asp:TextBox>
                </div>
            </div>

            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password Required" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>


            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblCPwd" runat="server" CssClass="col-md-6" Text="Confirm Password" AssociatedControlID="txtCP"></asp:Label>

                    <asp:TextBox ID="txtCP" runat="server" CssClass="col-md-6 form-control" TextMode="PassWord" placeholder="Confirm Password"></asp:TextBox>
                </div>
            </div>

            <asp:RequiredFieldValidator ID="reqCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Password Required" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>



            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblGen" runat="server" CssClass="col-md-6" Text="Gender" AssociatedControlID="rdl"></asp:Label>
                    <asp:RadioButtonList ID="rdl" CssClass="col-md-6 text-left radio-inline" runat="server">
                        <asp:ListItem Text="Male"></asp:ListItem>
                        <asp:ListItem Selected="True" Text="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblAdd" runat="server" CssClass="col-md-6" Text="Address" AssociatedControlID="txtAdd"></asp:Label>

                    <asp:TextBox ID="txtAdd" runat="server" CssClass="col-md-6 form-control" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
                </div>
            </div>
            <asp:RequiredFieldValidator ID="rfvadd" runat="server" ControlToValidate="txtAdd" ErrorMessage="Address is not empty" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>


            <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblEmail" CssClass="col-md-6" runat="server" Text="Email Id" AssociatedControlID="txtEmail"></asp:Label>

                    <asp:TextBox ID="txtEmail" CssClass="col-md-6 form-control" runat="server" placeholder="Email Id"></asp:TextBox>
                </div>
            </div>
            <asp:RequiredFieldValidator ID="rfvEail" runat="server" ControlToValidate="txtEmail" ErrorMessage="email id is compulsory" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format only accepted" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


             <div class="form-group">
                <div class="row">
                    <asp:Label ID="lblPhn" CssClass="col-md-6" runat="server" Text="Phone Num" AssociatedControlID="txtPhn"></asp:Label>

                    <asp:TextBox ID="txtPhn" CssClass="col-md-6 form-control" runat="server" placeholder="Phone num"></asp:TextBox>
                </div>
            </div>
            <asp:RequiredFieldValidator ID="reqPhn" runat="server" ControlToValidate="txtPhn" ErrorMessage="Phone num is compulsory" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="regPhn" runat="server" ControlToValidate="txtPhn" ErrorMessage="Phone num is not valid" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
           

            <br />
            <br />
            <div class="custom">
            <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="REGISTER" />
            </div>


        </form>

    </div>
</body>
</html>
