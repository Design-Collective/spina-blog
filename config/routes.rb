Spina::Engine.routes.prepend do
  namespace :admin do
    resources :articles, :categories
  end
end
