
$(document).ready(function() {
    // Header Scroll
    $(window).on('scroll', function() {
        var scroll = $(window).scrollTop();

        if (scroll >= 300) {
            $('#menu').addClass('fixed');
        } else {
            $('#menu').removeClass('fixed');
        }
    })
});

$(document).ready(function () {

    $('td[width="50%"] button').click(function(){
        $('td[width="50%"] button').removeClass('btn-success').addClass('btn-primary');
        $(this).removeClass('btn-primary').addClass('btn-success');
        _videos = $(this).parents('table').find('tr').slice(-1*$('td[width="50%"] button').length);
        _videos.hide();
        $(_videos[ $(this).index('td[width="50%"] button') ]).show();
    });

    $('td[width="50%"] button:first').trigger('click');

    $(".next-step, .prev-step").click(navigateTab);

});

function navigateTab(e){
    _classList = $(this).prop('classList');
    direction = _classList[_classList.length-1].slice(0, 4);
    $('.nav-tabs li.active')[direction]().find('a[data-toggle="tab"]').trigger('click');
    setTimeout(function(){ $('html, body').clearQueue().animate({scrollTop:100},1200);  }, 300) ;   
}


$(document).ready(function() {
    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".after_phone"); //Fields wrapper
    var add_button      = $(".plus-sign"); //Add button ID
    var wrapper1        = $(".tmp").html();
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            $(wrapper).append(wrapper1);
        }
        $(".minus-sign").click(function(e){ //user click on remove text
            e.preventDefault();
            $(this).closest('.form-group').remove();
            x--;
        })
    });   
   
   

   if($('#first-disabled2').attr('id')  != undefined){
        var mySelect = $('#first-disabled2');

        $('#special').on('click', function () {
          mySelect.find('option:selected').prop('disabled', true);
          mySelect.selectpicker('refresh');
        });

        $('#special2').on('click', function () {
          mySelect.find('option:disabled').prop('disabled', false);
          mySelect.selectpicker('refresh');
        });
   }


    if( $('#basic2').attr('id') != undefined ){
        $('#basic2').selectpicker({
          liveSearch: true,
          maxOptions: 1
        });
    }

    
    
    $(".payment").css("display", "none");
    
    $("#inlineRadio2").click(function(){
        $(".payment").show();
    });
    
    $("#inlineRadio1").click(function(){
        $(".payment").hide();
    });
    

    
});
