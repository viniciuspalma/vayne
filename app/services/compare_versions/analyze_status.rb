module CompareVersions
  class AnalyzeStatus
    def initialize(actual, previous)
      @actual = actual
      @previous = previous
    end

    def self.call(actual:, previous:)
      new(actual, previous).analyze
    end

    def analyze
      if actual == previous
        :no_changes
      elsif actual > previous
        :buff
      elsif actual < previous
        :nerf
      end
    end

    private

    attr_accessor :actual, :previous
  end
end
