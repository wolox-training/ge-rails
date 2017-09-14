class BookPolicy < ApplicationPolicy
    attr_reader :user, :book
    def initialize(user, book)
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
        scope
      end
    end
  end
  