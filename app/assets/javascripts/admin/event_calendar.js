

$(document).ready(function () {
    $('#datepicker').datepicker({
      format: "dd/mm/yyyy"
    });

   $('.dp').on('change', function(){
       $('.datepicker').hide();
   });

    $('#datepicker2').datepicker({
      format: "dd/mm/yyyy"
    });

   $('.dp').on('change', function(){
       $('.datepicker').hide();
   });

});