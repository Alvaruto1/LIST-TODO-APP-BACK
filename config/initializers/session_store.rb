if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_TODO_list_app', domain: 'TODO-list-app-json-api'
else
    Rails.application.config.session_store :cookie_store, key: '_TODO_list_app'
end