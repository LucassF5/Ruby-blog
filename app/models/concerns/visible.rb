module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'public').count # Retorna a quantidade de registros com status 'public'
    end
  end

  def archived?
    status == 'archived'
  end
end
