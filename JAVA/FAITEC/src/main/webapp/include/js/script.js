$(document).ready(function () {
    
    /* ---- Animations ---- */
    $('#links a').hover(
            function () {
                $(this).animate({left: 3}, 'fast');
            },
            function () {
                $(this).animate({left: 0}, 'fast');
            }
    );
    $('footer a').hover(
            function () {
                $(this).animate({top: 3}, 'fast');
            },
            function () {
                $(this).animate({top: 0}, 'fast');
            }
    );


    /* start-smooth-scrolling */
    $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
    });
    /* //end-smooth-scrolling */ 
    
    
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion           
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
    });    
    
    
    // get current URL path and assign 'active' class
    var pathname = document.location.pathname.match(/[^\/]+$/)[0];
    //$('.nav > li > a[href="' + pathname + '"]').addClass('act');
    if (pathname.indexOf("index") >= 0){ 
        document.getElementById('nav-index').className += " act";
        //$('#nav-index').addClass('act');  
    } else if (pathname.indexOf("products") >= 0){ 
        document.getElementById('nav-products').className += " act";         
        //$('#nav-products').addClass('act'); 
    } else if (pathname.indexOf("about") >= 0){   
        document.getElementById('nav-about').className += " act";         
        //$('#nav-about').addClass('act'); 
    } else if (pathname.indexOf("icons") >= 0 || pathname.indexOf("codes") >= 0){
        document.getElementById('nav-pages').className += " act";            
        //$('#nav-pages').addClass('act'); 
    } else if (pathname.indexOf("mail") >= 0){ 
        document.getElementById('nav-mail').className += " act";           
        //$('#nav-mail').addClass('act'); 
    }
        
    
    $('.icheck').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue'
    });
}); 


$('#modalLogin').on('shown.bs.modal', function () {
    document.getElementById('username').focus();
});   

var checkbox = document.getElementById('provider'),
        label = document.querySelector('#provider + label');

label.addEventListener('keypress', function (evt) {
    if (evt.keyCode === 32) {
        checkbox.checked = !checkbox.checked;
    } else if (evt.keyCode === 13 || evt.keyCode === 10) {
        if (!this.form.checkValidity()) {
            this.form[this.form.length - 1].click();
            return false;
        }
    }
}, false);
    
function generate(type, text) {
    
    var n = new Noty({
        text: text,
        type: type,
        progressBar: true,
        timeout: 15000,
        layout: 'topLeft',
        closeWith: ['button', 'click'],
        theme: 'mint',
        maxVisible: 10,
        animation: {
            open: 'animated bounceInLeft',
            close: 'animated bounceOutLeft'
        }
    }).show();
    console.log('html: ' + n.options.id);
    return n;
}

    
/* cart-js */
paypal.minicart.render({
    action: "checkout.jsp",
    strings: {
        button: "Comprar",
        subtotal: "Total:",
        discount: "Desconto:",
        empty: "Seu carrinho está vazio"
    }
});

paypal.minicart.cart.on('checkout', function (evt) {
    var items, len, i;

    if (this.subtotal() > 0) {
        items = this.items();

        for (i = 0, len = items.length; i < len; i++) {
        }
    }
});
/* //cart-js */  

