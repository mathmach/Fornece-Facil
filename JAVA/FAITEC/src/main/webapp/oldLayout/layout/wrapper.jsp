<!-- for-mobile-apps -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<!-- jQuery -->
<script type="text/javascript" src="../includes/vendors/jquery/dist/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../includes/vendors/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<!-- cart -->
<script type="text/javascript" src="../includes/vendors/simplecart/simpleCart.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script type="text/javascript" src="../includes/vendors/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../includes/vendors/icheck-1.x/icheck.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.icheck').iCheck({
            checkboxClass: 'icheckbox_square-orange',
            radioClass: 'iradio_square-orange'
        });
    });
</script>
<!-- Noty -->
<script type="text/javascript" src="../includes/vendors/noty-2.4.0/js/noty/packaged/jquery.noty.packaged.js"></script>
<script type="text/javascript">
    function generate(type, text) {

        var n = noty({
            text: text,
            type: type,
            dismissQueue: true,
            progressBar: true,
            timeout: 15000,
            layout: 'topRight',
            closeWith: ['button', 'click'],
            theme: 'relax',
            maxVisible: 10,
            animation: {
                open: 'animated bounceInLeft',
                close: 'animated bounceOutLeft',
                easing: 'swing',
                speed: 500
            }
        });
        console.log('html: ' + n.options.id);
        return n;
    }
</script>  
<%
    //check for any errors
    if (!errList.isEmpty()) {
        for (Object error : errList) {
            out.print("<script type='text/javascript'>generate(\"error\", \"<div class='activity-item'><i class='glyphicon glyphicon-warning-sign'></i><div class='activity'>" + error + "</div></div>\");</script>");
        };
        errList.clear();
    }
    //if action is joined show sucess
    if (session.getAttribute("success") != null) {
        out.print("<script type='text/javascript'>generate(\"success\", \"<div class='activity-item'><i class='glyphicon glyphicon-ok'></i><div class='activity'>Registrado com successo! Por favor, cheque seu email para ativar sua conta.</div></div>\");</script>");
        session.setAttribute("success", null);
    }
%>
</body>
<!-- //js -->