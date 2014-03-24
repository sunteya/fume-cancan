class ApplicationController < ActionController::Base
  def index
    render text: "OK"
  end

  def current_ability
    @current_ability ||= Ability.new
  end
end