<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientlist.aspx.cs" Inherits="sheikh.patientlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
           border-radius: 5px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="patient" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="cnic"
                ShowHeaderWhenEmpty="true"

                OnRowCommand="patient_RowCommand" OnRowEditing="patient_RowEditing" OnRowCancelingEdit="patient_RowCancelingEdit"
                OnRowUpdating="patient_RowUpdating" OnRowDeleting="patient_RowDeleting"

                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="215px" Width="592px" OnSelectedIndexChanged="patient_SelectedIndexChanged">
                <%-- Theme Properties --%>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                
                <Columns>
                     <asp:TemplateField HeaderText="CNIC">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("cnic") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcnic" Text='<%# Eval("cnic") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcnicFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("fname") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("fname") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("lname") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" Text='<%# Eval("lname") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLastNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood Group">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("bgroup") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtbgroup" Text='<%# Eval("bgroup") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtbgroupFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("phone") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContact" Text='<%# Eval("phone") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtContactFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField> 
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("address") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtaddress" Text='<%# Eval("address") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtaddressFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Check-in Time">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("checkin") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcheckin" Text='<%# Eval("checkin") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtcheckinFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
            <asp:Button ID="logoutbutton" runat="server" CssClass="auto-style1" Text="logout" Height="38px" Width="89px" BackColor="Red" BorderStyle="None" ForeColor="#CCCCCC" OnClick="submitbutton_Click" PostBackUrl="~/loginpage.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>
    </form>
</body>
</html>