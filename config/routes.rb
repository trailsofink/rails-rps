# config/routes.rb

Rails.application.routes.draw do
  get('/', { controller: 'page', action: 'index' })
  get('/:player_choice', { controller: 'page', action: 'game' })
end
