Rails.application.routes.draw do
  get "html_pages/help"
  get "html_pages/about"
  get "html_pages/home"
  root "html_pages#home"
end
