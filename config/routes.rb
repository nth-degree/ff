Platform::Application.routes.draw do
  root :to => redirect('/')
  resources :research do
    collection do
      post :espn
      get  :espn
    end
  end
    get '*path' => redirect('/')
    match '*path' => redirect('/'), via: :get
end
