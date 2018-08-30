//still working on this feature
$(document).ready(function(){
    $(".fancybox").fancybox({
          openEffect: "none",
          closeEffect: "none"
      });
      
      $(".zoom").hover(function(){
          
          $(this).addClass('transition');
      }, function(){
          
          $(this).removeClass('transition');
      });
  });

//   for the modal

setTimeout(function() {
    document.querySelector("#modal").style = "display: block";
  }, 3000);
  
  function onclickx() {
    document.getElementById("modal").style = "display: none";
  }
  