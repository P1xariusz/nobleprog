Rails.application.routes.draw do

  get 'privacy', to: 'static_pages#privacy'

  get 'now_time', to: 'static_pages#now_time'

end
