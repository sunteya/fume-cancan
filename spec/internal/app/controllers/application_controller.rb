class ApplicationController < ActionController::Base
  def index
    render plain: "OK"
  end

  def show
    render plain: "FOUND"
  end

  def current_ability
    @current_ability ||= Ability.new
  end
end
