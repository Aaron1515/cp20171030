// Get the breadcrumb
var breadCrumb = document.getElementById("breadcrumb");

// Get the offset position of the breadCrumb
var sticky = breadCrumb.offsetTop;

// Add the sticky class to the breadCrumb when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    breadCrumb.classList.add("sticky")
  } else {
    breadCrumb.classList.remove("sticky");
  }
}