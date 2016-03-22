<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HighChartsTest</title>
<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="js/highstock.src.js"></script>
<script type="text/javascript">
	stockData = [ [ 1456810200000, 148.50, 152.00, 148.50, 152.00 ],
			[ 1456896600000, 154.00, 154.50, 153.00, 153.00 ],
			[ 1456983000000, 154.00, 154.50, 153.00, 154.00 ],
			[ 1457069400000, 153.00, 153.50, 151.50, 152.50 ],
			[ 1457328600000, 152.50, 153.50, 151.00, 152.00 ],
			[ 1457415000000, 151.00, 152.00, 149.50, 152.00 ],
			[ 1457501400000, 152.00, 153.00, 150.50, 153.00 ],
			[ 1457587800000, 153.00, 154.50, 151.50, 154.50 ],
			[ 1457674200000, 154.50, 155.00, 153.00, 155.00 ] ];
	colorArray = new Array();
	for (var i = 0; i < stockData.length; i++) {
		if (i == 0) {
			colorArray.push("gray");
			continue;
		}
		if (stockData[i][4] - stockData[i - 1][4] > 0) {
			colorArray.push("red");
		} else if (stockData[i][4] - stockData[i - 1][4] == 0) {
			colorArray.push("gray");
		} else {
			colorArray.push("green");
		}
	}
	$(function() {
Highcharts.setOptions({
			global : {
				timezoneOffset : -8 * 60
			},
			lang :{
				shortMonths : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月',
						'9月', '10月', '11月', '12月' ],
				weekdays : [ '星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']
}
});

$('#container').highcharts('StockChart',{
							navigator : {
								xAxis : {
									dateTimeLabelFormats : {
										day : '%b%e日'
									}
								}
							},

							xAxis : {
								dateTimeLabelFormats : {
									day : '%b%e日'
								}
							},

							yAxis : [ {
								labels : {
									align : 'right',
									x : -3
								},
								title : {
									text : 'TSMC'
								},
								height : '60%',
								lineWidth : 2
							}, {
								labels : {
									align : 'right',
									x : -3
								},
								title : {
									text : 'Volume'
								},
								top : '65%',
								height : '35%',
								offset : 0,
								lineWidth : 2
							} ],

							rangeSelector : {
								selected : 1,
								inputDateFormat : '%Y年%b%e日'
							},

							title : {
								text : 'Test Stock Chart'
							},

							plotOptions: {
								candlestick : {
									color : 'green',
									upColor : 'red',
									lineColor : 'green',
									upLineColor : 'red',
									tooltip : {
										dateTimeLabelFormats : {
											minute : '%A, %b%e日, %Y'
										},
										pointFormat : '<b>{series.name}</b><br/>'
												+ '開盤: {point.open}<br/>'
												+ '最高: {point.high}<br/>'
												+ '最低: {point.low}<br/>'
												+ '收盤: {point.close}<br/>'
									}
								},
column:{
									colorByPoint : true,
									colors : colorArray,
									tooltip : {
										pointFormat : '<span>{series.name}: {point.y}<br/>'
									}
								}
							},

							series : [
									{
										type : 'candlestick',
										name : '2330 台積電',
										data :stockData
},{
										type : 'column',
										name : '成交量',
										data : [ [ 1456810200000, 38629 ],
												[ 1456896600000, 36010 ],
												[ 1456983000000, 28822 ],
												[ 1457069400000, 32794 ],
												[ 1457328600000, 23906 ],
												[ 1457415000000, 35683 ],
												[ 1457501400000, 24044 ],
												[ 1457587800000, 28302 ],
												[ 1457674200000, 29566 ] ],
										yAxis : 1
									} ]
						});
	});
</script>
</head>
<body>
	<div id="container" style="width: 100%; height: 400px;"></div>
</body>
</html>