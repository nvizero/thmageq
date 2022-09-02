 $("document").ready(function(){
    $.ajax({
        url: '/head.html',
        success: function(data){
            $('div.header').html(data);
        }
    });
    $.ajax({
        url: '/footer.html',
        success: function(data){
            $('div.footer').html(data);
        }
    });

    var len = 200; // 超過50個字以"..."取代
    $(".JQellipsis").each(function(i){
        if($(this).text().length>len){
            $(this).attr("title",$(this).text());
            var text=$(this).text().substring(0,len-1)+"...";
            $(this).text(text);
        }
    });



    $("button.navbar-toggler").click(function(){
        $("nav.navbar").toggleClass("opened");
    });
    $('nav li.dropdown').hover(function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn(500);
    }, function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
    });


});

