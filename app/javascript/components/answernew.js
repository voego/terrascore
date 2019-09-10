
const questionDivArray = [...document.querySelectorAll(".question")];


const makeFirstQuestionDivVisible = () => {
  const firstQuestionDiv = document.querySelector(".question");
  document.addEventListener("DOMContentLoaded", (event) => {
    firstQuestionDiv.classList.add("visible");
  });
}

const untickOtherCheckboxes = () => {
  const checkboxArray = [...document.querySelectorAll("input")];
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
}

const postOptionsOnSubmit = () => {
  const submitButton = document.getElementById("submit");
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
}

const nextButtonAction = () => {
  const nextButton = document.getElementById("next");
  let previousButton = document.getElementById("previous");
  nextButton.addEventListener("click", (event) => {
    let visibleElements = [...document.querySelectorAll(".visible")];
    console.log("hello");
    // make next element sibling visible
    visibleElements.slice(-1)[0].nextElementSibling.classList.add("visible");
    // hide previous element sibling
    visibleElements.slice(0)[0].classList.remove("visible");
    visibleElements.slice(0)[0].classList.add("invisible");
    // make previous button visible
    previousButton.style.display = "inline-flex";
  })
}


const previousButtonAction = () => {
  let previousButton = document.getElementById("previous");
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
}

const showPreviousButton = () => {

}

const showNextButton = () => {

}

const showSubmit = () => {
  // when visibleElements containts the 4th question

  // when next sibling element is no more available
  let visibleElements = [...document.querySelectorAll(".visible")];
  if (visibleElements.slice(-1)[0].nextElementSibling == undefined){
    console.log("David")
  };

  // change html of next to submit
}

export { makeFirstQuestionDivVisible };
export { untickOtherCheckboxes };
export { postOptionsOnSubmit };
export { nextButtonAction };
export { previousButtonAction };
export { showSubmit };

// as soon as the page loads, give first element 'visible' class
// initially, show the first child of the 'questions' div / or the first element of the questionDivArray
// do not show the 'previous' button
// if child == last, change 'next' to submit
// if child != first, show the 'previous' button
// when the 'next' button is pressed, hide the current child and show the next child
// when the 'previous' button is pressed, hide the current child and show the previous child


