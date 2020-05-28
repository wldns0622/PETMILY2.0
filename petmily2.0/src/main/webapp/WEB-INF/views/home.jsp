<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>

<%@include file="includes/header.jsp" %>




    <!-- Mainly scripts -->

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>

<%@include file="includes/footer.jsp" %>
</html>
