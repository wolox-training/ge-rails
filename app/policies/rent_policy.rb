class RentPolicy < ApplicationPolicy
  attr_reader :user, :rent
  def initialize(user, rent)
    @user = user
    @rent = rent
  end

  def create?
    @rent.user_id == user.id
  end
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.select { |rent| rent.user.id == user.id }
    end
  end
end
