Rails.application.routes.draw do

	get 'welcome/index'

  get 'contact/index'

  get 'resource/index'

  get 'about/what_we_offer'
  get 'about/who_we_are'
  get	'about/faq'

  get 'lesson/index'

  get 'lesson/fundamental'
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

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
