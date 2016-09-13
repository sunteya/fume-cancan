class ApplicationController < ActionController::Base
  def index
    render plain: "OK"
  end

  def current_ability
    @current_ability ||= Ability.new
  end
end
