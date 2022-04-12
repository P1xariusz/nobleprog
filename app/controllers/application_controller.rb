class ApplicationController < ActionController::Base
    def privacy
        if params[:lang]=='pl'
            render 'privacy_pl'
        elsif params[:lang]=='es'
            render 'privacy_es'
        else
            render 'privacy'
        end
    end

        private
        def check_authenticated
          unless user_signed_in?
            flash[:errors] = "Must be logged in"
            redirect_to root_path
          end
        end
      end
      
        
end
