module CompareVersions
  class Judge
    def self.call(newer:, older:)
      new(newer, older).adjudicate
    end

    def initialize(newer, older)
      @newer = newer
      @older = older
    end

    def adjudicate
      InvestigateEvidences.(evidences: compare_attributes)
    end

    private

    attr_accessor :newer, :older

    def compare_attributes
      CompareAttributes.new(
        attributes: attributes,
        object: newer
      ).compare(older)
    end

    def attributes
      newer.to_hash.keys
    end
  end
end
