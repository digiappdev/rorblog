class Admin::ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout 'admin'
end
