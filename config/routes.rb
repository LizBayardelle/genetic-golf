Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]

  get 'coming_soon/putting_book'
  get 'coming_soon/short_book'

  get 'about/benefits'
  get 'about/principles'
  get 'about/staff'
  get 'about/howitworks'

  get 'resources/aids'
  get 'resources/fitness'

  get 'fitting/full'
  get 'fitting/wedge'
  get 'fitting/putter'

  get 'game/instruction'
  get 'game/programs'

  get 'welcome/index'
  get 'welcome/index_old'
  get 'welcome/personality'
  get 'welcome/newsletter'
  get 'welcome/game'
  get 'welcome/body'
  get 'welcome/resources'
  get 'welcome/about'
  get 'welcome/admin'

  root 'welcome#index'

  resources :bal_quizzes
  resources :flex_quizzes
  resources :bod_quizzes
  resources :per_quizzes
  resources :fit_quizzes
  resources :swing_books
  resources :contact, only: [:new, :create]
  resources :newsletters
  resources :club_fittings

end
