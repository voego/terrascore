/* Set the width of the side navigation to 250px and the right margin of the page content to 250px */
const openNav = () => {
  const startButton = document.getElementById("start");
  if(startButton){
    startButton.addEventListener("click", () => {
      console.log("openNav");
      document.getElementById("mySidenav").style.width = "300px";
      document.getElementById("main").style.marginLeft = "300px";
    })
  }
}

/* Set the width of the side navigation to 0 and the right margin of the page content to 0 */
// const closeNav = () => {
//   if(document.querySelector("closebtn")){
//     const closeButton = document.querySelector(".closebtn");
//     closeButton.addEventListener("click", () => {
//       console.log("closeNav");
//       document.getElementById("mySidenav").style.width = "0";
//       document.getElementById("main").style.marginLeft = "0";
//     })
//   }
// }

export { openNav };
// export { closeNav };
