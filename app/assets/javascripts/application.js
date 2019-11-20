//= require rails-ujs
//= require_tree .

// const status = document.querySelectorAll('.pending').forEach( elt => elt.classList.toggle('trip-hidden') );

const result = document.getElementById("b.status").addEventListener("click", function(){
  document.querySelectorAll('.pending').forEach( elt => elt.classList.toggle('trip-hidden') );;
});

result();
