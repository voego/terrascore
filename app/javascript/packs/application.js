import "bootstrap";
import Chart from 'chart.js/dist/Chart.bundle.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { makeFirstQuestionDivVisible } from '../components/answernew';
import { untickOtherCheckboxes } from '../components/answernew';
import { postOptionsOnSubmit } from '../components/answernew';
import { nextButtonAction } from '../components/answernew';
import { previousButtonAction } from '../components/answernew';

initUpdateNavbarOnScroll();
makeFirstQuestionDivVisible();
untickOtherCheckboxes();
postOptionsOnSubmit();
nextButtonAction();
previousButtonAction();

const travelScore = parseInt(document.getElementById("travel_value").innerHTML);
const homeScore = parseInt(document.getElementById("home_value").innerHTML);
const consumptionScore = parseInt(document.getElementById("consumption_value").innerHTML);

const scoreHistory = document.getElementById("score_history_value").innerHTML;

var dataScoreHistory = scoreHistory.split(',').map(function(item) {
    return parseInt(item, 10);
});
const travelHistoryScore = parseInt(document.getElementById("travel_value").innerHTML);
const homeHistoryScore = parseInt(document.getElementById("home_value").innerHTML);
var chartArray = [travelScore, homeScore, consumptionScore];
var scoreHistoryChart = document.querySelector(".scoreHistoryChart")
var score_history_breakdown = JSON.parse(scoreHistoryChart.dataset.score_historicals);
var scoreMinDate = new Date(scoreHistoryChart.dataset.minDate);
var scoreMaxDate = new Date(scoreHistoryChart.dataset.maxDate);

var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['Travel', 'Home', 'Consumption'],
        datasets: [{
            label: 'Score',
            data: chartArray,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
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
        centerText: {
        display: true,
        text: "280"
    },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
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
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
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

var ctx_home = document.getElementById('homeHistoryChart');
var myHomeChart = new Chart(ctx_home, {
    type: 'line',
    data: {
        labels: ['Home'],
        datasets: [{
            label: 'Score',
            data: chartArray,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
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
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
 });

