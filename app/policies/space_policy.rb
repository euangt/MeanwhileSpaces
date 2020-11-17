class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    signed_in?
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    signed_in?
  end

  def destroy?
    signed_in?
  end

  private

  def signed_in?
    record.user == user
  end
end
