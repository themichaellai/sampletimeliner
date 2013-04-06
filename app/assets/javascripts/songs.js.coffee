$(document).ready( ->
  $('a.popup').on('click', (e) ->
    window.open($(this).attr('href') + '?time=' + getPlayerTime())
    e.preventDefault()
    console.log(getPlayerTime())
  )
)
