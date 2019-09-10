import "bootstrap";



const submitButton = document.getElementById("submit");
const previousButton = document.getElementById("previous");
const nextButton = document.getElementById("next");
const checkboxArray = [...document.querySelectorAll("input")];
const questionDivArray = [...document.querySelectorAll(".question")];
const firstQuestionDiv = document.querySelector(".question");


document.addEventListener("DOMContentLoaded", (event) => {
  firstQuestionDiv.classList.add("visible");
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

nextButton.addEventListener("click", (event) => {
  let visibleElements = [...document.querySelectorAll(".visible")];
  console.log("hello");
  // make next element sibling visible
  visibleElements.slice(-1)[0].nextElementSibling.classList.add("visible");
  // hide previous element sibling
  visibleElements.slice(0)[0].classList.remove("visible");
  visibleElements.slice(0)[0].classList.add("invisible");
  // visibleElement.
})

previousButton.addEventListener("click", (event) => {
  // select current visible element
  let visibleElements = [...document.querySelectorAll(".visible")];
  console.log("hello");
  // make previous element sibling visible
  visibleElements.slice(0)[0].previousElementSibling.classList.remove("invisible");
  visibleElements.slice(0)[0].previousElementSibling.classList.add("visible");
  // hide current element
  visibleElements.slice(0)[0].classList.remove("visible");
  visibleElements.slice(0)[0].classList.add("invisible");
  // make previous element sibling visible
})


// as soon as the page loads, give first element 'visible' class
// initially, show the first child of the 'questions' div / or the first element of the questionDivArray
// do not show the 'previous' button
// if child == last, change 'next' to submit
// if child != first, show the 'previous' button
// when the 'next' button is pressed, hide the current child and show the next child
// when the 'previous' button is pressed, hide the current child and show the previous child








