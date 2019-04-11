<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<title>csv2json.com</title>
		<meta name="keywords" content="csv2json" />
		<meta name="description" content="csv2json">
		<link rel='dns-prefetch' href='//cdn.staticfile.org' />
		<meta property="qc:admins" content="14002146716252376637571563176" />
		<script src="//cdn.staticfile.org/jquery/1.9.1/jquery.min.js"></script>
		<link  href="//cdn.staticfile.org/twitter-bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
		<script src="//cdn.staticfile.org/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link href="//cdn.staticfile.org/layer/2.3/skin/layer.css" rel="stylesheet">
		<script src="//cdn.staticfile.org/clipboard.js/1.7.1/clipboard.min.js"></script>
		<script>
			var NewVer = 20190411;
		</script>
	</head>

	<body>
		<div class="aw-container-wrap">
			<div class="container">
				<div class="row">
					<div class="aw-content-wrap clearfix">
						<div class=" aw-main-content" style="min-height:700px;max-height:2000px">
							<script>
							var showaban = true;
								var storageKey = "newtools20190315";
								if(window.localStorage.getItem(storageKey)==null){
									$("#jsontools").after('<span class="newFeatureTip">●</span>');
									
									$("#jsonsort").before('<span class="newItem">●</span>');
									document.getElementById("jsonsort").onmouseover = function(){
										window.localStorage.setItem(storageKey,"has");
										$(".newFeatureTip").text('');
									}
								}
							</script>
							<div style="clear:both"></div>
							<style>
							.a2016{
								color: white; 
								font-family:"Microsoft YaHei",微软雅黑,"MicrosoftJhengHei",华文细黑,STHeiti,MingLiu ;
								text-align: center;    background: red;    border-radius: 2px;
							}
							
							.touxiang{
								height: 20px;
								line-height: 45px;
							}
							</style>
<style>
	.panel-body div{float:left;text-align: center;}
	.panel-body textarea{width:100%}
	.panel-body button{margin:5px;}
</style>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="media">
			<div class="media-body">
				<h4 class="media-heading">CSV TO JSON</h4>
			</div>
		</div>

	</div>
	<div class="panel-body">
		<!--内容块开始-->
		<div style="width: 46%;">
			<span>CSV</span>
			<textarea id="csv" name="RawJson" class="json_input" rows="20"  spellcheck="false" placeholder="CSV"></textarea>
		</div>
		<div style="margin-top:20px;">
					<button  id="tojson" ><span class="glyphicon glyphicon-arrow-right"></span></button></p>
					<p><input id="reset" type="button" value="clear"></p>
		</div>
		<div style="width: 46%;" >
			<span>JSON</span>
			<textarea id="json" name="RawJson" class="json_input" rows="20" spellcheck="false" placeholder="JSON"></textarea>
		</div>
		<!--内容块结束-->
	</div>
	<div class="panel-footer"></div>
</div>
<!--<script src="../../../../../../json/outputs/reports.json"></script>-->
<script>
		function repalceFh(c){
			return c.replace(/&gt;/g,">").replace(/&lt;/g,"<").replace(/&quot;/g,"\"");
		}
		$(function(){
		
		$("#tojson").on("click", function(e) {
						/*var xotree = new XML.ObjTree();
					    var dumper = new JKL.Dumper(); 
						var xmlText = $("#xml").val();
						if($("#zyBianma").attr("checked")){
							xmlText = repalceFh(xmlText);
						}
						var tree = xotree.parseXML(xmlText);
						$("#json").val(dumper.dump(tree));*/
						$("#json").load("../../../../../../json/outputs/reports.json");
						//$("#csv").val("haha");
					});
			
		$("#reset").click(function(){
			$("#csv,#json").val("");
			});
		})
			
		</script>

<!-- content ed -->
<script src="//cdn.staticfile.org/layer/2.3/layer.js"></script>
</div></div></div></div></div>
</script>
<script src="https://s9.cnzz.com/z_stat.php?id=3302454&web_id=3302454" async="async" language="JavaScript"></script>

</div>
</body></html>