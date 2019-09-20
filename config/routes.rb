Rails.application.routes.draw do
  get 'students', to: 'students#index', as: 'students'
  get 'students/:id', to: 'students#show', as: 'student'
  get 'students/:id/active', to: 'students#active', as: 'activate_student'
end
