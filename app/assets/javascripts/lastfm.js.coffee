window.Lastfm =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ()->
    new Lastfm.Routers.Artists()
    Backbone.history.start(pushState:true, hashChange:false)    

$(document).ready ->
  Lastfm.initialize()
