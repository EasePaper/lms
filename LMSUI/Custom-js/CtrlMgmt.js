function energySaver() {
    if (!$("#switch3").is(":checked")) {
        // do something if the checkbox is NOT checked
   
        $("#energySaver :input").attr("disabled", true);
    }  else {
        $("#energySaver :input").attr("disabled", false);
    }
      
        
}
function motionSensor() {
    if (!$("#switch").is(":checked")) {
        // do something if the checkbox is NOT checked
        $("#motionsensor :input").attr("disabled", true);

        $("#motionsensordiv :input").attr("disabled", true);
    } else {
        $("#motionsensordiv :input").attr("disabled", false);
    }


}

var chart = Highcharts.chart('container', {

    chart: {
        type: 'column'
    },

    title: {
        text: ' responsive chart'
    },

    subtitle: {
        text: 'Resize the frame or click buttons to change appearance'
    },

    legend: {
        align: 'right',
        verticalAlign: 'middle',
        layout: 'vertical'
    },

    xAxis: {
        categories: ['Apples', 'Oranges', 'Bananas'],
        labels: {
            x: -10
        }
    },

    yAxis: {
        allowDecimals: false,
        title: {
            text: 'Amount'
        }
    },

    series: [{
        name: 'Christmas Eve',
        data: [1, 4, 3]
    }, {
        name: 'Christmas Day before dinner',
        data: [6, 4, 2]
    }, {
        name: 'Christmas Day after dinner',
        data: [8, 4, 3]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    align: 'center',
                    verticalAlign: 'bottom',
                    layout: 'horizontal'
                },
                yAxis: {
                    labels: {
                        align: 'left',
                        x: 0,
                        y: -5
                    },
                    title: {
                        text: null
                    }
                },
                subtitle: {
                    text: null
                },
                credits: {
                    enabled: false
                }
            }
        }]
    }
});

    
