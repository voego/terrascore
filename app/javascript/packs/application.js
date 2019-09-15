import "bootstrap";
import Chart from 'chart.js/dist/Chart.bundle.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { makeFirstCategoryDivVisible } from '../components/answernew';
import { untickOtherCheckboxes } from '../components/answernew';
import { postOptionsOnSubmit } from '../components/answernew';
import { nextButtonAction } from '../components/answernew';
import { previousButtonAction } from '../components/answernew';
import { showSubmit } from '../components/answernew';
import { scrollOnCheck } from '../components/answernew';
import { progressBar } from '../components/answernew';
import { openNav } from '../components/pushlanding';
import { closeNav } from '../components/pushlanding';


openNav();
closeNav();
initUpdateNavbarOnScroll();
makeFirstCategoryDivVisible();
untickOtherCheckboxes();
postOptionsOnSubmit();
nextButtonAction();
previousButtonAction();
scrollOnCheck();
progressBar();
// showSubmit();


// const travelScore = parseInt(document.getElementById("travel_value").innerHTML);
// const homeScore = parseInt(document.getElementById("home_value").innerHTML);
// const consumptionScore = parseInt(document.getElementById("consumption_value").innerHTML);

// const scoreHistory = document.getElementById("score_history_value").innerHTML;

// var dataScoreHistory = scoreHistory.split(',').map(function(item) {
//     return parseInt(item, 10);
// });
// const travelHistoryScore = parseInt(document.getElementById("travel_value").innerHTML);
// const homeHistoryScore = parseInt(document.getElementById("home_value").innerHTML);
// var chartArray = [travelScore, homeScore, consumptionScore];


var scoreHistoryChart = document.querySelector(".scoreHistoryChart")
var score_history_breakdown = JSON.parse(scoreHistoryChart.dataset.scoreHistoricals);

var scoreMinDate = new Date(scoreHistoryChart.dataset.minDate);
var scoreMaxDate = new Date(scoreHistoryChart.dataset.maxDate);

var scoreChart = document.querySelector(".scoreChart")
var score_breakdown = JSON.parse(scoreChart.dataset.score_total);
var score_total_breakdown = [score_breakdown.travel, score_breakdown.home, score_breakdown.consumption];

var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['Travel', 'Home', 'Consumption'],
        datasets: [{
            label: 'Score',
            data: score_total_breakdown,
            backgroundColor: [
                'rgba(255,255,255, 0.8)',
                'rgba(255,255,255, 0.8)',
                'rgba(255,255,255, 0.8)',
                'rgba(255,255,255, 0.8)'
            ],
            borderColor: [
                    ' rgba(255,215,0, 1)',
                    ' rgba(255,215,0, 1)',
                    ' rgba(255,215,0, 1)',
                   ' rgba(255,215,0, 1)'
            ],
            borderWidth: 2
        }]
    },
    options: {
          responsive: true,
    legend: {
      display: true
    },
           title: {
            display: true,
            text: 'Your current total score',
            fontSize: 30,
            fontColor: '#FFFFFF'
          },
        scales: {
          xAxes: [{
            display: false
          }],
            yAxes: [{
              display: false
            }]
        }
    }
});

var date_score_history_breakdown = [];
score_history_breakdown.forEach((score) => {
  let newScore = {
    y: score.y,
    x: new Date(score.x)
  }
  date_score_history_breakdown.push(newScore)
})

