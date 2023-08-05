Rails.application.routes.draw do
    # ヘルスチェック
    get '/health_check', to: 'health_checks#index'
    # 記事一覧
    get '/maps', to: 'maps#index'
    # 記事詳細  
    get '/maps/:id', to: 'maps#show'
    # 記事作成
    post '/maps', to: 'maps#create'
end
