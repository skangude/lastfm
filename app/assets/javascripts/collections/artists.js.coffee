class Lastfm.Collections.Artists extends Backbone.Collection

  url: ()->
    "http://ws.audioscrobbler.com/2.0/?method=artist.search&api_key=667b5bc124dcc5abf6675b3f01752d25&format=json&artist="+@searchTerm
    
  parse: (response)->
    response.results.artistmatches.artist
