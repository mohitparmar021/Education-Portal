// Get the modal
var modal = document.getElementById("signup");

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


$('document').ready(function(){

     $('.registered').click(function(){
            
             $('#signup').show();
             
     });

});
