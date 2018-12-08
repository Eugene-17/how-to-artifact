# Hide Header on on scroll down
didScroll = undefined
lastScrollTop = 0
delta = 5
navbarHeight = $('header').outerHeight()

hasScrolled = ->
  st = $(this).scrollTop()
  # Make sure they scroll more than delta
  if Math.abs(lastScrollTop - st) <= delta
    return
  # If they scrolled down and are past the navbar, add class .nav-up.
  # This is necessary so you never see what is "behind" the navbar.
  if st > lastScrollTop and st > navbarHeight
# Scroll Down
    $('top_nav').addClass('top_nav_up')
  else
# Scroll Up
    if st + $(window).height() < $(document).height()
      $('top_nav').removeClass('top_nav_up')
  lastScrollTop = st
  return

$(window).scroll (event) ->
  didScroll = true
  return
setInterval (->
  if didScroll
    hasScrolled()
    didScroll = false
  return
), 250
