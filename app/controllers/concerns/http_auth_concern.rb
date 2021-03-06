# app/controllers/concerns/http_auth_concern.rb
module HttpAuthConcern  
    extend ActiveSupport::Concern
    included do
        before_action :http_authenticate
    end
    def http_authenticate
        puts Rails.env, "what is Rails.env??"
        return true unless Rails.env == 'development'
        authenticate_or_request_with_http_basic do |username, password|
            username == ENV["AUTH_NAME"] && password == ENV["AUTH_PASS"]
        end
    end
end