class Lastfm.Views.ArtistsIndex extends Backbone.View

  template: JST['artists/index']
  
  events: 
    'submit #search_artist': 'search'
    'click #artists-list li': 'showAlbums'
  
  initialize: ->
    @listenTo(@collection,'sync',@render_results)
  
  render: ->
    $(@el).html(@template())
    this

  render_results: ->
    $('#artists-list').html('')
    @collection.each(@showArtist)
    this
  
  search: (event)->
    event.preventDefault()
    text = $('#search_artist_name').val()
    if text==''
      alert('Enter valid text to search an artist')
      return
    @collection.searchTerm = text
    @collection.fetch()
  
  showArtist: (artist)=>
    view = new Lastfm.Views.Artist(model: artist)
    @$('#artists-list').append(view.render().el)
  
  showAlbums: (event)->
    artist = $(event.target).find('span.artist_name').text()
    Backbone.history.navigate('',true)