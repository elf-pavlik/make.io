CollectionView = require '../base/collection-view'
ListItemView = require './list-item'

module.exports = class ThingsList extends CollectionView
  className: 'container'
  itemView: ListItemView
  tagName: 'ul'
