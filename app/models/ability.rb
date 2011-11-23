class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new()

    if user.role?(:Admin)
      can :manage, :all
    end
    if user.role?(:User)
      can :read, Content
      can :update, User do |user|
        user.try(:user) == user
      end  
    end
    if user.role? :Author
      can :manage, Content
     
    end
  end
end          