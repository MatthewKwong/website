Rails.application.routes.draw do
  root to: 'pages#home'

  get 'apply', to: 'club_applications#new'
  post 'apply', to: 'club_applications#create'

  get 'donate', to: 'donations#new'
  post 'donate', to: 'donations#create'

  %w[how_it_works sponsor team].each do |page|
    get page, controller: 'pages', action: page
  end
end
