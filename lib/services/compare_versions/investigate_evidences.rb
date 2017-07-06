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

      if evidences_size(:buff) > evidences_size(:nerf)
        return :buff
      elsif evidences_size(:nerf) > evidences_size(:buff)
        return :nerf
      end

      return :unknown
    end

    private

    attr_accessor :evidences

    def status_evidence?(evidence, status)
      evidence[:status] == status
    end

    def all_buff?
      evidences.all? { |evidence| status_evidence?(evidence, :buff) }
    end

    def all_nerf?
      evidences.all? { |evidence| status_evidence?(evidence, :nerf) }
    end

    def all_no_changes?
      evidences.all? { |evidence| status_evidence?(evidence, :no_changes) }
    end

    def evidences_size(status)
      evidences.select do |evidence|
        evidence[:status] == status
      end.size
    end
  end
end
