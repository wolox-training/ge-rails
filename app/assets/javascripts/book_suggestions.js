$(function () {
    $('form').on('submit', function (event) {
      event.preventDefault();
      $form = $(this);
      $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),
        dataType: "JSON",
        success: function (book) {
          $.ajax({
            type: "GET",
            url: "/api/v1/book_suggestions",
            dataType: "JSON",
            success: function (data) {
              console.log(data)
            }
          });
        },
        error: function (data) {
          data.responseJSON.errors.forEach((err) => {
            $('form').append('<br>' + err);
          })
        }
      });
      return false;
    });
  });
const newRow = (book) => {
  return "<tr><td>" + book.title +
         "</td><td>" + book.author +
          "</td><td>" + book.publisher +
          "</td><td>" + book.editorial +
          "</td><td>" + book.year +
          "</td><td>" + book.price + "</td></tr>"
} 