# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#products-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#products-table').data('source')
    pagingType: 'full_numbers'
