<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" EnableSessionState="True" Inherits="Welcome" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome</h1>
    <div>
    <asp:Label ID="Label1" runat="server"  ></asp:Label>
    </div>
    </form>
</body>
</html>
<script runat="Server" >
    protected void Page_Load(object sender, EventArgs e){

        Label1.Text = Session["UserName"].ToString();
    }
</script>