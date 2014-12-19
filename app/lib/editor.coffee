$ = require 'jquery'
module.exports =
  edit: (property, type) ->
    val = $('[property="' + property + '"]').html()
    $('[property="' + property + '"]').empty()
    if type == 'input'
      $('[property="' + property + '"]').append '<input type="input" class="edit form-control">'
      $('[property="' + property + '"] ' + type).val(val)
    else if(type == 'textarea')
      $('[property="' + property + '"]').append '<textarea class="edit form-control" rows="5"></textarea>'
      $('[property="' + property + '"] ' + type).val(val)
  save: (property) ->
    $('[property="' + property + '"]').html $('[property="' + property + '"] .edit').val()
