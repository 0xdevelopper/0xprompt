$(function(){
    function display(bool) {
        if(bool) {
            $(".prompt-container").fadeIn();
        } else {
            $(".prompt-container").fadeOut();
        }
    }
    display(false)

    window.addEventListener("message", function(event){
        var item = event.data;
        // console.log(item.title)
        if (item !== undefined && item.type === "ui") {
            if (item.display === true) {
                $(".prompt-container").fadeIn();
                if(event.data.info.title !== undefined) {
                    $("#title_prompt").html(event.data.info.title)
                }
                if(event.data.info.text1 !== undefined) {
                    $("#text1").html(event.data.info.text1)
                }
                if(event.data.info.text2 !== undefined) {
                    $("#text2").html(event.data.info.text2)
                }
            } else {
                $(".prompt-container").fadeOut();
            }
        }
     })
})




$(document).on("click", ".accept", function(){
    $.post("http://0xprompt/accept", JSON.stringify({
        value: true
    }));
    return 
})

$(document).on("click", ".refuse", function(){
    $.post("http://0xprompt/refuse", JSON.stringify({
        value: false
    }));
    return 
})