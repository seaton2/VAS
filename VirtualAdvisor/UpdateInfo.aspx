<%@ Page Title="Account Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateInfo.aspx.cs" Inherits="VirtualAdvisor.UpdateInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <label style="font-size:14pt; text-align:center">Account Settings</label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <ul>
        <li>
            <asp:Label ID="Label1" runat="server" Text="Label">Currently Attending: </asp:Label> 
            <asp:DropDownList ID="ddStates" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddStates_SelectedIndexChanged" Visible="false">
                    <asp:ListItem>FL</asp:ListItem>
                    <asp:ListItem>AK</asp:ListItem>
                    <asp:ListItem>AZ</asp:ListItem>
                    <asp:ListItem>AR</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>CO</asp:ListItem>
                    <asp:ListItem>CT</asp:ListItem>
                    <asp:ListItem>DE</asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>GA</asp:ListItem>
                    <asp:ListItem>HI</asp:ListItem>
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>IL</asp:ListItem>
                    <asp:ListItem>IN</asp:ListItem>
                    <asp:ListItem>IA</asp:ListItem>
                    <asp:ListItem>KS</asp:ListItem>
                    <asp:ListItem>KY</asp:ListItem>
                    <asp:ListItem>LA</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>MD</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MI</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MO</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>NE</asp:ListItem>
                    <asp:ListItem>NV</asp:ListItem>
                    <asp:ListItem>NH</asp:ListItem>
                    <asp:ListItem>NJ</asp:ListItem>
                    <asp:ListItem>NM</asp:ListItem>
                    <asp:ListItem>NY</asp:ListItem>
                    <asp:ListItem>NC</asp:ListItem>
                    <asp:ListItem>ND</asp:ListItem>
                    <asp:ListItem>OH</asp:ListItem>
                    <asp:ListItem>OK</asp:ListItem>
                    <asp:ListItem>OR</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>RI</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SD</asp:ListItem>
                    <asp:ListItem>TN</asp:ListItem>
                    <asp:ListItem>TX</asp:ListItem>
                    <asp:ListItem>UT</asp:ListItem>
                    <asp:ListItem>VT</asp:ListItem>
                    <asp:ListItem>VA</asp:ListItem>
                    <asp:ListItem>WA</asp:ListItem>
                    <asp:ListItem>WV</asp:ListItem>
                    <asp:ListItem>WI</asp:ListItem>
                    <asp:ListItem>WY</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddUniversities" runat="server" DataSourceID="Universities" DataTextField="UNIV_Name" AutoPostBack="True" DataValueField="UNIV_ID" OnSelectedIndexChanged ="ddUniversities_SelectedIndexChanged" ></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="Universities" ConnectionString='<%$ ConnectionStrings:VAS_2ConnectionString %>' SelectCommand="SELECT * FROM [Universities] WHERE ([UNIV_State] = @UNIV_State) ORDER BY Universities.UNIV_Name">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddStates" PropertyName="SelectedValue" DefaultValue="FL" Name="UNIV_State" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
        </li>
                <li style="visibility:hidden; line-height:5px"></li>

        <li>
            <asp:Label runat="server">Studying: </asp:Label>
             <asp:DropDownList ID="ddMajors" runat="server" DataSourceID="Majors" DataTextField="MajorName" DataValueField="ID" ></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="Majors" ConnectionString='<%$ ConnectionStrings:VAS_2ConnectionString %>' SelectCommand="select DISTINCT m.MajorName, m.ID
	            from Majors m
	            where UNIV_ID = @UNIV_ID
	            Order by m.MajorName" >
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddUniversities" PropertyName="SelectedValue" DefaultValue="133669" Name="UNIV_ID" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
        </li>
                <li style="visibility:hidden; line-height:5px"></li>

        <li>
            <asp:Label runat="server">Birth Date: </asp:Label>
            <asp:DropDownList ID="birthMonth" TabIndex="6" CssClass="standardField" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="birthDay" TabIndex="7" CssClass="standardField" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="birthYear" TabIndex="8" CssClass="standardField" runat="server">
            </asp:DropDownList>
            <asp:Label ID="DOB_Error" Visible="false" runat="server" CssClass="errorText" />
            <asp:Label Text="  Gender: " runat="server"></asp:Label>
            <asp:DropDownList runat="server" ID="ddGender">
                <asp:ListItem Value ="Female" Selected="True">Female</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
            </asp:DropDownList>
        </li>
        <li style="visibility:hidden; line-height:5px"></li>
        <li>

             <asp:Label ID="Label2" runat="server">Currently in: </asp:Label>
                <asp:DropDownList ID="ddEducationLevel" runat="server">
                    <asp:ListItem>High School</asp:ListItem>
                    <asp:ListItem>Undergraduate</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Doctorate</asp:ListItem>
                    <asp:ListItem>Certification</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            <asp:Label runat="server" >school. </asp:Label>
        </li>
        <li> 
           <asp:Label runat="server">Goal: </asp:Label> <asp:TextBox runat="server" ID="tbxGoal" Width="500px" Height="16px"></asp:TextBox>
                
          
        </li>
        <li>
            <asp:FileUpload id="FileUploadControl" runat="server" />

            <%--<asp:ImageButton id="ImageButton1"
                             onmouseover="this.src='Images/loginHover.png' " 
                             onclick="UploadButton_Click"                            
                             runat="server"
                             onmouseout ="this.src='Images/login.png'"
                             ImageUrl="~/Images/login.png" Style="width:100px;" />--%>

            <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
            <br /><br />
            <asp:Label runat="server" id="lblImgUploaded" Text=""/>
        </li>
    </ul>
    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" /> <asp:Label runat="server" ForeColor="Blue" ID="labelMessage" Text="" Font-Bold ="true"></asp:Label>
    <asp:Image ID="ShowImage" runat="server" />
    <div>
        <img alt="Welcome!" src="Images/welcome.png" style="width: 400px; margin-left:25%" />
    </div>
</asp:Content>
