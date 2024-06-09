// Get the modal
var modal_select_maid = document.getElementById("modal-select-maid");

// Get the button that opens the modal
var btn_select_maid = document.getElementById("btn-select-maid");

// Get the <span> element that closes the modal
var span_close_modal_select_maid = document.getElementsByClassName("modal-choose-maid-close-js")[0];
var span_close_modal_select_maid_1 = document.getElementsByClassName("modal-choose-maid-close-js")[1];

// When the user clicks on the button, open the modal
btn_select_maid.onclick = function() {
  modal_select_maid.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span_close_modal_select_maid.onclick = function() {
  modal_select_maid.style.display = "none";
}
span_close_modal_select_maid_1.onclick = function() {
  modal_select_maid.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal_select_maid) {
    modal_select_maid.style.display = "none";
  }
}