class Lastfm.Views.Artist extends Backbone.View

  template: JST['artists/artist']
  
  tagName: 'li'
  
  render: ()->
    $(@el).html(@template(artist: @model))
    this
  