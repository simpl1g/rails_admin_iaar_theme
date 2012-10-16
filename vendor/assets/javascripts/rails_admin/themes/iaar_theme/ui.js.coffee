#= require morris
#= require raphael

$.fn.drawStats = ->
  Morris.Line
    element: "total_users_chart"
    data: $("#total_users_chart").data("users")
    xkey: "created"
    ykeys: ["total"]
    labels: ["Number of registered Users"]
    xLabels: "day"

  $("#myTab a").on "click", (e) ->
    e.preventDefault()
    $(this).tab "show"

  $("a[href='#daily']").on "shown", (e) ->
    $("#users_daily_chart").html ""
    Morris.Line
      element: "users_daily_chart"
      data: $("#users_daily_chart").data("users")
      xkey: "created"
      ykeys: ["date_count"]
      labels: ["Number of registered Users daily"]
      xLabels: "day"