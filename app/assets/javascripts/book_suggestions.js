$(function () {
    $('form').on('submit', function (event) {
      event.preventDefault();
      $form = $(this);
      $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: { 
          book_suggestion: {
            author: $form.find('#author').val(),
            title: $form.find('#title').val(),
            publisher: $form.find('#publisher').val(),
            year: $form.find('#year').val(),
            price: $form.find('#price').val(),
            editorial: $form.find('#editorial').val(),
            link: $form.find('#link').val()
          }
        },
        dataType: "JSON",
        success: function (book) {
          $('#booktable').append(newRow(book));
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