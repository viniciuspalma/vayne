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
      if object[attribute] == compare_object[attribute]
        { attribute: attribute, status: :no_changes }
      elsif object[attribute] > compare_object[attribute]
        { attribute: attribute, status: :buff }
      elsif object[attribute] < compare_object[attribute]
        { attribute: attribute, status: :nerf }
      end
    end
  end
end
