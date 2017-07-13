<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="True" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
   
     <style>
        body {
            font-family: 'Times New Roman';
            color: black;
        }

        .FORM1 {
            background-color:#646969;
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
         
    </style>

    <title>FORM</title>
</head>
<body>

    <h1>Home Page For Login</h1>


    <form id="form1" runat="server">
    <div class="FORM1">

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


        <div class="custom">
            <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Log In" OnClick="btnLogin_Click"/>
            </div>

        <br />



           <asp:HyperLink ID="hypLink" runat="server" Text="Click here for Registration" NavigateUrl="~/registration.aspx" ForeColor="blue" Font-Italic="true"></asp:HyperLink>

        <asp:Label ID="Label" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
<script runat="server">
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string UserName = txtuser.Text;
        string Password = txtPwd.Text;

        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        cn = new SqlConnection();
        cmd = new SqlCommand();


        cn.ConnectionString = "data source=sthree.database.windows.net;initial catalog=Sthree;user id=sgajjala;password=dr@vidss1";
        cmd.CommandText = "select* from Users where UserName=@a and Password=@b";
        cmd.Connection = cn;

        cmd.Parameters.Add(new SqlParameter("@a", UserName));
        cmd.Parameters.Add(new SqlParameter("@b", Password));


        cn.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["UserName"] = txtuser.Text;
            Response.Redirect("Welcome.aspx");


        }
        else
        {
            Label.Text = "UserName/Password are incorerct";
        }
        cn.Close();

    }


</script>