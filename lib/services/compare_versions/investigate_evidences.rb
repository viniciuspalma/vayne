module CompareVersions
  class InvestigateEvidences
    def self.call(evidences:)
      new(evidences).investigate
    end

    def initialize(evidences)
      @evidences = evidences
    end

    def investigate
      return :no_changes if all_no_changes?
      return :buff if all_buff?
      return :nerf if all_nerf?
    end

    private

    attr_accessor :evidences

    def buff?(evidence)
      evidence[:status] == :buff
    end

    def nerf?(evidence)
      evidence[:status] == :nerf
    end

    def no_changes?
      evidence[:status] == :no_changes
    end

    def all_buff?
      evidences.all? { |evidence| buff?(evidence) }
    end

    def all_nerf?
      evidences.all? { |evidence| nerf?(evidence) }
    end

    def all_no_changes?
      evidences.all? { |evidence| no_changes?(evidence) }
    end

    def evidences_size(status)
      evidences.select do |evidence|
        evidence[:status] == status
      end.size
    end
  end
end
