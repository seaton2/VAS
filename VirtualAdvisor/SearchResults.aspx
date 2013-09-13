<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="VirtualAdvisor.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<%--Main content page to display database results grid:--%>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/blueLG.png" style="float:right;" Width="100px"/>

        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Search by Category:" ForeColor="#E44424"></asp:Label>
    </p>

            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand="SELECT DISTINCT [Cname] FROM [Universities] WHERE [Cname] IS NOT NULL ORDER BY [Cname] DESC"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SearchCategory" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand="SELECT DISTINCT [Cname] FROM [Universities]"></asp:SqlDataSource>
                
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/lookingGlass.png" style="float:left;" ImageAlign="Left" Width="75px"/>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="UniversityGrid">
                    <Columns>
                        <asp:BoundField DataField="UNIV_Name" HeaderText="University" SortExpression="UNIV_Name" />
                        <asp:BoundField DataField="UNIV_Address" HeaderText="Address" SortExpression="UNIV_Address" />
                        <asp:BoundField DataField="UNIV_City" HeaderText="City" SortExpression="UNIV_City" />
                        <asp:BoundField DataField="UNIV_State" HeaderText="State" SortExpression="UNIV_State" />
                        <asp:BoundField DataField="UNIV_ZIP" HeaderText="ZIP" SortExpression="UNIV_ZIP" />
                        <asp:BoundField DataField="UNIV_Phone" HeaderText="Phone" SortExpression="UNIV_Phone" NullDisplayText="Not Available" />
                        <asp:HyperLinkField DataTextField="UNIV_URL" HeaderText="URL"></asp:HyperLinkField>
                        <asp:BoundField DataField="In_State_Tuition" HeaderText="In State Tuition" SortExpression="In_State_Tuition" NullDisplayText="Not Available" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="Out_State_Tuition" HeaderText="Out of State" SortExpression="Out_State_Tuition" NullDisplayText="Not Available" DataFormatString="{0:C}" />

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="UniversityGrid" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand="SELECT DISTINCT [UNIV_Name], [UNIV_Address], [UNIV_City], [UNIV_State], [UNIV_ZIP], [UNIV_Phone], [UNIV_URL], [In_State_Tuition], [Out_State_Tuition] FROM [Universities] WHERE ([Cname] = @Cname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Cname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
</asp:Content>
