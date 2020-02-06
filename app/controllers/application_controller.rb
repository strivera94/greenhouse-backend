class ApplicationController < ActionController::API
    def hmac_secret
        ENV["SECRET"]
    end
end
