Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students', to: 'students#index' 
  # get is the request; students matches the http request and goes to the students controller where the index method 
  # implemented in the view page
  # http verb; match http; to:; controller you want # method in the controller; (optional sometimes prefix to the path)
  get 'students/:id', to: 'students#show', as: 'student'
  get 'students/:id/activate', to: 'students#activate', as: "activate_student"
end
