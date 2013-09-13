<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VirtualAdvisor.Login" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section>
        <div class="content-wrapper">
            <hgroup class="title">
                <%--Possible h1 tag style, but looks better to me with black text--%>
                <%-- style="background-color:#E44424; color:white; padding:5px;"--%>
                <h1><%: Title %></h1>                
            </hgroup>
    
    <section>       
        <p style="background-color:#E44424; font-weight:bold; padding:10px;" class="message-info">
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
            if you don't have an account.
        </p>
     
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false" DestinationPageUrl="~/CareerGuidance.aspx">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                
                <fieldset>
                    <legend>Log in Form</legend>
                    <table>
                        <tr>
                            <td>
                                <ol style="color:#E44424; font-weight:bold;">
                        <li>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                        </li>
                        <li>
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                        </li>
                    </ol>
                            </td>
                            <td>
                                <div style="text-align:center;">
                                    <img src="../Images/BookSelf.png" alt="Grab that Knowledge!" style="float:left; width: 300px;" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    
                    <asp:ImageButton id="ImageButton1"
                             onmouseover="this.src='Images/loginHover.png' "                             
                             runat="server"
                             onmouseout ="this.src='Images/login.png'"
                             ImageUrl="~/Images/login.png" Style="width:100px;" CommandName="Login"/>


<%--                    <asp:Button ID="Button1" runat="server"  onclick="Button1_Click"Text="Log in"  />--%>
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        
    </section>
        </div>
    </section>

    <%--<section id="socialLoginForm">
        <h2>Use another service to log in.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>--%>
</asp:Content>
