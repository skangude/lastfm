class Lastfm.Views.AlbumsIndex extends Backbone.View
  
  template: JST['artists/albums']
  
  initialize: (options)->
    @options = options || {}
    @artist = @options.artist
    @listenTo(@collection,'sync',@render)
    @collection.searchTerm = @artist
    @collection.fetch()
  
  render: ->
    $(@el).html(@template(artist:@artist,albums:@collection))
    this
