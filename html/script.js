$(function(){
    function displayAnnnounce(bool) {
        if(bool) {
            $(".announce-container").fadeIn();
        } else {
            $(".announce-container").fadeOut();
        }
    }
    displayAnnnounce(false)

    window.addEventListener("message", function(event){
        var item = event.data;
        // console.log(item.title)
        if (item !== undefined && item.type === "announce") {
            if (item.display === true) {
                $(".announce-container").fadeIn();
                if(event.data.info.title !== undefined) {
                    $("#title_announce").html(event.data.info.title)
                }
                if(event.data.info.announce !== undefined) {
                    $("#announce").html(event.data.info.announce)
                }
            } else {
                $(".announce-container").fadeOut();
            }
        }
     })
})