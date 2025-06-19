<%@ Page Title="" Language="C#" MasterPageFile="~/Mytemplate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Onlineshop.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            height: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineshopConnectionString2 %>" ProviderName="<%$ ConnectionStrings:onlineshopConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM products" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [__MigrationHistory] WHERE [MigrationId] = @original_MigrationId AND [ContextKey] = @original_ContextKey AND [Model] = @original_Model AND [ProductVersion] = @original_ProductVersion" InsertCommand="INSERT INTO [__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (@MigrationId, @ContextKey, @Model, @ProductVersion)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [__MigrationHistory] SET [Model] = @Model, [ProductVersion] = @ProductVersion WHERE [MigrationId] = @original_MigrationId AND [ContextKey] = @original_ContextKey AND [Model] = @original_Model AND [ProductVersion] = @original_ProductVersion">
        <DeleteParameters>
            <asp:Parameter Name="original_MigrationId" Type="String" />
            <asp:Parameter Name="original_ContextKey" Type="String" />
            <asp:Parameter Name="original_Model" Type="Object" />
            <asp:Parameter Name="original_ProductVersion" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MigrationId" Type="String" />
            <asp:Parameter Name="ContextKey" Type="String" />
            <asp:Parameter Name="Model" Type="Object" />
            <asp:Parameter Name="ProductVersion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Model" Type="Object" />
            <asp:Parameter Name="ProductVersion" Type="String" />
            <asp:Parameter Name="original_MigrationId" Type="String" />
            <asp:Parameter Name="original_ContextKey" Type="String" />
            <asp:Parameter Name="original_Model" Type="Object" />
            <asp:Parameter Name="original_ProductVersion" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
        </Columns>
    </asp:GridView>
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="pid" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="">pid:
                <asp:Label ID="pidLabel" runat="server" BackColor="#0000CC" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">pid:
                <asp:Label ID="pidLabel1" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                pimage:
                <asp:TextBox ID="pimageTextBox" runat="server" Text='<%# Bind("pimage") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">pid:
                <asp:TextBox ID="pidTextBox" runat="server" Text='<%# Bind("pid") %>' />
                <br />
                pname:
                <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                pimage:
                <asp:TextBox ID="pimageTextBox" runat="server" Text='<%# Bind("pimage") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">pid:
                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">pid:
                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
</p>
<p>
</p>
<p>
    <asp:Repeater ID="Repeater1" runat="server" >
        <HeaderTemplate>
            <h1 style ="color:red"> Product details</h1>
           
            <table>
                 </HeaderTemplate>
               <ItemTemplate>
                   <tr style="font-weight:bold;background-color:tomato">
                       <td> <%# Eval("pid") %></td>
                       <td> <%# Eval("pname") %></td>
                       <td> <%# Eval("price") %></td>
                       <td> <%# Eval("description") %></td> 
                   </tr>
               </ItemTemplate>


                      <AlternatingItemTemplate>
                <tr style="font-weight:bold;background-color:lightblue">
                    <td> <%# Eval("pid") %></td>
                    <td> <%# Eval("pname") %></td>
                    <td> <%# Eval("price") %></td>
                    <td> <%# Eval("description") %></td> 
                </tr>
            </AlternatingItemTemplate>


                <SeparatorTemplate>
                    <tr style="font-weight:bold;background     -color:lightgreen">
                        <td colspan="4">-------------------------------------</td>
                        </tr>

                </SeparatorTemplate>
       
        <FooterTemplate>
              </table>
            <h2>total items present is 5 </h2>
        </FooterTemplate>


    </asp:Repeater>
</p>
<p>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
