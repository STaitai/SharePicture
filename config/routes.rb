Rails.application.routes.draw do
  
  get '/' => "home#home"

  get '/post' => "post#post"
  post '/post/create' => "post#create"

  get '/share' => "share#share"
  get '/share/show/:id' => "share#show"
  get '/share/search' => "share#search"

end
