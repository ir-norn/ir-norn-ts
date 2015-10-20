IrNornTsView = require './ir-norn-ts-view'
{CompositeDisposable} = require 'atom'

module.exports = IrNornTs =
  irNornTsView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @irNornTsView = new IrNornTsView(state.irNornTsViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @irNornTsView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'ir-norn-ts:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @irNornTsView.destroy()

  serialize: ->
    irNornTsViewState: @irNornTsView.serialize()

  toggle: ->
    console.log 'IrNornTs was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
