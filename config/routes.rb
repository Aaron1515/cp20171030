Rails.application.routes.draw do

  devise_for :users, :skip => [:registrations] 
    as :user do
      get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
      put 'users' => 'devise/registrations#update', :as => 'user_registration'
    end

  devise_for :admins, :skip => [:registrations] 
    as :admin do
      get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
      put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
    end

  resources :subscribers
  resources :contacts
  
  get 'welcome/index'
  get 'welcome/test'
  get 'welcome/test1'
  get 'welcome/test2'
  get 'welcome/a_test'
  get 'welcome/v_test'

  get 'resource/index'
  get 'resource/guide'
  get 'resource/trouble'

  get 'about/what_we_offer'
  get 'about/who_we_are'
  get 'about/faq'
  get 'about/our_mission'

  get 'lesson/index'

  get 'lesson/fundamental'
  get 'lesson/fundamental_getting_started'
  get 'lesson/fundamental_gpio'
  get 'lesson/fundamental_loops'
  get 'lesson/fundamental_comparison'
  get 'lesson/fundamental_conditional'
  get 'lesson/fundamental_logic'

  get 'lesson/self_driving_car'

  get 'lesson/robot_car'
  get 'lesson/robot_car_h_bridge'
  get 'lesson/robot_car_motor'
  get 'lesson/robot_car_define_function'


  get 'download/robot_car'
  get 'download/fundamental'


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
