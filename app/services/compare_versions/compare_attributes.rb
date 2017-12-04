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
      status = AnalyzeStatus.(actual: object[attribute], previous: compare_object[attribute])

      {
        actual: object[attribute],
        previous: compare_object[attribute],
        attribute: attribute,
        status: status
      }
    end
  end
end
