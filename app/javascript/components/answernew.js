
const questionDivArray = [...document.querySelectorAll(".question")];


const makeFirstCategoryDivVisible = () => {
  const firstCategoryDiv = document.querySelector(".category-section");
  if(firstCategoryDiv){
    document.addEventListener("DOMContentLoaded", (event) => {
      firstCategoryDiv.classList.add("visible");
    });
  }
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
  if(submitButton){
    submitButton.addEventListener("click", (event) => {
      let saved = [];
      document.querySelectorAll("input").forEach((checkbox) => {
        if (checkbox.checked) {
          saved.push(checkbox.dataset.option)
        };
      });
      let railsToken = document.querySelector('meta[name=csrf-token]').content;

      fetch(`http://www.terrascore.org/answers?options=${saved}`, {
        method: "POST",
        headers: {
          "X-CSRF-Token": railsToken
        }
      })
      setTimeout(function(){
        let url = submitButton.dataset.url;
        window.location.href = url;
       }, 3000);

    });
  }
}

const nextButtonAction = () => {
  const nextButton = document.getElementById("next");
  let previousButton = document.getElementById("previous");
  if(nextButton){
    nextButton.addEventListener("click", (event) => {
      let visibleElements = [...document.querySelectorAll(".visible")];
      console.log("hello");
      // make next element sibling visible
      visibleElements.slice(-1)[0].nextElementSibling.classList.add("visible");
      // hide previous element sibling
      visibleElements.slice(0)[0].classList.remove("visible");
      visibleElements.slice(0)[0].classList.add("invisible");
      // make previous button visible
      // previousButton.style.display = "inline-flex";
      // scroll to the top of the page
      window.scrollTo({ top: 0, behavior: 'smooth' });
    })
  }
}


const previousButtonAction = () => {
  let previousButton = document.getElementById("previous");
  if(document.getElementById("previous")){
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
}

const scrollOnCheck = () => {
  // select a question div
  // const firstQuestionDiv = window.querySelector(".question")
  // select all of its children checkboxes
  const allCheckboxes = [...document.querySelectorAll("input")]
  // if any checkbox of the question div is clicked
  allCheckboxes.forEach((checkbox) => {
    checkbox.addEventListener("click", (event) => {
    // select the parent of the checkbox which was ticked
      if(event.currentTarget.parentElement.nextElementSibling){
        event.currentTarget.parentElement.nextElementSibling.scrollIntoView({ behavior: 'smooth' });
      };
    // scrollintoview of the next element
    // checkbox.parentElement.nextElementSibling.scrollIntoView({ behavior: 'smooth' });
    });
  });
  // identify the next element sibling of the question div
  // and scrollIntoView on it
}

const progressBar = () => {
  window.onscroll = function() {myFunction()};

  function myFunction() {
    var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
    var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
    var scrolled = (winScroll / height) * 100;
    document.getElementById("myBar").style.width = scrolled + "%";
  }
}

const showNextButton = () => {

}

const showSubmit = () => {
  const nextButton = document.getElementById("next");
  const submitButton = document.getElementById("submit");
  submitButton.classList.add("d-none")

  nextButton.addEventListener("click", () => {
    let text = document.querySelector(".visible").childNodes[1].childNodes[1].innerText;
    if (text === "Society") {
      nextButton.classList.add("d-none");
      submitButton.classList.remove("d-none")
    }
  })
}

// if the innerHTML of visible array contains 'society'
// add visible class to submit and invisible to next category
// else add invisible to ne

// when visibleElements containts the 4th question

// when next sibling element is no more available
// let visibleElements = [...document.querySelectorAll(".visible")];
// if (visibleElements.slice(-1)[0].nextElementSibling == undefined){
//   console.log("David")
// };

// change html of next to submit

export { makeFirstCategoryDivVisible };
export { untickOtherCheckboxes };
export { postOptionsOnSubmit };
export { nextButtonAction };
export { previousButtonAction };
export { scrollOnCheck };
export { progressBar };
export { showSubmit };

// as soon as the page loads, give first element 'visible' class
// initially, show the first child of the 'questions' div / or the first element of the questionDivArray
// do not show the 'previous' button
// if child == last, change 'next' to submit
// if child != first, show the 'previous' button
// when the 'next' button is pressed, hide the current child and show the next child
// when the 'previous' button is pressed, hide the current child and show the previous child


