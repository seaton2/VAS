<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="CareerGuidance.aspx.cs" Inherits="VirtualAdvisor.WebForm3" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 30px;
		}
			  #test{
	
  width: 700px;
			height: 500px;
			margin: 50px auto;
			border-style:solid;
			border-width:medium;
			
		  
			/*background-image:url('Images/Cs.PNG');*/
 
}
   
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

	<p style="text-align:center;"><strong>Career Guidance</strong></p>
	  <%--<div style="height:15px; width: 100%; border:solid 2px #ccc;" />--%>

	<div>

	 <ul>
         <li>
	        <asp:DropDownList ID="ddUniversity" runat="server" DataSourceID="UdataSource" DataTextField="UNIV_Name" DataValueField="UNIV_ID" AutoPostBack="True">
	        </asp:DropDownList>
	        <asp:SqlDataSource ID="UdataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Universities]" ></asp:SqlDataSource>
            <br />
         </li>
         <li>
	        <asp:DropDownList ID="ddCollege" runat="server" DataSourceID="CdataSource" DataTextField="College_Name_General" DataValueField="College_ID" AutoPostBack="True">
	        </asp:DropDownList>
	        <asp:SqlDataSource ID="CdataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" 
                SelectCommand="select Distinct College_ID, College_Name_General
                    from College 
                    where UNIV_ID = @UNIV_ID" >
		        <SelectParameters>
			        <asp:ControlParameter ControlID="ddUniversity" DefaultValue="" Name="UNIV_ID" PropertyName="SelectedValue" Type="String" />
		        </SelectParameters>
	        </asp:SqlDataSource>
         </li>
         <li>
	        <asp:DropDownList ID="ddMajor" runat="server" DataSourceID="ClassdataSource" DataTextField="MajorName" DataValueField="ID" AutoPostBack="True">
	        </asp:DropDownList>
	        <asp:SqlDataSource ID="ClassdataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand=	
                "select DISTINCT m.MajorName, m.ID
	            from Majors m
	            inner join College c on c.College_ID = m.CollegeID
	            where c.College_ID = @collegeID
	            Order by m.MajorName" >
		        <SelectParameters>
			        <asp:ControlParameter ControlID="ddCollege" DefaultValue="" Name="collegeID" PropertyName="SelectedValue" Type="String" />
		        </SelectParameters>
	        </asp:SqlDataSource>
         </li>
         <li>
	        <asp:DropDownList ID="ddClass" runat="server" DataSourceID="CoursedataSource" DataTextField="Class_Name" DataValueField="ID">
	        </asp:DropDownList>
	        <asp:SqlDataSource ID="CoursedataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand=
                "select DISTINCT cl.Class_Name, cl.ID, cl.Class_Code
                from Class_List cl
                where cl.Major_ID = @ID">
		        <SelectParameters>
			        <asp:ControlParameter ControlID="ddMajor" DefaultValue="" Name="ID" PropertyName="SelectedValue" Type="String" />
		        </SelectParameters>
	        </asp:SqlDataSource>
         </li>
         <li>
	        <asp:DropDownList ID="grade" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
	        </asp:DropDownList>
	        <asp:DropDownList ID="status" runat="server" OnSelectedIndexChanged="status_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem>In Progress</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
	        </asp:DropDownList>
	        <asp:DropDownList ID="rating" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
	        </asp:DropDownList>
         </li>
         <li>
             <asp:TextBox ID="tbxReview" runat="server"></asp:TextBox>
         </li>
         <li>	 </li>	
	 </ul>
            <asp:ImageButton id="ImageButton1"
             onmouseover="this.src='Images/addCourseHover.png' "
             onclick="AddC_Click"
             runat="server"
             onmouseout ="this.src='Images/addCourse.png'"
             ImageUrl="~/Images/addCourse.png" Style="width:100px;"/>

             <asp:ImageButton id="ImageButton2"
             onmouseover="this.src='Images/flowcHover.png' "
             onclick="btnViewPdf_Click"
             runat="server"
             onmouseout ="this.src='Images/flowc.png'"
             ImageUrl="~/Images/flowc.png" Style="width:100px;"/>

<%--	        <asp:Button ID="btnViewPdf" runat="server" Text="Flow Chart" Font-Size="Small" Width="126px" Onclick="btnViewPdf_Click"/>--%>
        
</div>
	<asp:Button ID="classList" runat="server" Text="View Classes" />
	<%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
	
	<asp:SqlDataSource ID="UserClasses" runat="server" ConnectionString="<%$ ConnectionStrings:VAS_2ConnectionString %>" SelectCommand="SELECT DISTINCT [Class_ID], [Status], [Grade], [User_Name], [Rating] FROM [User_Classes] WHERE ([User_Name] = @User_Name)">
		<SelectParameters>
			<asp:SessionParameter Name="User_Name" SessionField="empid" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>
	
	<asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>
	
	<div id="test" runat="server" >
	    <iframe src="Images/flowchart.pdf" height="500" width="700"></iframe><br />
	</div>

</asp:Content>
