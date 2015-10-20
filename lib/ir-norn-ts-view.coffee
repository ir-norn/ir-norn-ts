module.exports =
class IrNornTsView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('ir-norn-ts')

    # Create message element
    message = document.createElement('div')
    message.textContent = "ir-norn-ts_view"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
