$(document).ready(function() {
    title_validation();
    body_validation();
    function title_validation() {
        var title = $("#post_title");
        var title_counter     = $("#title_counter");
        var min_length  = title_counter.data("minimum-length");

        if ((title.val().replace(/ /g,'').length) >= min_length){
            return true;
        }else{
            return false;
        }
    }
    function body_validation() {
        var body = $("#post_body");
        var body_counter     = $("#body_counter");
        var max_length  = body_counter.data("maximum-length");

        body.keyup(function() {
            body_counter.text(max_length - $(this).val().replace(/ /g,'').length);
        });
    }

    $('#new_post').submit(function(){
        if(title_validation()){
            console.log('true');
            return true;
        }else{
            console.log('false');
            return false;
        }
    });

    $('#new_post').submit(function() {
        show_title_validation();
    });

    function show_title_validation() {
        var title = $("#post_title");
        var title_counter     = $("#title_counter");
        var min_length  = title_counter.data("minimum-length");
        if(title_validation()){
            title_counter.text("");
        }else{
            title_counter.text("10글자를 채워주세요!");
        }
        title.keyup(function() {
            var current_length = $(this).val().replace(/ /g, '').length
            var left_length = min_length - current_length
            if(title_validation()) {
                title_counter.text("소중한 강의평가 감사합니다!");
            }else{
                title_counter.text(current_length + '/' + min_length + ' ' + left_length + '글자 남았어요!');
            }
        });
    }
});