Rails.application.routes.draw do
  resources :photos
  resources :indices
  resources :active_cates
  post '/tinymce_assets' => 'tinymce_assets#create'
  resources :saves
  resources :announces
  resources :events
  resources :activities
  # 活動報名，多的欄位
  post "store_TableRef" , :to =>"activities#store_TableRef"
  # 活動報名，
  get '/activities_detial(/:id)' , :to => "activities#activities_detial"
  get '/activities_detial' , :to => "activities#activities_detial"
  # 活動報名，excel
  #活動報名

  get 'del_activities' , :to => "activities#del_activities"
  get '/activities_success' , :to => "activities#activities_success"
  get '/activities_fail' , :to => "activities#activities_fail"
  #活動報名
  # get 'excel', :to => "activities#excel"
  get '/excel', :to => "activities#excel"
  get '/cate_about', :to => "cates#cate_about"


  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'

  get 'resumes/destroy'

  get 'attachments/:id'  => 'resumes#download'


  # get '*anything' => 'errors#routing_error'

  resources :footers
  #mount Ckeditor::Engine => '/ckeditor'
  resources :cates
  resources :msgs
  # devise_for :users
  get '/user_list' , :to => "member#index"
  get '/edit_service' , :to => "footers#edit_service"
  get '/edit_slug' , :to => "footers#edit_slug"
  get '/edit_aboutus' , :to => "footers#edit_aboutus"
  get "/edit_company/:id" => 'footers#edit_company'
  get "/about_company/:id" => 'home#about_company'
  


  #home
  get '/' , :to => "home#carousel"
  get '/index' , :to => "home#index"
  get '/index2' , :to => "home#index2"

  get '/download' , :to => "home#download"
  get '/signup(/:id)' , :to => "home#signup"
  get '/news(/:cate_id)' , :to => "home#news"
  get '/news2(/:id)' , :to => "home#news2"
  get '/class_list', :to => "home#class_list"
  get '/service' , :to => "home#service"
  get '/contact' , :to => "home#contact"
  get '/about' , :to => "home#about"
  get '/event' , :to => "home#event"


  get 'safety_advice', :to => "home#safety_advice"
  #news
  get '/annos'     , :to => "home#annos"
  get '/anno'      , :to => "home#anno"

  #產品
  get '/product_main'     , :to => "home#product_main"
  get '/product_ms(/:id)' , :to => "home#product_ms"
  get '/product(/:id)'    , :to => "home#product"

  #產業
  get '/solutions_main'    , :to => "home#solutions_main"
  get '/solutions'    , :to => "home#solutions"  

  #ajax
  post "ajax_msgs" , :to => "msgs#ajax_msgs"

  post "search" , :to => "home#search"
  post "/submit_signup" , :to => "home#submit_signup"
  post "/contact_submit" ,:to => "home#contact_submit"


  post "del_something" , :to =>"ajx#del_something"
  resources :products


  devise_for :users , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_for :users, controllers: { omniauth_callbacks: "callbacks" }
  # root "home#about"
  root "home#carousel"
  
  get "/member/:id" => 'member#member_edit'
  post "/member_create", :to => "member#member_create"
  post "/member_update", :to => "member#member_update"
  get '/user_list' , :to => "member#index"
  get '/user_create' , :to => "member#user_create"

  # CarrierWaveExample::Application.routes.draw do
  resources :photos
  resources :indices
  resources :active_cates
  resources :saves
  resources :announces
  resources :events
  # test
  get '/parse_xml' , :to => "home#parse_xml"
  get '/parse_xml2' , :to => "home#parse_xml2"
  get '/carousel' , :to => "home#carousel"
  
  # test
  resources :resumes, only: [:index, :new, :create, :destroy]
  #    root "resumes#index"
  # end

end
