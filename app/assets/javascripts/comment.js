$(function(){
  function buildHTML(comment){
    let html = ` <div class= "commentlink">
                  <a href=/users/${comment.user_id}>${comment.user_name}</a>
                  ：
                  ${comment.text}
                 </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){ 
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.comments').append(html);
      $('.commentbox').val('');
      $('.commentbtn').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
});