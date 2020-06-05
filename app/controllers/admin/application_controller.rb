# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    # decommenter cette ligne pour tester l'interface admin avec l'username : 'admin' et pass : '123456' 
    # http_basic_authenticate_with name: "admin", password:"123456"


    before_action :authenticate_admin

    def authenticate_admin
        if !current_user.admin?
          redirect_to root_url, alert: "Vous n'etes pas un user admin !"
        end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
