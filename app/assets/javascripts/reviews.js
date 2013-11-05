var stars = 0;

$ (function() {
    // Toggle star view (if selected, fill in)
    $("#review-form span.glyphicon-star-empty").click(function() {
        $(this).toggleClass("glyphicon-star-empty glyphicon-star");
        if($(this).hasClass("glyphicon-star")) {
            for(var i=1; i<=5; i++) {   // figure out which star we are
                var temp = "star" + i.toString();
                if($(this).hasClass(temp)) {
                    slideFill(i);
                    stars = i;
                }
            }
        } else {
            for(var i=1; i<=5; i++) {
                var temp = "star" + i.toString();
                if($(this).hasClass(temp))  {
                   emptyAfter(i);
                    stars = i;
                }
            }
        }
    })

    // On submit, calculate the number of stars selected.
    $("#review-form .sub").click(function() {
        document.getElementById("stars").value = stars;

    })
})

// fill up all stars before num onclick
function slideFill(num) {
   for(var i=1; i < num; i++) {
       var temp = ".star" + i.toString();
       $(temp).addClass("glyphicon-star").removeClass("glyphicon-star-empty");
   }
   emptyAfter(num);
}

// if we remove a star, remove all after it.
function emptyAfter(num) {
    for(var i=num+1; i<=5; i++) {
        var temp = ".star" + i.toString();
        $(temp).addClass("glyphicon-star-empty").removeClass("glyphicon-star");
    }
}