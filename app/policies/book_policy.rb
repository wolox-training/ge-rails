class BookPolicy < ApplicationPolicy
  attr_reader :user, :book
  def initialize(user, _book)
    @user = user
    @book = rent
  end

  def show?
    true
  end
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
