
(function ($) {
    "use strict";


    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
  
  
    /*==================================================================
    [ Validate ]*/
    var fname = $('.validate-input input[name="fname"]');
    var lname = $('.validate-input input[name="lname"]');
    var pname = $('.validate-input input[name="pname"]');
    var shopurl = $('.validate-input input[name="shopurl"]');
    var telephone = $('.validate-input input[name="telephone"]');
    // var state = $('.validate-input input[name="state"]');
    // var street = $('.validate-input input[name="street"]');
    // var city = $('.validate-input input[name="city"]');
    // var country = $('.validate-input select[name="country"]');
    // var zip = $('.validate-input input[name="zip"]');
    // var password = $('.validate-input input[name="password"]');
    // var cpassword = $('.validate-input input[name="cpassword"]');
    var email = $('.validate-input input[name="email"]');
    // var accept = $('.validate-input textarea[name="message"]');


    $('.validate-form').on('submit',function(){
        var check = true;

        if($(fname).val().trim() == ''){
            showValidate(fname);
            check=false;
        }
        if($(lname).val().trim() == ''){
            showValidate(lname);
            check=false;
        }
        if($(pname).val().trim() == ''){
            showValidate(pname);
            check=false;
        }
        if($(shopurl).val().trim() == ''){
            showValidate(shopurl);
            check=false;
        }
        if($(telephone).val().trim() == ''){
            showValidate(telephone);
            check=false;
        }
        // if($(street).val().trim() == ''){
        //     showValidate(street);
        //     check=false;
        // }
        // if($(city).val().trim() == ''){
        //     showValidate(city);
        //     check=false;
        // }
        //  if($(state).val().trim() == ''){
        //     showValidate(state);
        //     check=false;
        // }
        // if($(country).val().trim() == ''){
        //     showValidate(country);
        //     check=false;
        // }
        // if($(zip).val().trim() == ''){
        //     showValidate(zip);
        //     check=false;
        // }
        // if($(password).val().trim() == ''){
        //     showValidate(password);
        //     check=false;
        // }
        // if($(cpassword).val().trim() == ''){
        //     showValidate(cpassword);
        //     check=false;
        // }


        if($(email).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
            showValidate(email);
            check=false;
        }

        // if($(message).val().trim() == ''){
        //     showValidate(message);
        //     check=false;
        // }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
       });
    });

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    

})(jQuery);