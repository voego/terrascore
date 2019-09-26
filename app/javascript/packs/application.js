import "bootstrap";
import Chart from 'chart.js/dist/Chart.bundle.js';
// import { initUpdateNavbarOnScroll } from '../components/navbar';
import { makeFirstCategoryDivVisible } from '../components/answernew';
import { untickOtherCheckboxes } from '../components/answernew';
import { postOptionsOnSubmit } from '../components/answernew';
import { nextButtonAction } from '../components/answernew';
import { previousButtonAction } from '../components/answernew';
import { showSubmit } from '../components/answernew';
import { scrollOnCheck } from '../components/answernew';
import { progressBar } from '../components/answernew';
import { openNav } from '../components/pushlanding';
// import { closeNav } from '../components/pushlanding';


openNav();
// closeNav();
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
var i = 0;
var txt = "Improve your score"
var speed = 30;

var plussign = document.querySelector(".plussign");

const typeWriter = () => {
  if (i < txt.length) {
    document.getElementById("displaytypewriter").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}

const removeText = () => {
  document.getElementById("displaytypewriter").innerHTML = '';
  i = 0;
}


if (plussign) {
  plussign.addEventListener("mouseenter", typeWriter);
  plussign.addEventListener("mouseout", removeText);
};

var poundsign = document.querySelector(".poundsign");
var txt2 = "Donate to a charity of your choice"
const typeWriter2 = () => {
  if (i < txt2.length) {
    document.getElementById("displaytypewriter2").innerHTML += txt2.charAt(i);
    i++;
    setTimeout(typeWriter2, speed);
  }
}

const removeText2 = () => {
  document.getElementById("displaytypewriter2").innerHTML = '';
  i = 0;
}


if (poundsign) {
  poundsign.addEventListener("mouseenter", typeWriter2);
  poundsign.addEventListener("mouseout", removeText2);
};

let denominator = document.getElementById("denominator");
if (denominator) {

var scoreHistoryChart = document.querySelector(".scoreHistoryChart")
var score_history_breakdown = JSON.parse(scoreHistoryChart.dataset.scoreHistoricals);

var scoreMinDate = new Date(scoreHistoryChart.dataset.minDate);
var scoreMaxDate = new Date(scoreHistoryChart.dataset.maxDate);

var scoreChart = document.querySelector(".scoreChart")
var score_breakdown = JSON.parse(scoreChart.dataset.score_total);
var score_total_breakdown = [score_breakdown.travel, score_breakdown.home, score_breakdown.consumption, score_breakdown.society, score_breakdown.remainder];

var ctx = document.getElementById('myChart');

var scoreDisplay = document.querySelector(".scoreChart");
var scoreHistoryDisplay = document.querySelector(".scoreHistoryChart");
var travelDisplay = document.querySelector(".travelHistoryChart");
var homeDisplay = document.querySelector(".homeHistoryChart");
var consumptionDisplay = document.querySelector(".consumptionHistoryChart");
var societyDisplay = document.querySelector(".societyHistoryChart");

// var share = document.querySelector(".socialclick");
// var sharebox = document.querySelector(".social");
// var shareicon = document.getElementById("socialmedia");
var scoreButton = document.querySelectorAll(".button");
console.log(scoreButton);
// share.onclick = function(event) {
//   console.log("morph");

//   sharebox.classList.add("expand");
//   if (sharebox.classList.contains("expand")) {
//     sharebox.classList.remove("expand");
//     shareicon.classList.add("hide");
//     shareicon.classList.remove("fade-in");
//     } else {
//       sharebox.classList.add("expand");
//     setTimeout(shareicon.classList.remove("hide"), 2000);
//     shareicon.classList.add("fade-in");
//     }

// }

var historyScoreButton = document.querySelector(".historyButton");

scoreButton.forEach(function(element) {
  element.onclick = function(event){
  console.log("clicked");

  if (travelDisplay.style.display = travelDisplay.style.display === "block") {
    travelDisplay.classList.add('fade-out');
    setTimeout(travelDisplay.classList.remove('fade-in'), 2000);
    setTimeout(travelDisplay.classList.add('hide'), 2000);
  };

  if (homeDisplay.style.display = homeDisplay.style.display === "block") {
    homeDisplay.classList.add('fade-out');
    setTimeout(homeDisplay.classList.remove('fade-in'), 2000);
    setTimeout(homeDisplay.classList.add('hide'), 2000);
  };

  if (consumptionDisplay.style.display = consumptionDisplay.style.display === "block") {
    consumptionDisplay.classList.add('fade-out');
    setTimeout(consumptionDisplay.classList.remove('fade-in'), 2000);
    setTimeout(consumptionDisplay.classList.add('hide'), 2000);
  };

  if (societyDisplay.style.display = societyDisplay.style.display === "block") {
    societyDisplay.classList.add('fade-out');
    setTimeout(societyDisplay.classList.remove('fade-in'), 2000);
    setTimeout(societyDisplay.classList.add('hide'), 2000);
  };

  scoreDisplay.classList.remove('hide');
  scoreDisplay.classList.add('fade-in');
  scoreDisplay.classList.remove('fade-out');
  scoreHistoryDisplay.classList.add('hide');
  scoreHistoryDisplay.classList.remove('fade-in');
  scoreHistoryDisplay.classList.add('fade-out');

};
})


historyScoreButton.onclick = function(event){
  // console.log("clicked");

  // if (travelDisplay.style.display = travelDisplay.style.display === "block") {
  //   travelDisplay.classList.add('fade-out');
  //   setTimeout(travelDisplay.classList.remove('fade-in'), 2000);
  //   setTimeout(travelDisplay.classList.add('hide'), 2000);
  // };
  // if (homeDisplay.style.display = homeDisplay.style.display === "block") {
  //   homeDisplay.classList.add('fade-out');
  //   setTimeout(homeDisplay.classList.remove('fade-in'), 2000);
  //   setTimeout(homeDisplay.classList.add('hide'), 2000);
  // };

  // if (consumptionDisplay.style.display = consumptionDisplay.style.display === "block") {
  //   consumptionDisplay.classList.add('fade-out');
  //   setTimeout(consumptionDisplay.classList.remove('fade-in'), 2000);
  //   setTimeout(consumptionDisplay.classList.add('hide'), 2000);
  // };

  // if (societyDisplay.style.display = societyDisplay.style.display === "block") {
  //   societyDisplay.classList.add('fade-out');
  //   setTimeout(societyDisplay.classList.remove('fade-in'), 2000);
  //   setTimeout(societyDisplay.classList.add('hide'), 2000);
  // };

  scoreDisplay.classList.add('fade-out');
  setTimeout(scoreDisplay.classList.remove('fade-in'), 2000);
  setTimeout(scoreDisplay.classList.add('hide'), 2000);

  scoreHistoryDisplay.classList.remove('hide');
  scoreHistoryDisplay.classList.add('fade-in');
  scoreHistoryDisplay.classList.remove('fade-out');
};




const handleClick = (evt) => {
  var activeElement = myChart.getElementAtEvent(evt);
  if (activeElement[0]._index == 0) {
         // scoreDisplay.style.display = "none";
      // let addHide = (chart) => {
      //   chart.classList.add('hide')
      // }
      setTimeout(() => {
        scoreDisplay.classList.add('hide');
      }, 3000)

      scoreDisplay.classList.add('fade-out');
      scoreDisplay.classList.remove('fade-in');
      let changeTravelDisplay = () => {
        console.log(travelDisplay.style.display);
        travelDisplay.style.display = travelDisplay.style.display === "block" ? "none" : "block";
      }
    travelDisplay.classList.remove('hide');
    setTimeout(changeTravelDisplay, 2000)
  } else if (activeElement[0]._index == 1) {
     // scoreDisplay.style.display = "none";
     setTimeout(() => {
        scoreDisplay.classList.add('hide');
      }, 3000)
    scoreDisplay.classList.add('fade-out');
    scoreDisplay.classList.remove('fade-in');
    let changeHomeDisplay = () => {
      homeDisplay.style.display = homeDisplay.style.display === "block" ? "none" : "block";
    }
    setTimeout(changeHomeDisplay, 2000)
  } else if (activeElement[0]._index == 2) {
     // scoreDisplay.style.display = "none";
     setTimeout(() => {
        scoreDisplay.classList.add('hide');
      }, 3000)
    scoreDisplay.classList.add('fade-out');
    scoreDisplay.classList.remove('fade-in');
     let changeConsumptionDisplay = () => {
      consumptionDisplay.style.display = consumptionDisplay.style.display === "block" ? "none" : "block";
    }
    setTimeout(changeConsumptionDisplay, 2000)
  } else if (activeElement[0]._index == 3) {
     // scoreDisplay.style.display = "none";
     setTimeout(() => {
        scoreDisplay.classList.add('hide');
      }, 3000)
    scoreDisplay.classList.add('fade-out');
    scoreDisplay.classList.remove('fade-in');
    let changeSocietyDisplay = () => {
      societyDisplay.style.display = societyDisplay.style.display === "block" ? "none" : "block";
    }
    setTimeout(changeSocietyDisplay, 2000)
  };

  // Add the hidden class to the doughnut when the click event occurs, and then make the display: none

  console.log(activeElement[0]._index);
  console.log(activeElement);
  console.log(chartConfig.data.datasets[activeElement[0]._datasetIndex].data[activeElement[0]._index])
};

var chartConfig = {
    type: 'doughnut',
    data: {
        labels: ['Travel', 'Home', 'Consumption', 'Society', 'remainder'],
        datasets: [{
            label: 'Score',
            data: score_total_breakdown,
            backgroundColor: [
                'rgba(255, 99, 132, 0.5)',
                'rgba(54, 162, 235, 0.5)',
                'rgba(255, 206, 86, 0.5)',
                'rgba(75, 192, 192, 0.5)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(144, 142, 142, 0.43)',
                'rgba(255, 159, 64, 0)'
            ],
            borderWidth: 2
        }]
    },
    options: {

          responsive: true,
          animation: {
            duration: 8000,
          },
    legend: {
      display: false
    },
    onClick: handleClick,
           title: {
            display: true,
            text: 'Total score',
            fontSize: 30,
            fontFamily: 'Montserrat',
            padding: 40,
            fontColor: '#FFFFFF',
            fontStyle: 'normal'
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
}
var myChart = new Chart(ctx, chartConfig);


// datasets: [{
//       label: "Unavailable",
//       fill: true,
//       backgroundColor: colors.purple.fill,
//       pointBackgroundColor: colors.purple.stroke,
//       borderColor: colors.purple.stroke,
//       pointHighlightStroke: colors.purple.stroke,
//       borderCapStyle: 'butt',
//       data: unavailable,

//     }, {
//       label: "Available for Existing",
//       fill: true,
//       backgroundColor: colors.darkBlue.fill,
//       pointBackgroundColor: colors.darkBlue.stroke,
//       borderColor: colors.darkBlue.stroke,
//       pointHighlightStroke: colors.darkBlue.stroke,
//       borderCapStyle: 'butt',
//       data: availableForExisting,
//     }, {
//       label: "Available",
//       fill: true,
//       backgroundColor: colors.green.fill,
//       pointBackgroundColor: colors.lightBlue.stroke,
//       borderColor: colors.lightBlue.stroke,
//       pointHighlightStroke: colors.lightBlue.stroke,
//       borderCapStyle: 'butt',
//       data: available,
//     }, {
//       label: "Logged In",
//       fill: true,
//       backgroundColor: colors.green.fill,
//       pointBackgroundColor: colors.green.stroke,
//       borderColor: colors.green.stroke,
//       pointHighlightStroke: colors.green.stroke,
//       data: loggedIn,
//     }]

/////////////////////////// ABOVE IS STACKOVERFLOW
// var date_score_history_breakdown = [];
// score_history_breakdown.forEach((score) => {
//   let newScore = {
//     y: score.y,
//     x: new Date(score.x)
//   }
//   date_score_history_breakdown.push(newScore)
// })

// var ctx_score_history = document.getElementById('myScoreHistoryChart');
// var scoreHistoryChart = new Chart(ctx_score_history, {
//     type: 'line',
//     data: {
//         labels: ['Score'],
//         datasets: [{
//             label: 'Score',
//             data: date_score_history_breakdown,
//             backgroundColor: [
//                 'rgba(255,255,255, 0.2)'
//             ],
//             borderColor: [
//                 'rgba(255,215,0, 1)',
//                 'rgba(54, 162, 235, 1)',
//                 'rgba(255, 206, 86, 1)',
//                 'rgba(75, 192, 192, 1)',
//                 'rgba(153, 102, 255, 1)',
//                 'rgba(255, 159, 64, 1)'
//             ],
//             borderWidth: 1
//         }]
//     },
//     options: {
//       title: {
//             display: true,
//             text: 'Your historical total scores',
//             fontSize: 30,
//             fontColor: '#FFFFFF'
//           },
//         scales: {
//              xAxes: [{
//                 type: 'time',
//                 distribution: 'series',
//                 time: {
//                    unit:"day",
//                    displayFormats:{month:'MMM D'},
//                    min: scoreMinDate,
//                    max: scoreMaxDate,
//                 }
//               }],
//             yAxes: [{
//                 ticks: {
//                     beginAtZero: true
//                 }
//             }]
//         }
//     }
// });

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
                'rgba(54, 162, 235, 0.3)',
                'rgba(255, 206, 86, 0.3)',
                'rgba(75, 192, 192, 0.3)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
            ],
            borderColor: [
                'rgba(255, 255, 255, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(144, 142, 142, 0.43)',
                'rgba(255, 159, 64, 0)',
                'rgba(255,255,255, 0.2)',
            ],
            borderWidth: 1
        }]
    },
    options: {
      animation: {
            duration: 8000,
          },
      legend: {
      display: false
    },
      title: {
            display: true,
            text: 'Historical home scores',
            fontSize: 30,
            fontFamily: 'Montserrat',
            padding: 40,
            fontColor: '#FFFFFF',
            fontStyle: 'normal'
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
               'rgba(255, 99, 132, 0.3)',
                'rgba(54, 162, 235, 0.3)',
                'rgba(255, 206, 86, 0.3)',
                'rgba(75, 192, 192, 0.3)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
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
      animation: {
            duration: 8000,
          },
      legend: {
      display: false
    },
      title: {
            display: true,
            text: 'Historical travel scores',
            fontSize: 30,
            fontFamily: 'Montserrat',
            padding: 40,
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
});

var ctx_consumption = document.getElementById('myConsumptionHistoryChart');
var myConsumptionChart = new Chart(ctx_consumption, {
    type: 'line',
    data: {
        labels: ['Consumption'],
        datasets: [{
            label: 'Score',
            data: date_consumption_score_history_breakdown,
            backgroundColor: [
                'rgba(255, 206, 86, 0.3)',
                'rgba(75, 192, 192, 0.3)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
            ],
            borderColor: [
                'rgba(255, 255, 255, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(144, 142, 142, 0.43)',
                'rgba(255, 159, 64, 0)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      animation: {
            duration: 8000,
          },
      legend: {
      display: false
    },
      title: {
            display: true,
            text: 'Historical consumption scores',
            fontSize: 30,
            fontFamily: 'Montserrat',
            padding: 40,
            fontColor: '#FFFFFF',
            fontStyle: 'normal'
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

var societyScoreHistoryChart = document.querySelector(".societyHistoryChart")
var society_score_history_breakdown = JSON.parse(societyScoreHistoryChart.dataset.society_score_historicals);

var date_society_score_history_breakdown = [];
society_score_history_breakdown.forEach((score) => {
  let newScore = {
    y: score.y,
    x: new Date(score.x)
  }
  date_society_score_history_breakdown.push(newScore)
})

var ctx_society = document.getElementById('mySocietyHistoryChart');
var mySocietyChart = new Chart(ctx_society, {
    type: 'line',
    data: {
        labels: ['Society'],
        datasets: [{
            label: 'Score',
            data: date_society_score_history_breakdown,
            backgroundColor: [
                'rgba(75, 192, 192, 0.3)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
            ],
            borderColor: [
                'rgba(255, 255, 255, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(144, 142, 142, 0.43)',
                'rgba(255, 159, 64, 0)'
            ],
            borderWidth: 1
        }]
    },
    options: {
      animation: {
            duration: 8000,
          },
      legend: {
      display: false
    },
      title: {
            display: true,
            text: 'Historical society scores',
            fontSize: 30,
            fontFamily: 'Montserrat',
            padding: 40,
            fontColor: '#FFFFFF',
            fontStyle: 'normal'
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
        datasets: [
        //     label: 'Score',
        //     data: date_score_history_breakdown,
        //     backgroundColor: [
        //         'rgba(255, 99, 132, 0.3)',
        //         'rgba(54, 162, 235, 0.3)',
        //         'rgba(255, 206, 86, 0.3)',
        //         'rgba(75, 192, 192, 0.3)',
        //         'rgba(153, 102, 255, 0)',
        //         'rgba(255, 159, 64, 0)'
        //     ],
        //     borderColor: [
        //         'rgba(255, 99, 132, 1)',
        //         'rgba(54, 162, 235, 1)',
        //         'rgba(255, 206, 86, 1)',
        //         'rgba(75, 192, 192, 1)',
        //         'rgba(144, 142, 142, 0.43)',
        //         'rgba(255, 159, 64, 0)'
        //     ],
        //     borderWidth: 1
        // },
        {
          label: 'Travel',
          data: date_travel_score_history_breakdown,
          backgroundColor: [
          'rgba(255, 99, 132, 0.3)',
                'rgba(153, 102, 255, 0)',
                'rgba(255, 159, 64, 0)'
          ],
          borderColor: [
                          'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
            ],
          borderWidth: 1
        },
        {
          label: 'Home',
          data: date_home_score_history_breakdown,
          backgroundColor: [
                'rgba(54, 162, 235, 0.3)',
                'rgba(255, 159, 64, 0)'
          ],
          borderColor: [
                           'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)'
            ],
          borderWidth: 1
        },
        {
          label: 'Consumption',
          data: date_consumption_score_history_breakdown,
          backgroundColor: [
                'rgba(255, 206, 86, 0.3)',
          ],
          borderColor: [
                             'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)'
            ],
          borderWidth: 1
        },
        {
          label: 'Society',
          data: date_society_score_history_breakdown,
          backgroundColor: [
           'rgba(75, 192, 192, 0.3)',
          ],
          borderColor: [
                 'rgba(255,215,0, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
            ],
          borderWidth: 1
        }]
    },
    options: {
      legend: {
      display: false
    },
      title: {
            display: true,
            text: 'Historical total scores',
            fontSize: 30,
            fontColor: '#FFFFFF',
            fontStyle: 'normal',
            padding: 40
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
                    beginAtZero: true,
                    max: 100
                },
                stacked: true
            }]
        }
    }
});
}

// var ctx_score_history = document.getElementById('myScoreHistoryChart');
// var scoreHistoryChart = new Chart(ctx_score_history, {
//     type: 'line',
//     data: {
//         labels: ['Score'],
//         datasets: [{
//             label: 'Score',
//             data: date_score_history_breakdown,
//             backgroundColor: [
//                 'rgba(255, 99, 132, 0.3)',
//                 'rgba(54, 162, 235, 0.3)',
//                 'rgba(255, 206, 86, 0.3)',
//                 'rgba(75, 192, 192, 0.3)',
//                 'rgba(153, 102, 255, 0)',
//                 'rgba(255, 159, 64, 0)'
//             ],
//             borderColor: [
//                 'rgba(255, 99, 132, 1)',
//                 'rgba(54, 162, 235, 1)',
//                 'rgba(255, 206, 86, 1)',
//                 'rgba(75, 192, 192, 1)',
//                 'rgba(144, 142, 142, 0.43)',
//                 'rgba(255, 159, 64, 0)'
//             ],
//             borderWidth: 1
//         },
//         {
//           label: 'Travel',
//           data: date_travel_score_history_breakdown,
//           borderWidth: 1
//         },
//         {
//           label: 'Home',
//           data: date_home_score_history_breakdown,
//           borderWidth: 1
//         },
//         {
//           label: 'Consumption',
//           data: date_consumption_score_history_breakdown,
//           borderWidth: 1
//         },
//         {
//           label: 'Society',
//           data: date_society_score_history_breakdown,
//           borderWidth: 1
//         }]
//     },
//     options: {
//       legend: {
//       display: false
//     },
//       title: {
//             display: true,
//             text: 'Your historical total scores',
//             fontSize: 30,
//             fontColor: '#FFFFFF'
//           },
//         scales: {
//              xAxes: [{
//                 type: 'time',
//                 distribution: 'series',
//                 time: {
//                    unit:"day",
//                    displayFormats:{month:'MMM D'},
//                    min: scoreMinDate,
//                    max: scoreMaxDate,
//                 }
//               }],
//             yAxes: [{
//                 ticks: {
//                     beginAtZero: true
//                 },
//                 stacked: true,
//             }]
//         }
//     }
// });
// }
