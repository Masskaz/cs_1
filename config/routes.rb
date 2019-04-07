Rails.application.routes.draw do
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
