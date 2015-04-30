Spree::Core::Engine.routes.draw do
# Spree::Core::Engine.add_routes do
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
# end
end
