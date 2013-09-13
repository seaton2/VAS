<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="SearchInternships.aspx.cs" Inherits="VirtualAdvisor.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

	<p style="text-align:center;"><strong>Search Internships</strong></p>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
	
    <p style="text-align:center;">&nbsp;</p>

<script src="http://www.google.com/jsapi?key=AIzaSyBOVIOzQt5xIsJQhqgFNyxchXR862BdqZs"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>
<script type="text/javascript">
    var map;
    var infowindow;
    var lat;
    var long;
    var key;
  
    function set() {

        if (navigator.geolocation) {
            // Get current position
            navigator.geolocation.getCurrentPosition(function (position) {
                // Success!
                initialize(position.coords.latitude, position.coords.longitude);
            });
        }
        else {
            alert('Geolocation is not supported in your browser. Try: Chrome, Firefox or Safari');
        }
    }

    function initialize(lat, long) {
        var pyrmont = new google.maps.LatLng(lat, long);
        //new google.maps.LatLng(25.7808333, -80.1872222);
        //alert(pyrmont + '<-- This is your current location');
        map = new google.maps.Map(document.getElementById('map'), {
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: pyrmont,
            zoom: 12
        });
       

        var key = document.getElementById('<%= searchmap.ClientID %>').value;
        //alert(key);
        var request = {
            location: pyrmont,
            radius: 50000,
            query: 'Software'
        };
        infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        service.textSearch(request, callback);
    }

    function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                createMarker(results[i]);
            }
        }
    }

    function createMarker(place) {
        var iconBase = '/Images/computers.png';
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location,
            icon: iconBase
        });

        google.maps.event.addListener(marker, 'click', function () {
            infowindow.setContent(place.name);
            infowindow.open(map, this);
        });
    }

    google.maps.event.addDomListener(window, 'load', set);

 

</script>

		<div id="mapdiv" role="main" runat="server" visible="false">
			<section id="main-content">
				<div id="map"></div>
			</section>
		</div>

	<asp:Table ID ="Table1" runat="server" HorizontalAlign ="Center" GridLines="Both">
		<asp:TableRow>
			<asp:TableCell runat="server">Search Database by:</asp:TableCell>
			<asp:TableCell HorizontalAlign ="Center" VerticalAlign="Middle"> 
				<asp:DropDownList runat="server" ID="ddSearchFilter" AutoPostBack="True">
					<asp:ListItem>Company </asp:ListItem>
					<asp:ListItem>Position Title </asp:ListItem>
					<asp:ListItem>Length of Time </asp:ListItem>
					<asp:ListItem>Pay (Amt/Hr.)</asp:ListItem>
					<asp:ListItem>Description</asp:ListItem>
					<asp:ListItem>Requirements</asp:ListItem>
					<asp:ListItem>All</asp:ListItem>
				</asp:DropDownList>
			</asp:TableCell> 
			<asp:TableCell HorizontalAlign ="Center" VerticalAlign="Middle">
				<asp:TextBox runat="server" ID="tbxSearch">
				</asp:TextBox>
			</asp:TableCell >
			<asp:TableCell HorizontalAlign ="Center" VerticalAlign="Middle"> 
				<asp:Button runat="server" ID="btnSearch" OnClick="btnSearch_Click" Text="Search" /> 
			</asp:TableCell> 
            <asp:TableCell>
                Search Nearby:
            </asp:TableCell>
            <asp:TableCell> 
               <asp:TextBox runat="server" ID="searchmap"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button runat="server" ID="btnSearchMap" OnClientClick="btnSearchMap_Click" Text ="Search Map" />
            </asp:TableCell>
		</asp:TableRow>
	</asp:Table>

	<asp:DataGrid runat="server" ID="gvInternships" Visible="false" GridLines="Both" AutoGenerateColumns="False" BackColor="#67BCDB">
		<Columns > 
			<asp:BoundColumn DataField="Company_Name" HeaderText ="Company Name"></asp:BoundColumn>
			<asp:BoundColumn DataField="Internship_Title" HeaderText ="Position Title"></asp:BoundColumn>
			<asp:BoundColumn DataField="Pay" HeaderText ="Pay" ></asp:BoundColumn>
			<asp:BoundColumn DataField="Description" HeaderText ="Description"></asp:BoundColumn>
			<asp:BoundColumn DataField="Requirements" HeaderText ="Requirements"></asp:BoundColumn>
		</Columns>
	</asp:DataGrid>

    
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="News Feed" />

    <div id="news" runat="server" visible="false">
    <div>Daily News Updates
            </div>
    <div>
    <asp:Panel ID="Panel1" runat="server">
    <div id="newsfeeds"><br />
        <asp:Label ID="Label4" runat="server" Font-Size="11px" Text="Select News Links"></asp:Label><br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150"
            ToolTip="Select News Category">
            <asp:ListItem Value="http://feeds.feedburner.com/cnet/tcoc" Selected="True"> Cnet</asp:ListItem>
            <asp:ListItem Value="http://techcrunch.com/"> TechCrunch</asp:ListItem>
            
            
            
        </asp:DropDownList>
        <div id="Div1"><br />
        <table style="width: 100%;">
            <tr>
                <td>&#8226;
                    <a href="http://techcrunch.com/" target="_blank">News Link</a></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            
        </table>
        </div>
        
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://rss.cnn.com/rss/cnn_tech.rss"
            XPath="rss/channel/item [position()<=10]" CacheDuration="60" ></asp:XmlDataSource>
            
        <asp:DataList ID="DataList1" Runat="server" DataSourceID="XmlDataSource1"
         BorderColor="#000000" BackColor="#000000" BorderWidth="0px"
         CellPadding="10" Width="100%" CellSpacing="0">
         
          <ItemTemplate><br /><br />
           <b> <%#XPath("title") %></b>&nbsp;
           <a href="<%# XPath("link") %>" ><asp:HyperLink ID="HyperLink1" Runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                    Target="_blank" Font-Names="Verdana" Font-Size="10px" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink></a>
                
           
           <br />
                    
                <asp:Label ID="Label1" Runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black" Font-Bold="false"
                    Font-Names="Tahoma" Font-Size="11px"></asp:Label>
                    
                    <br /><span><%# XPath("description") %></span><br />
            </ItemTemplate>

            <AlternatingItemTemplate>
            <br /><br />
            <b> <%#XPath("title") %></b> &nbsp;<asp:HyperLink ID="HyperLink2" Runat="server"
                 Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                 Target="_blank" Font-Names="Verdana" Font-Size="10px" CssClass="link" ToolTip='<%#XPath("title") %>' ></asp:HyperLink><br />
                 
                <asp:Label ID="Label3" Runat="server" Text='<%# XPath("pubDate") %>'
                 ForeColor="black" Font-Bold="false"
                 Font-Names="Tahoma" Font-Size="11px"></asp:Label><br /><span><%# XPath("description") %></span>
<%--<img alt="test" src='<%# XPath("image") %>' id="Image1"  width="35px" height="43px"/>
 <asp:Image ID="Image" runat="server" Height="43px" ImageUrl='<%# XPath("img") %>' Width="35px" />--%>
                <br />
                

            </AlternatingItemTemplate>

            <ItemStyle Font-Names="Tahoma" Font-Size="11px" BackColor="White"
                ForeColor="#565656" HorizontalAlign="Justify"></ItemStyle>
            <FooterStyle BackColor="White" />
            <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Bold="True" />

        </asp:DataList></div>
    </asp:Panel>
               </div>
        </div>


</asp:Content>
