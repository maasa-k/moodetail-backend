if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_moodetail', domain: 'moodetail-json-api'
else 
    Rails.application.config.session_store :cookie_store, key: '_moodetail'
end