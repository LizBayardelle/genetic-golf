Rails.application.routes.draw do

  get 'coming_soon/putting_book'
  get 'coming_soon/short_book'

  get 'about/benefits'
  get 'about/principles'
  get 'about/staff'

  get 'resources/aids'
  get 'resources/fitness'

  get 'fitting/full'
  get 'fitting/wedge'
  get 'fitting/putter'

  get 'game/instruction'
  get 'game/programs'

  get 'welcome/index'
  get 'welcome/personality'
  get 'welcome/newsletter'
  get 'welcome/game'
  get 'welcome/body'
  get 'welcome/resources'
  get 'welcome/about'

  root 'welcome#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :bal_quizzes
  resources :flex_quizzes
  resources :bod_quizzes
  resources :per_quizzes
  resources :swing_books
  resources :contact, only: [:new, :create]

end
