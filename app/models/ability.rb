class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new

    if user.role? :ADMINISTRATOR
        can :manage, :all
    else

    end

  end
end
