// google.load("visualization", "1", {packages:["corechart"]});
// google.setOnLoadCallback(drawChart);

graphData = window.graphData

function profileChart() {  
  var data = google.visualization.arrayToDataTable(graphData);
  
  var options = {
    title: 'Profile information',
    is3D: true,
    height: 300,
    width: 478,
    fontSize: 15,
    chartArea: { left:20, top:50, width:"100%", height:"75%" },
    colors:['#48B9C6', '#A2DAB5', '#ED1C24', '#EBE539', '#3082B9', '#96BD03'] // colors of the nodes are defined here
  };

  var chart = new google.visualization.PieChart(document.getElementById('profile_chart'));
  chart.draw(data, options);
}