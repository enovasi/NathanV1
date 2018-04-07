<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NathanV1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css" rel="stylesheet"/>
	<link  href="https://cdn.datatables.net/1.10.16/css/dataTables.material.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.material.min.js"></script>
     <script>
         $(function () {
             $("#GridView1").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                 columnDefs: [
                     {
                         targets: [0, 1, 2],
                         className: 'mdl-data-table__cell--non-numeric'
                     }
                 ]
             });
         });
      
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="mdl-data-table">
                <Columns>
                    <asp:BoundField DataField="itemCode" HeaderText="itemCode" SortExpression="itemCode" />
                    <asp:BoundField DataField="itemName" HeaderText="itemName" SortExpression="itemName" />
                    <asp:BoundField DataField="onHand" HeaderText="onHand" SortExpression="onHand" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTORYConnectionString %>" SelectCommand="SELECT * FROM [OITM]"></asp:SqlDataSource>
        </div>
    </form>
   
</body>
</html>
