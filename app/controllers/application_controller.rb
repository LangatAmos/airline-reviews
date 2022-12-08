class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :set_cors

    def set_cors
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Request-Method'] = '*'
    end
end
