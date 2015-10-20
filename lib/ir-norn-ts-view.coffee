module.exports =
class IrNornTsView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('ir-norn-ts')

    # Create message element
    message = document.createElement('div')
    message.textContent = "package is Patchouli Knowledge.......!   close : Ctrl-Alt-o"
    message.classList.add('message')
    sampleImage = new Image
    sampleImage.src = "https://cloud.githubusercontent.com/assets/13441384/10614726/c4353194-7796-11e5-8b43-9dca0963e372.jpg"
    @element.appendChild(message)
    @element.appendChild(sampleImage)
  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
