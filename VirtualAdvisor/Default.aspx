<%@ Page Title="Welcome to VAS!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VirtualAdvisor._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
            </hgroup>
            <p>
                Virtual Advising Software is a great tool to help college seeking students, old or new, to pick
                an appropriate major towards their life goals.  Try it out, and get started!
            </p>
        </div>
    </section>

</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent"  style="background-image:url(Images/3_grass.png); background-size:100% 100%; padding:10px; overflow-x:scroll ">
    
    <a id="A1" runat="server" href="~/SearchResults.aspx" style="float:right;" onmouseover="this.src='Images/customArrowHover.png' ">
        <img alt="Begin Here" src="Images/customArrow.png" style="width: 250px" />
    </a>


    <div>
        <img alt="Happy Students" src="Images/students1.png" style="width: 600px; height: 100%;" />
    </div>


</asp:Content>
