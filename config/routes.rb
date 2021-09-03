Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  # ["hola", "a", "todos"]
  # %w[hola a todos]
  
# resources :articles, only: %i[index show new]
# get('/articles', to: 'articles#index', as: 'articles' )
# post('/articles', to: 'articles#create')
# get('/articles/new', to: 'articles#new', as: 'new_article')
# get('/articles/:id/edit', to: 'articles#edit', as: 'edit_article')
# get('/articles/:id', to: 'articles#show', as: 'article')
# put('/articles/:id', to: 'articles#update')
# patch('/articles/:id', to: 'articles#update')
# delete('/articles/:id', to: 'articles#destroy')


resources :articles do
  resources :comments, only: [:create, :destroy]
end
root 'welcome#index' 



















end
