=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class TestStepResource
    attr_accessor :links

    attr_accessor :id

    attr_accessor :description

    attr_accessor :expected

    attr_accessor :order

    attr_accessor :group

    attr_accessor :called_test_case_name

    attr_accessor :root_called_test_case_id

    attr_accessor :called_test_case

    attr_accessor :parent_test_step_id

    attr_accessor :called_test_case_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'links',
        :'id' => :'id',
        :'description' => :'description',
        :'expected' => :'expected',
        :'order' => :'order',
        :'group' => :'group',
        :'called_test_case_name' => :'called_test_case_name',
        :'root_called_test_case_id' => :'root_called_test_case_id',
        :'called_test_case' => :'called_test_case',
        :'parent_test_step_id' => :'parent_test_step_id',
        :'called_test_case_id' => :'called_test_case_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'id' => :'Integer',
        :'description' => :'String',
        :'expected' => :'String',
        :'order' => :'Integer',
        :'group' => :'Integer',
        :'called_test_case_name' => :'String',
        :'root_called_test_case_id' => :'Integer',
        :'called_test_case' => :'TestCaseWithCustomFieldResource',
        :'parent_test_step_id' => :'Integer',
        :'called_test_case_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'expected')
        self.expected = attributes[:'expected']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.has_key?(:'called_test_case_name')
        self.called_test_case_name = attributes[:'called_test_case_name']
      end

      if attributes.has_key?(:'root_called_test_case_id')
        self.root_called_test_case_id = attributes[:'root_called_test_case_id']
      end

      if attributes.has_key?(:'called_test_case')
        self.called_test_case = attributes[:'called_test_case']
      end

      if attributes.has_key?(:'parent_test_step_id')
        self.parent_test_step_id = attributes[:'parent_test_step_id']
      end

      if attributes.has_key?(:'called_test_case_id')
        self.called_test_case_id = attributes[:'called_test_case_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @expected.nil?
        invalid_properties.push("invalid value for 'expected', expected cannot be nil.")
      end

      if !@order.nil? && @order < 1
        invalid_properties.push("invalid value for 'order', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @description.nil?
      return false if @expected.nil?
      return false if !@order.nil? && @order < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] order Value to be assigned
    def order=(order)

      if !order.nil? && order < 1
        fail ArgumentError, "invalid value for 'order', must be greater than or equal to 1."
      end

      @order = order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          id == o.id &&
          description == o.description &&
          expected == o.expected &&
          order == o.order &&
          group == o.group &&
          called_test_case_name == o.called_test_case_name &&
          root_called_test_case_id == o.root_called_test_case_id &&
          called_test_case == o.called_test_case &&
          parent_test_step_id == o.parent_test_step_id &&
          called_test_case_id == o.called_test_case_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, id, description, expected, order, group, called_test_case_name, root_called_test_case_id, called_test_case, parent_test_step_id, called_test_case_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
