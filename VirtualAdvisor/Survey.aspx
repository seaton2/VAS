<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="VirtualAdvisor.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 
    <p style="text-align:center;" aria-hidden="False"><strong>Subject Interest Survey</strong></p>
    <p style="text-align:center;"><strong>Rate your class likes/dislikes<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False" Width="260px"></asp:TextBox>
        </strong></p>

    <div style="float:left; position:absolute; background-color:#67BCDB; font-size:medium; padding:0px 10px 0px 10px; width:200px; height:auto;">
        <p style ="color:white">This survey is to help you determine what category of study you would be most interested it.
            <%--Take this survey to figure out what field best fits your interest! These ratings will be analyzed and you can see 
            all the fields that, according to your likes and dislikes, you would do well in!--%> 
        </p>
    </div>

    <div>
        <img alt="Welcome!" src="Images/survey.png" style="width: 250px; float:right;" />
    </div>

    <div style="float:left; margin-left:280px; margin-right:auto;">
    <asp:Table runat="server" GridLines="Both" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center"> 
        <asp:TableHeaderRow runat="server">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell Font-Bold="true"> &nbsp;1  &nbsp;  &nbsp;  &nbsp; &nbsp;2   &nbsp;&nbsp; &nbsp; &nbsp; 3 &nbsp; &nbsp; &nbsp;  &nbsp;  4   &nbsp;&nbsp; &nbsp;  &nbsp;  5</asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Reading</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList1" AutoPostBack="false" RepeatDirection ="Horizontal">
                    <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList>
            </asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow ID="TableHeaderRow2" runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Writing</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList2" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow  runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Arts</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList3" AutoPostBack="false" RepeatDirection ="Horizontal">
                  <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Psychology</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList4" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Law</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList5" AutoPostBack="false" RepeatDirection ="Horizontal">
                 <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Geology</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList6" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">History</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList7" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Economy</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList8" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Accounting</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList9" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Biology</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList10" AutoPostBack="false" RepeatDirection ="Horizontal">
                    <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableHeaderRow runat="server"> 
            <asp:TableCell runat="server" Font-Bold="true" Font-Size="Large">Mathematics</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButtonList runat="server" ID="RadioButtonList11" AutoPostBack="false" RepeatDirection ="Horizontal">
                   <asp:ListItem  Value="1"></asp:ListItem>
                    <asp:ListItem  Value="2"></asp:ListItem>
                    <asp:ListItem  Value="3"></asp:ListItem>
                    <asp:ListItem  Value="4"></asp:ListItem>
                    <asp:ListItem  Value="5"></asp:ListItem>
                </asp:RadioButtonList></asp:TableCell>
        </asp:TableHeaderRow>
    </asp:Table>
                     <asp:ImageButton id="ImageButton1"
                             onmouseover="this.src='Images/submitHover.png' " 
                             onclick="Button1_Click"                            
                             runat="server"
                             onmouseout ="this.src='Images/submit.png'"
                             ImageUrl="~/Images/submit.png" Style="width:100px;" />
                   <asp:ImageButton id="ImageButton2"
                             onmouseover="this.src='Images/resetHover.png' " 
                             onclick="Button2_Click"                            
                             runat="server"
                             onmouseout ="this.src='Images/reset.png'"
                             ImageUrl="~/Images/reset.png" Style="width:100px;" />
    <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="float:right" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" style="float:right" />--%>

</div>


</asp:Content>    
<%--<h2 style="float:left; margin-left:160px; margin-right:50px;">Reading</h2>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem Text="1" Value="1"></asp:ListItem>
        <asp:ListItem Text="2" Value="2"></asp:ListItem>
        <asp:ListItem Text="3" Value="3"></asp:ListItem>
        <asp:ListItem Text="4" Value="4"></asp:ListItem>
        <asp:ListItem Text="5" Value="5"></asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>

    
<%-- <h2 style="float:left; margin-left:160px; margin-right:47px;">Writing</h2>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem Text="1" Value="1"></asp:ListItem>
        <asp:ListItem Text="2" Value="2"></asp:ListItem>
        <asp:ListItem Text="3" Value="3"></asp:ListItem>
        <asp:ListItem Text="4" Value="4"></asp:ListItem>
        <asp:ListItem Text="5" Value="5"></asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>
    

<%--    <h2 style="float:left; margin-left:160px; margin-right:95px;">Arts</h2>
    <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>

    

<%--    <h2 style="float:left; margin-left:160px; margin-right:15px;">Psychology</h2>
    <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>

<%--    <h2 style="float:left; margin-left:160px; margin-right:32px;">Sociology</h2>
    <asp:RadioButtonList ID="RadioButtonList5" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>

 <%--   <h2 style="float:left; margin-left:160px; margin-right:49px;">Geology</h2>
    <asp:RadioButtonList ID="RadioButtonList6" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:59px;">History</h2>
    <asp:RadioButtonList ID="RadioButtonList7" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:39px;">Economy</h2>
    <asp:RadioButtonList ID="RadioButtonList8" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:13px;">Accounting</h2>
    <asp:RadioButtonList ID="RadioButtonList9" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />
    
    <h2 style="float:left; margin-left:160px; margin-right:56px;">Finance</h2>
    <asp:RadioButtonList ID="RadioButtonList10" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:-3px;">Mathematics</h2>
    <asp:RadioButtonList ID="RadioButtonList11" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />--%>

 <%--   <h2 style="float:left; margin-left:160px; margin-right:60px;">Physics</h2>
    <asp:RadioButtonList ID="RadioButtonList12" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:27px;">Chemistry</h2>
    <asp:RadioButtonList ID="RadioButtonList13" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:38px;">Medicine</h2>
    <asp:RadioButtonList ID="RadioButtonList14" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:-17px; font-size:14pt;">Computer Science</h2>
    <asp:RadioButtonList ID="RadioButtonList15" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:-21px; font-size:12pt;">Electrical Engineering</h2>
    <asp:RadioButtonList ID="RadioButtonList16" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <br />

    <h2 style="float:left; margin-left:160px; margin-right:-17px; font-size:15pt;">Civil Engineering</h2>
    <asp:RadioButtonList ID="RadioButtonList17" runat="server" AutoPostBack="False" RepeatDirection="Horizontal" Width="150px" CssClass="radioButtonList">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>--%>

