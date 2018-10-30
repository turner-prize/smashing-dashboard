class Dashing.Breaks extends Dashing.Widget

  ready: ->

	  
  onData: (data) ->
    if @get('value') > 2
      @set('lol',"ooh grab us a coffee while you're up...")
    if @get('value') > 4
      @set('lol',"putting the master into master data services")
    if @get('value') > 6
      @set('lol',"alright he's actually taking the piss now!!")
    if @get('value') > 8
      @set('lol',"not going to write anything here as surely he won't do this many!") 
	  
  @accessor 'isTooHigh', ->
    @get('value') > 2
	
  @accessor 'farTooHigh', ->
    @get('value') > 5