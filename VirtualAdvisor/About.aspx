<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="VirtualAdvisor.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                
            </hgroup>

    
         <p>        
            Virtual Advising System (VAS) is an application platform that allows you to see your progress towards a degree. 
            VAS is a self-advising system which is independent from any University, college, or specific major.  VAS will 
            give you the ability to see what classes you have successfully completed (if any) towards a specific major, the
            classes that you are currently signed up for, and the remaining classes needed for graudation.
        </p>

        <p>        
            <span style="font-weight:bold; font-style:italic;">Our goal:</span> To build an application that applys 
            engineering techniques to facilitate the task of administration, faculty and staff by providing a tool 
            that will show a student’s most updated information in its simplest format. Additionally, it will alleviate 
            some of the stress of students when it comes to signing up for the right class for a given semester.
        </p>

    
    </div>

        
    <div>
        <img alt="Buildings" src="Images/vasGroup.png" style="width: 400px; margin-left:25%;" />
    </div>
</section>
</asp:Content>