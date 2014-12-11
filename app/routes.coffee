module.exports = (match) ->

  match '', 'home#index'
  match 'modules', 'module#index'
  match 'things', 'thing#index'
  match 'things/:id', 'thing#show'
