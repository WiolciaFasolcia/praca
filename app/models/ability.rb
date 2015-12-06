class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)

    if user.nil?
      can :read, :all
    elsif user.admin?
      can :manage, :all
    else
        can :read, :all
        can :manage, User, :id => user.id
        can :manage, Document, :user_id => user.id
    end
  
 end
end
