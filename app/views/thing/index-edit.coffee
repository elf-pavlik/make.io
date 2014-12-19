CollectionView = require '../base/collection-view'
EditListItemView = require './edit-item'

module.exports = class EditThingsList extends CollectionView
  className: 'container'
  itemView: EditListItemView
  tagName: 'ul'
