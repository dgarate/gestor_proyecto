Rails.application.routes.draw do
  get 'projects/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/projects', to:'projects#create'  #aca estamos respondiendo al verbo post, con el controlador project y el metodo create 

  get 'projects/dashboard'

end
