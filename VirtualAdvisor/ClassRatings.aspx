<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="ClassRatings.aspx.cs" Inherits="VirtualAdvisor.ClassRatings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align:center;"><strong>Class Ratings</strong></p>

    
  <%--  <asp:TextBox ID="txtBoxClassRatings" runat="server"></asp:TextBox>

    <asp:Button ID="btnClassRatings" runat="server" Text="Search" Font-Size="Small" Height="30px" OnClick ="btnClassRatings_Click" /><br />--%>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="#67BCDB">
        <Columns>
            <asp:BoundField DataField="UNIV_Name" HeaderText="University" SortExpression="UNIV_Name">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MajorName" HeaderText="Major" SortExpression="MajorName">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Posting_Date" HeaderText="Date Reviewed" SortExpression="Posting_Date">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="User_Name" HeaderText="User Name" SortExpression="User_Name">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Class_Code" HeaderText="Course Code" SortExpression="Class_Code">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Class_Name" HeaderText="Course Name" SortExpression="Class_Name">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:VAS_2ConnectionString %>' SelectCommand="SELECT User_Classes.Grade, User_Classes.Rating, User_Classes.Review, User_Classes.Posting_Date, User_Classes.UNIV_ID, User_Classes.Major_ID, User_Classes.User_Name, Class_List.Class_Code, Class_List.Class_Name, Class_List.Class_Description, Class_List.Credits, Class_List.College_ID, Universities.UNIV_Name, Majors.MajorName FROM User_Classes INNER JOIN Class_List ON Class_List.ID = User_Classes.Class_ID INNER JOIN Universities ON Universities.UNIV_ID = User_Classes.UNIV_ID INNER JOIN Majors ON Majors.ID = User_Classes.Major_ID WHERE (User_Classes.Status = 'Completed')"></asp:SqlDataSource>
</asp:Content>
