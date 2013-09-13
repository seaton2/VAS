<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirtualAdvisor.Register" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section>
        <div class="content-wrapper" style="background-image:url(Images/students_graduating.png); background-size:100% 100%; padding:10px;">
            <hgroup class="title">
                <%--Possible h1 tag style, but looks better to me with black text--%>
                <%-- style="background-color:#E44424; color:white; padding:5px;"--%>
                <h1><%: Title %></h1>                
            </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser" DestinationPageUrl="~/UpdateInfo.aspx">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p style="font-weight: bold; background-color:#E44424;" class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                    <table>
                        <tr>
                            <td>
                                <fieldset>
                        <ol style="color:#E44424; font-weight:bold;">
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User Name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>
                            
                            <li>
                                <asp:Label ID="Label5" runat="server" >First Name</asp:Label> <br />
                                <asp:TextBox runat="server" ID="tbxFirst" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>

                            <li>
                                <asp:Label ID="Label6" runat="server" >Last Name</asp:Label> <br />
                                <asp:TextBox runat="server" ID="tbxLast" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>

                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                            </li>
                        </ol>
                            <asp:ImageButton id="ImageButton1"
                             onmouseover="this.src='Images/registerHover.png' "
                             onclick="Button1_Click"
                             runat="server"
                             onmouseout ="this.src='Images/register.png'"
                             ImageUrl="~/Images/register.png" Style="width:100px;"
                             CommandName="MoveNext" />
                                    <!--
                        <asp:Button ID="Button1" runat="server" CommandName="MoveNext" Text="Create Account" OnClick="Button1_Click"/>
                                    -->
                    </fieldset>
                            </td>
                            <td>
                                <div style="text-align:center;">
                                    <img src="../Images/openDoor.png" alt="The World is open, but only if you open the door." />
                                </div>
                            </td>
                        </tr>
                    </table>
                    
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>

    <asp:Label runat="server" ID="found" Visible ="false">FOUND!</asp:Label>
    </div>
    </section>
</asp:Content>
