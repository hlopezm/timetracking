Timetracking::Application.routes.draw do

  get '/' => 'site#home'

  resources :projects do
    resources :entries
  end
end 
