<!DOCTYPE html>
<html>
<head>
	
	<title>h.264 To fmp4</title>  
 
</head>
<body>
    <h2>h.264 To fmp4</h2>

 
   <script type="text/javascript" src="/wfs/wfs.js" ></script>  
  
   <div class="wfsjs">
   <video id="video1"  width="640" height="480" controls></video> 
   <div class="ratio"></div>
   </div>

   <div class="wfsjs2">
   <video id="video2"  width="640" height="480" controls></video>
   <div class="ratio2"></div>
   </div>
 
    <script>
 
	window.onload = function () {
        if (Wfs.isSupported()) {
        	
            var video1 = document.getElementById("video1"),
            wfs = new Wfs();    
            wfs.attachMedia(video1,'ch1');
         
            var video2 = document.getElementById("video2"),
            wfs2 = new Wfs();
            wfs2.attachMedia(video2,'ch2'); 

  
        }
    };

 
    </script>
	
</body>
</html>