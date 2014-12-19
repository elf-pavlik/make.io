View = require '../base/view'

module.exports = class EditListItemView extends View
  autoRender: true
  className: 'thing'
  tagName: 'li'
  template: require '../../templates/thing/edit-item'
