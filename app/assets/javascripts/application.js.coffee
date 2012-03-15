# Set datepicker
window.setDate = (el) ->
  dateVal = new Date()
  if $(el).val() == ""
    if dateVal.getMonth < 10
      displayDate = dateVal.getFullYear() + 
                    '-0' + (dateVal.getMonth() + 1) + 
                    '-' + dateVal.getDate()
    else
      displayDate = dateVal.getFullYear() + 
                    '-' + (dateVal.getMonth() + 1) + 
                    '-' + dateVal.getDate()

    displayDateTime = "#{displayDate} #{dateVal.getHours()}:#{dateVal.getMinutes()}:#{dateVal.getSeconds()}"
    $(el).val(displayDateTime)
  $(el).datetimepicker(dateFormat: 'yy-mm-dd', timeFormat: 'hh:mm:ss', hour: dateVal.getHours(),
    minute: dateVal.getMinutes(), seconds: dateVal.getSeconds())

