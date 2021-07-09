class HomeController < ApplicationController
    before_action :authenticate_tourist!
    def index; end
end
