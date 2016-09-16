$(document).ready(function(){
  $("#searcharea").on('submit', '#moviesearch' searchMovie);
}; 

var searchMovie = function ( event ) { 
  console.log('hit');
  event.preventDefault(); 

  var id = $('#moviesearch').parent().attr("id");
  var route = $('#moviesearch').parent().attr("action");
  var data = $('#moviesearch').serialize();
  var response = $.ajax({
      url: route,
      method: "post", 
      data: data 
    });

  response.done(function(result) { 
    console.log(result);
    $('#poster').append(result);
    $('#moviesearch').trigger("reset");
  });

}

// create.done(function(result) {
//     console.log(result);
//     $(".post-container").append(result);
//     $("#posts").trigger("reset");
//   });
// }
