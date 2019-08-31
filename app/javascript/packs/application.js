import "bootstrap";


const submitButton = document.getElementById("submit");
const checkboxArray = [...document.querySelectorAll("input")];
const questionDivArray = [...document.querySelectorAll(".question")]


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