var ctx_score_history = document.getElementById('myScoreHistoryChart');
var scoreHistoryChart = new Chart(ctx_score_history, {
    type: 'line',
    data: {
        labels: ['Score'],
        datasets: [{
            label: 'Score',
            data: date_score_history_breakdown,
            backgroundColor: [
                'rgba(255,255,255, 0.2)'
            ],
            borderColor: [
                'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      title: {
            display: true,
            text: 'Your historical total scores',
            fontSize: 30,
            fontColor: '#FFFFFF'
          },
        scales: {
             xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                   unit:"day",
                   displayFormats:{month:'MMM D'},
                   min: scoreMinDate,
                   max: scoreMaxDate,
                }
              }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

var homeScoreHistoryChart = document.querySelector(".homeHistoryChart")
var home_score_history_breakdown = JSON.parse(homeScoreHistoryChart.dataset.home_score_historicals);

var date_home_score_history_breakdown = [];
home_score_history_breakdown.forEach((score) => {
  let newScore = {
    y: score.y,
    x: new Date(score.x)
  }
  date_home_score_history_breakdown.push(newScore)
})

var ctx_home = document.getElementById('myHomeHistoryChart');
var myHomeChart = new Chart(ctx_home, {
    type: 'line',
    data: {
        labels: ['Home'],
        datasets: [{
            label: 'Score',
            data: date_home_score_history_breakdown,
            backgroundColor: [
              'rgba(255,255,255, 0.2)'
            ],
            borderColor: [
                'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      title: {
            display: true,
            text: 'Your historical home scores',
            fontSize: 30,
            fontColor: '#FFFFFF'
          },
        scales: {
          xAxes: [{
            type: 'time',
                distribution: 'series',
                  time: {
                   unit:"day",
                   displayFormats:{month:'MMM D'},
                   min: scoreMinDate,
                   max: scoreMaxDate,
                }
        }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
 });

var travelScoreHistoryChart = document.querySelector(".travelHistoryChart")
var travel_score_history_breakdown = JSON.parse(travelScoreHistoryChart.dataset.travel_score_historicals);

var date_travel_score_history_breakdown = [];
travel_score_history_breakdown.forEach((score) => {
  let newScore = {
    y: score.y,
    x: new Date(score.x)
  }
  date_travel_score_history_breakdown.push(newScore)
})

var ctx_travel = document.getElementById('myTravelHistoryChart');
var myTravelChart = new Chart(ctx_travel, {
    type: 'line',
    data: {
        labels: ['Travel'],
        datasets: [{
            label: 'Score',
            data: date_travel_score_history_breakdown,
            backgroundColor: [
               'rgba(255,255,255, 0.2)'
            ],
            borderColor: [
                'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      title: {
            display: true,
            text: 'Your historical travel scores',
            fontSize: 30,
            fontColor: '#FFFFFF'
          },
        scales: {
          xAxes: [{
            type: 'time',
                distribution: 'series',
                  time: {
                   unit:"day",
                   displayFormats:{month:'MMM D'},
                   min: scoreMinDate,
                   max: scoreMaxDate,
                }
        }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
 });

var consumptionScoreHistoryChart = document.querySelector(".consumptionHistoryChart")
var consumption_score_history_breakdown = JSON.parse(consumptionScoreHistoryChart.dataset.consumption_score_historicals);

var date_consumption_score_history_breakdown = [];
consumption_score_history_breakdown.forEach((score) => {
  let newScore = {
    y: score.y,
    x: new Date(score.x)
  }
  date_consumption_score_history_breakdown.push(newScore)
})

var ctx_consumption = document.getElementById('myConsumptionHistoryChart');
var myConsumptionChart = new Chart(ctx_consumption, {
    type: 'line',
    data: {
        labels: ['Travel'],
        datasets: [{
            label: 'Score',
            data: date_consumption_score_history_breakdown,
            backgroundColor: [
              'rgba(255,255,255, 0.2)'
            ],
            borderColor: [
                'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      title: {
            display: true,
            text: 'Your historical consumption scores',
            fontSize: 30,
            fontColor: '#FFFFFF'
          },
        scales: {
          xAxes: [{
            type: 'time',
                distribution: 'series',
                  time: {
                   unit:"day",
                   displayFormats:{month:'MMM D'},
                   min: scoreMinDate,
                   max: scoreMaxDate,
                }
        }],
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
 });
