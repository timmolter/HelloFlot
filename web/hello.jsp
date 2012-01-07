<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <title>@TITLE@</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.flot.js"></script>
	    </head>
    <body>
        
    <div id="placeholder" style="width:300px;height:200px;"></div>
    <div id="plotdatasnippet"></div>

	<script type="text/javascript">
		$(function () {
		    var options = {
		    	series: { shadowSize: 0 },
		    	lines: { show: true },
		        points: { show: false },
		        xaxes: [ { mode: 'time' } ],
				yaxes: [ { alignTicksWithAxis: 1, position: 'right' } ]
				
			};
		    var data = [];
		    var placeholder = $("#placeholder");
		    
		    $.plot(placeholder, data, options);
				
		    $.getJSON('hello', function(series) {
		   		  
				// create chart
				$.plot(placeholder, [{ data: series.redteam, label: "Red Team" },
				        			 { data: series.blueteam, label: "Blue Team", yaxis: 2 }], options);
				
			});
		});
	</script>    
</body>
</html>