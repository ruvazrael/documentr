class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new()

    if user.role?(:Admin)
      can :manage, :all
    else
      can :read, :content
    end
    if user.role? :Author
      can :create, Content
      can :update, Content
    end
  end
end          