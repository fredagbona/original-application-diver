var form1 = $(".simple_form1").clone()
var form = $(".simple_form").clone()

$(".simple_form1").remove()

function ShowForm(a){

    if(a == '0'){
        $(".simple_form1").remove()
       $('.register_form').append(form)
    }
    else{
        $(".simple_form").remove()
        $('.register_form').append(form1)
       
    }
}
