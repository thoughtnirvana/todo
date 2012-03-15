# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  # Set date
  window.setDate "#task_deadline"

  $(".colored").each ->
    if $(this).text() == "true"
      $(this).css('background-color','#00af33')
    else
      $(this).css('background-color','#cd0000')

