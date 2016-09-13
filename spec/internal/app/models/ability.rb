class Ability
  include CanCan::Ability

  def initialize
    can :manage, Topic
  end
end
