class Dashing.Breaks extends Dashing.Widget

  ready: ->
    if not @get('value')
      @set 'value', 0

  onData: (data) ->
    if data
      i = parseInt(@get('value'))
      i = i + 1
      @set 'value', i