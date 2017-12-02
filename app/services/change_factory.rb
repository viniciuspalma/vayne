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
      stats_evidences: collect_evidences_by_type(:attribute),
      spell_evidences: collect_evidences_by_type(:spell)
    ]
  end

  private

  attr_reader :change

  def collect_evidences_by_type(type)
    change[:evidences].select do |evidence|
      evidence[type]
    end
  end
end
