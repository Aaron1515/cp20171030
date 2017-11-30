Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root to: 'subscribers#index', as: :authenticated_root
  end

	get 'welcome/index'
  get 'welcome/test'
  get 'welcome/test1'
  get 'welcome/test2'
  get 'welcome/a_test'
  get 'welcome/v_test'

  get 'contact/index'

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


  resources :subscribers

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
