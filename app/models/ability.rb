class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
      if user.id == current_user.id
        can :manage, :all
      end
  end
end
