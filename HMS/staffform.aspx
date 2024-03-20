<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffform.aspx.cs" Inherits="sheikh.staffform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="staff" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="cnic"
                ShowHeaderWhenEmpty="true"

                OnRowCommand="staff_RowCommand" OnRowEditing="staff_RowEditing" OnRowCancelingEdit="staff_RowCancelingEdit"
                OnRowUpdating="staff_RowUpdating" OnRowDeleting="staff_RowDeleting"

                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="329px" Width="1233px">
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
                    <asp:TemplateField HeaderText="First Name">
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
                    <asp:TemplateField HeaderText="UserName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("username") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtusername" Text='<%# Eval("username") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtusernameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("pass") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtpass" Text='<%# Eval("pass") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtpassFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Designation">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("designation") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdesignation" Text='<%# Eval("designation") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdesignationFooter" runat="server" />
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
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

        </div>
    </form>
</body>
</html>