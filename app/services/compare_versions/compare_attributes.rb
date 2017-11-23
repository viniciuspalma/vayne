module CompareVersions
  class CompareAttributes
    def initialize(attributes:, object:)
      @attributes = attributes
      @object = object
    end

    def compare(compare_object)
      verified_attributes(compare_object)
    end

    private

    attr_accessor :attributes, :object

    def verified_attributes(compare_object)
      attributes.map do |attribute|
        verify_attribute(attribute, compare_object)
      end
    end

    def verify_attribute(attribute, compare_object)
      actual = object[attribute]
      previous = compare_object[attribute]

      payload = {
        actual: actual,
        previous: previous,
        attribute: attribute
      }

      if actual == previous
        payload.merge({ status: :no_changes })
      elsif actual > previous
        payload.merge({ status: :buff })
      elsif actual < previous
        payload.merge({ status: :nerf })
      end
    end
  end
end
