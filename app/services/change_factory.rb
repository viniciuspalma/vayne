class ChangeFactory
  def self.call(change:)
    new(change).build_change
  end

  def initialize(change)
    @change = change
  end

  def build_change
    Change[
      status: change[:status],
      stats_evidences: stats_evidences_attributes
    ]
  end

  private

  attr_reader :change

  def stats_evidences_attributes
    change[:evidences].select { |evidence| evidence[:attribute] }
  end
end
