Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3002'
    resource '*', headers: :any, methods: %i[get post patch put head options delete], credentials: true
  end
  allow do
    origins 'http://localhost:3001'
    resource '*', headers: :any, methods: %i[get post patch put head options delete], credentials: true
  end
  allow do
    origins 'http://localhost:3000'
    resource '*', headers: :any, methods: %i[get post patch put head options delete], credentials: true
  end
  allow do
    origins 'http://192.168.0.7:3000'
    resource '*', headers: :any, methods: %i[get post patch put head options delete], credentials: true
  end
end
