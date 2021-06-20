Rails.application.routes.draw do
  get "html_pages/help"
  get "html_pages/about"
  root "html_pages#home"
end
