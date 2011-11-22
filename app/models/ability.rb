class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new()

    if user.role?(:Admin)
      can :manage, :all
    end
    if user.role?(:User)
      can :read, :content
      can :update, User do |user|
        user.try(:user) == user
      end  
    end
    if user.role? :Author
      can :create, Content
      can :update, Content
    end
  end
end          