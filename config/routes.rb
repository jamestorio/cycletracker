CycleTracker::Application.routes.draw do
  
  get "welcome/index"
  resources :biometrics
  resources :moods
  resources :sleeps
  resources :weight_trainings
  resources :strength_trainings
  resources :weight_trainnings
  resources :stairs
  resources :rides
  resources :recents
  resources :routines
 devise_for :users
  root to: 'welcome#index'

  
end
