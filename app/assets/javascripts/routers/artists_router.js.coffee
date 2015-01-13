class Lastfm.Routers.Artists extends Backbone.Router
  routes:
    '': 'index'
    'artist/:name': 'show_albums'
  
  initialize: ()->
    @artists = new Lastfm.Collections.Artists()
    @albums  = new Lastfm.Collections.Albums()
  
  index: ()->
    view = new Lastfm.Views.ArtistsIndex(collection:@artists)
    $('#container').html(view.render().el)
  
  show_albums: (artist)->
    view = new Lastfm.Views.AlbumsIndex(collection:@albums)
    $('#container').html(view.render().el)