<%--
  Class Name : gA02Main.jsp
  Description : GCS
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2021.11.01   SCJ       GCS 생성
 
    author   : SCJ
    since    : 2021.11.01
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="egovframework.com.cmm.LoginVO" %>

<%
    String url = request.getRequestURI() ;
	LoginVO user = (LoginVO) request.getSession().getAttribute("LoginVO");
	String grmName = (String) user.getGrmName();
	String mbAuth = (String) user.getMbAuth();
	System.out.println(mbAuth);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<link rel="icon" href="/images/favicon.svg" type="image/svg+xml" />
<title>DID Blockchain 기반 군집드론 플랫폼</title> 
        <meta name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
        <c:import url="/EmpPageLink.do?link=main/include/src" /> 
        <script src="https://cesium.com/downloads/cesiumjs/releases/1.87.1/Build/Cesium/Cesium.js"></script>
        <link href="/cesium/js/Widgets/widgets.css" rel="stylesheet">
        <!-- Style our app. -->  
        <link href="/cesium/css/index.css" media="screen" rel="stylesheet"> 
	  <!--Style-->
	  <link rel="stylesheet" type="text/css" href="/cesium/css/Waypoint.css">
	  <link rel="stylesheet" type="text/css" href="/cesium/websocket/css/index01.css">
	  
	    <link href="/assets/vendor/fontawesome/css/fontawesome.min.css" rel="stylesheet">
	    <link href="/assets/vendor/fontawesome/css/solid.min.css" rel="stylesheet">
	    <link href="/assets/vendor/fontawesome/css/brands.min.css" rel="stylesheet">
	    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="/assets/css/master.css" rel="stylesheet">
	    <link href="/assets/vendor/flagiconcss/css/flag-icon.min.css" rel="stylesheet">
		  
	  
	  <script type="text/javascript" src="/cesium/js/pop-up.js"></script> 
	   
	  <script type="text/javascript" src="/cesium/js/pop-up.js"></script>
	  <script type="text/javascript" src="/cesium/websocket/layout01.js"></script> 
	  <script type="text/javascript" src="/js/jquery.layout.js"></script> 
	  
	  
	  
	  <!-- cesium -->
	 <script type="text/javascript">
           var MISSION_ID = "new";
           var MISSION_HAS_NAME = false;
           var MISSION_ALLOW_EDIT = true;
           var MISSIONS_URL = "/missions/";
      </script>
            
      <script type="text/javascript" src="/cesium4/jquery.min.js"></script>    
	  <script type="text/javascript" src="/cesium4/bootstrap.bundle.min.js"></script>
	  <script type="text/javascript" src="/cesium4/jquery.dataTables.js"></script>
	  <script type="text/javascript" src="/cesium4/dataTables.bootstrap4.js"></script>
	  <script type="text/javascript" src="/cesium4/Chart.min.js"></script>
      <script type="text/javascript" src="/cesium4/scripts.js"></script>
	  <script type="text/javascript" src="/cesium4/jquery-ui.min.js"></script>
		<script> 
		var geocoder
		
		function initMap() {
		    geocoder = new google.maps.Geocoder();
		}
		
		function gmap_getLocations(pos) { 
		    return new Promise(function (resolve, reject) {
		        if (geocoder) {
		            geocoder.geocode({'location': pos},
		                function (results, status) {
		                    if (results && results.length > 0) {
		                        var fullName = results[0].formatted_address
		                        var firstComponent = results[0].address_components[0].short_name
		
		                        resolve({fullName, firstComponent})
		                    }
		                });
		        }
		    })
		}
		
		function airmap_getWeather(pos) {
		    return $.ajax({
		        url: "https://api.airmap.com/advisory/v1/weather?latitude=" + pos.lat + "&longitude=" + pos.lng,
		        headers: {"X-API-Key": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjcmVkZW50aWFsX2lkIjoiY3JlZGVudGlhbHxKd0xaSkpaUzllZGFweHVYUVpEbkV0a2JRYjZiIiwiYXBwbGljYXRpb25faWQiOiJhcHBsaWNhdGlvbnxLbGxxcUs3VER6a3k4bUhua2JNd3ZGcTRueEd6Iiwib3JnYW5pemF0aW9uX2lkIjoiZGV2ZWxvcGVyfFJablkzYnFjeUo5WEFrQ0JBeHFObXRNWXFuZDQiLCJpYXQiOjE1MTc1OTE2OTV9.c0zvqM4uKuES4NKFv8QrnDV4KAf5xbphoBlen_4ikhk"}
		    });
		}
		
		</script>

 	<script type="text/javascript" src="/cesium4/cesium-helper.js"></script>  
 	<script type="text/javascript" src="/cesium4/cesium_path_mission.js"></script>
  	<script type="text/javascript" src="/cesium4/cesium-mod-mapdata.js"></script>
	<script type="text/javascript" src="/cesium4/path_mission.js"></script>
 
    
	  <script src="/js/modernizr.js?v=1.4.22"></script>
	  <!-- Compiled CSS -->
      <link rel="stylesheet" href="/css/site.css?v=1.4.22">
      
      <link type="text/css" rel="stylesheet" href="/css/layout-default-latest.css" />
      
	<style type="text/css">

	p {
		font-size:		1em;
		margin:			1ex 0;
	}
	p.buttons {
		text-align:		center;
		line-height:	2.5em;
	}
	button {
		line-height:	normal;
	}
	.hidden {
		display:		none;
	}

	/*
	 *	Rules for simulated drop-down/pop-up lists
	 */
	ul {
		/* rules common to BOTH inner and outer UL */
		z-index:	100000;
		margin:		1ex 0;
		padding:	0;
		list-style:	none;
		cursor:		pointer;
		border:		1px solid Black;
		/* rules for outer UL only */
		width:		15ex;
		position:	relative;
	}
	ul li {
		background-color: #EEE;
		padding: 0.15em 1em 0.3em 5px;
	}
	ul ul {
		display:	none;
		position:	absolute;
		width:		100%;
		left:		-1px;
		/* Pop-Up */
		bottom:		0;
		margin:		0;
		margin-bottom: 1.55em;
	}
	.ui-layout-north ul ul {
		/* Drop-Down */
		bottom:		auto;
		margin:		0;
		margin-top:	1.45em;
	}
	ul ul li		{ padding: 3px 1em 3px 5px; }
	ul ul li:hover	{ background-color: #FF9; }
	ul li:hover ul	{ display:	block; background-color: #EEE; }

	</style>
	
	<!-- LAYOUT v 1.3.0 -->
	<script type="text/javascript" src="/js/jquery-latest.js"></script>
	<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
	<script type="text/javascript" src="/js/jquery.layout-1.3.0.rc30.80.js"></script>

	<script type="text/javascript" src="/js/debug.js"></script>

	<script type="text/javascript">

	function toggleLiveResizing () {
		$.each( $.layout.config.borderPanes, function (i, pane) {
			var o = myLayout.options[ pane ];
			o.livePaneResizing = !o.livePaneResizing;
		});
	};
	
	function toggleStateManagement ( skipAlert, mode ) {
		if (!$.layout.plugins.stateManagement) return;

		var options	= myLayout.options.stateManagement
		,	enabled	= options.enabled // current setting
		;
		if ($.type( mode ) === "boolean") {
			if (enabled === mode) return; // already correct
			enabled	= options.enabled = mode
		}
		else
			enabled	= options.enabled = !enabled; // toggle option

		if (!enabled) { // if disabling state management...
			myLayout.deleteCookie(); // ...clear cookie so will NOT be found on next refresh
			if (!skipAlert)
				alert( 'This layout will reload as the options specify \nwhen the page is refreshed.' );
		}
		else if (!skipAlert)
			alert( 'This layout will save & restore its last state \nwhen the page is refreshed.' );

		// update text on button
		var $Btn = $('#btnToggleState'), text = $Btn.html();
		if (enabled)
			$Btn.html( text.replace(/Enable/i, "Disable") );
		else
			$Btn.html( text.replace(/Disable/i, "Enable") );
	};

	// set EVERY 'state' here so will undo ALL layout changes
	// used by the 'Reset State' button: myLayout.loadState( stateResetSettings )
	var stateResetSettings = {
		north__size:		"auto"
	,	north__initClosed:	false
	,	north__initHidden:	false
	,	south__size:		200
	,	south__initClosed:	false
	,	south__initHidden:	false
	,	west__size:			200
	,	west__initClosed:	false
	,	west__initHidden:	false
	,	east__size:			300
	,	east__initClosed:	false
	,	east__initHidden:	false
	};

	var myLayout;

	$(document).ready(function () {

		// this layout could be created with NO OPTIONS - but showing some here just as a sample...
		// myLayout = $('body').layout(); -- syntax with No Options

		myLayout = $('body').layout({

		//	reference only - these options are NOT required because 'true' is the default
			closable:					true	// pane can open & close
		,	resizable:					true	// when open, pane can be resized 
		,	slidable:					true	// when closed, pane can 'slide' open over other panes - closes on mouse-out
		,	livePaneResizing:			true

		//	some resizing/toggling settings
		,	north__slidable:			false	// OVERRIDE the pane-default of 'slidable=true'
		,	north__togglerLength_closed: '100%'	// toggle-button is full-width of resizer-bar
		,	north__spacing_closed:		20		// big resizer-bar when open (zero height)
		/*
		,	south__resizable:			true	// OVERRIDE the pane-default of 'resizable=true'
		,	south__spacing_open:		0		// no resizer-bar when open (zero height)
		,	south__spacing_closed:		20		// big resizer-bar when open (zero height)
         */
 		,	south__size:					300
		,	south__minSize:				200
		,	south__maxSize:				.8 // 50% of layout width
		//	some pane-size settings
		,	west__minSize:				100
		,	east__size:					300
		,	east__minSize:				200
		,	east__maxSize:				.5 // 50% of layout width
		,	center__minWidth:			100

		//	some pane animation settings
		,	west__animatePaneSizing:	false
		,	west__fxSpeed_size:			"fast"	// 'fast' animation when resizing west-pane
		,	west__fxSpeed_open:			1000	// 1-second animation when opening west-pane
		,	west__fxSettings_open:		{ easing: "easeOutBounce" } // 'bounce' effect when opening
		,	west__fxName_close:			"none"	// NO animation when closing west-pane

		//	enable showOverflow on west-pane so CSS popups will overlap north pane
		,	west__showOverflowOnHover:	true

		//	enable state management
		,	stateManagement__enabled:	true // automatic cookie load & save enabled by default

		,	showDebugMessages:			true // log and/or display messages from debugging & testing code
		});

		// if there is no state-cookie, then DISABLE state management initially
		var cookieExists = !$.isEmptyObject( myLayout.readCookie() );
		//if (!cookieExists) toggleStateManagement( true, false );

		myLayout
			// add event to the 'Close' button in the East pane dynamically...
			//.bindButton('#btnCloseEast', 'close', 'east')
	
			// add event to the 'Toggle South' buttons in Center AND South panes dynamically...
			//.bindButton('.south-toggler', 'toggle', 'south')
			
			// add MULTIPLE events to the 'Open All Panes' button in the Center pane dynamically...
			//.bindButton('#openAllPanes', 'open', 'north')
			//.bindButton('#openAllPanes', 'open', 'south')
			//.bindButton('#openAllPanes', 'open', 'west')
			//.bindButton('#openAllPanes', 'open', 'east')

			// add MULTIPLE events to the 'Close All Panes' button in the Center pane dynamically...
			//.bindButton('#closeAllPanes', 'close', 'north')
			//.bindButton('#closeAllPanes', 'close', 'south')
			//.bindButton('#closeAllPanes', 'close', 'west')
			//.bindButton('#closeAllPanes', 'close', 'east')

			// add MULTIPLE events to the 'Toggle All Panes' button in the Center pane dynamically...
			.bindButton('#toggleAllPanes', 'toggle', 'north')
			.bindButton('#toggleAllPanes', 'toggle', 'south')
			.bindButton('#toggleAllPanes', 'toggle', 'west')
			.bindButton('#toggleAllPanes', 'toggle', 'east')
		;


		/*
		 *	DISABLE TEXT-SELECTION WHEN DRAGGING (or even _trying_ to drag!)
		 *	this functionality will be included in RC30.80
		 */
		$.layout.disableTextSelection = function(){
			var $d	= $(document)
			,	s	= 'textSelectionDisabled'
			,	x	= 'textSelectionInitialized'
			;
			if ($.fn.disableSelection) {
				if (!$d.data(x)) // document hasn't been initialized yet
					$d.on('mouseup', $.layout.enableTextSelection ).data(x, true);
				if (!$d.data(s))
					$d.disableSelection().data(s, true);
			}
			//console.log('$.layout.disableTextSelection');
		};
		$.layout.enableTextSelection = function(){
			var $d	= $(document)
			,	s	= 'textSelectionDisabled';
			if ($.fn.enableSelection && $d.data(s))
				$d.enableSelection().data(s, false);
			//console.log('$.layout.enableTextSelection');
		};
		$(".ui-layout-resizer")
			.disableSelection() // affects only the resizer element
			.on('mousedown', $.layout.disableTextSelection ); // affects entire document

 	});
	</script>
    
</head> 
<body style="overflow-x: hidden;overflow-y: hidden">  
 

 

<div class="ui-layout-south">
 하단
</div>

<div class="ui-layout-east">
<%--
<button id="btnCloseEast">[Close]</button>
 --%>
</div>

<div class="ui-layout-center">
		<!-- these buttons have event added dynamically in document.ready -->
  
		<button id="toggleAllPanes">전체화면</button>

 
	 

 
</div>
</body>
</html>
