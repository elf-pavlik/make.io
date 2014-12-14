module.exports = (match) ->

  match '', 'home#index'
  match 'modules', 'module#index'
  match 'modules/:id', 'module#show'
  match 'things', 'thing#index'
  match 'things/:id', 'thing#show'
