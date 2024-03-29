Rails.application.routes.draw do

  controller :pages do
    get 'pages/home'
    get :about, to: 'pages#about'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
  end
  resources :projects, only: :show do
    member do
      get :download_final_report_file
      get :download_video_file
      get :download_subtitle_file
    end
  end

  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
