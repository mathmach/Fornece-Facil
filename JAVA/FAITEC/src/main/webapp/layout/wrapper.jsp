<!-- for-mobile-apps -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script type="text/javascript" src="../include/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../include/js/jquery-ui.min.js"></script>
<!-- //js -->  
<!-- for bootstrap working -->
<script type="text/javascript" src="../include/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../include/js/easyResponsiveTabs.js"></script>
<script type="text/javascript" src="../include/js/minicart.min.js"></script> 
<script type="text/javascript" src="../include/js/icheck.min.js"></script>
<!-- Noty -->
<script type="text/javascript" src="../include/js/noty.min.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="../include/js/script.js"></script>
<!-- //Custom js --> 
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