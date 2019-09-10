import "bootstrap";
import Chart from 'chart.js/dist/Chart.bundle.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

const submitButton = document.getElementById("submit");
const checkboxArray = [...document.querySelectorAll("input")];
const questionDivArray = [...document.querySelectorAll(".question")]
const travelScore = parseInt(document.getElementById("travel_value").innerHTML);
const homeScore = parseInt(document.getElementById("home_value").innerHTML);
const consumptionScore = parseInt(document.getElementById("consumption_value").innerHTML);

const scoreHistory = document.getElementById("score_history_value").innerHTML;

var dataScoreHistory = scoreHistory.split(',').map(function(item) {
    return parseInt(item, 10);
});
// const travelHistoryScore = parseInt(document.getElementById("travel_value").innerHTML);
// const homeHistoryScore = parseInt(document.getElementById("home_value").innerHTML);
var chartArray = [travelScore, homeScore, consumptionScore]

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

var ctx_score_history = document.getElementById('scoreHistoryChart');
var myScoreHistoryChart = new Chart(ctx_score_history, {
    type: 'line',
    data: {
        labels: ['Travel'],
        datasets: [{
            label: 'Score',
            data: [{
                y: 48,
                x: new Date("January 20")
            }, {
                y: 40,
                x: new Date("February 20")
            }, {
                y: 19,
                x: new Date("March 20")
            } ],
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
                   unit:"year",
                   displayFormats:{year:'YYYY'},
                   min:'2000' ,
                   max:'2002',
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


checkboxArray.forEach((checkbox) => {
  checkbox.addEventListener("click", (event) => {
    // select the parent element (div)
    let checkboxChildren = checkbox.parentElement.querySelectorAll("input")
    // untick all of the other checkboxes
    checkboxChildren.forEach((box) => {
      box.checked = false
    })
    event.currentTarget.checked = true;
  })
});

submitButton.addEventListener("click", (event) => {
  let saved = [];
  document.querySelectorAll("input").forEach((checkbox) => {
    if (checkbox.checked) {
      saved.push(checkbox.dataset.option)
    };
  });
  let railsToken = document.querySelector('meta[name=csrf-token]').content;
  fetch(`http://localhost:3000/answers?options=${saved}`, {
    method: "POST",
    headers: {
      "X-CSRF-Token": railsToken
    }
  })
});

initUpdateNavbarOnScroll();
