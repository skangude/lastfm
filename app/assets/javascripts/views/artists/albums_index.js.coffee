class Lastfm.Views.AlbumsIndex extends Backbone.View
  
  template: JST['artists/albums']
  
  initialize: (options)->
    @options = options || {}
    @artist = @options.artist
    @listenTo(@collection,'sync',@render)
    @collection.searchTerm = @artist
    @collection.fetch()
  
  render: ->
    console.log('render trigd')
    $(@el).html(@template(artist:@artist,albums:@collection))
    this
