$(document).on 'turbolinks:load', ->
  overlay = document.getElementById('overlay')
  login_btt = document.getElementById('login_btt')
  modal = document.getElementById('modal-wrapper')
  span = document.getElementById('modal_close_btt')

  # Get the button that opens the modal
  if (login_btt != null)
    login_btt.onclick = ->
      modal.style.display = 'block'
      overlay.style.display = 'block'
      return

  # When the user clicks on <span> (x), close the modal
  if (span != null)
    span.onclick = ->
      modal.style.display = 'none'
      overlay.style.display = 'none'
      return

  # When the user clicks anywhere outside of the modal, close it
  window.onclick = (event) ->
    if event.target == modal
      modal.style.display = 'none'
      overlay.style.display = 'none'
    return

  $(document).keydown (e) ->
    if e.keyCode == 27
      modal.style.display = 'none'
      overlay.style.display = 'none'
    return

  #Changing tab
  $('.tab a').on 'click', (e) ->
    e.preventDefault()
    $(this).parent().addClass 'active'
    $(this).parent().siblings().removeClass 'active'
    target = $(this).attr('href')
    $('.tab-content > div').not(target).hide()
    $(target).fadeIn 600
    return

  return

