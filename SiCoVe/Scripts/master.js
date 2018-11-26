
  $(document).ready(function () {
      $(".datepicker").datepicker({
          minDate: 0,
          dateFormat: 'dd/mm/yy',
      });
  });

  function openModal() {
      $('#mimodal').modal('show');
  }
