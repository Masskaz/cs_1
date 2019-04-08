Rails.application.routes.draw do

# トップページ指定(heloku)
  root "users#show"
  
# devise(ユーザー)
  devise_for :users
# ユーザー
  resources :users
# コーデ
  resources :cordes
# アイテム
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
