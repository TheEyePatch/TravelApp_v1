class AdminsController < ApplicationController
    before_action :authenticate_admin!

    def index
        @users = User.where(type: ['Tourist', 'Agency'], approved: true)
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def new
        @admin = Admin.new()
    end

    def create
        @admin = Admin.new(admin_params)
        if @admin.valid? && @admin.save
            redirect_to admins_path, notice: 'Successfully Created Admin!'
        else
            redirect_back fall_back_location: admins_path, alert: @admin.errors_full_messages.first
        end
    end

    private
    
    def admin_params
        params.require(:admin).permit(:email, :first_name, :last_name, :birth_date, :password, :password_confirmation, :cover_pic, :profile_pic)
    end
end
