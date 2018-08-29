=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class TestRunWithCustomFieldResource
    attr_accessor :parent_id

    attr_accessor :parent_type

    attr_accessor :created

    attr_accessor :links

    attr_accessor :id

    attr_accessor :name

    attr_accessor :order

    attr_accessor :pid

    attr_accessor :created_date

    attr_accessor :last_modified_date

    attr_accessor :properties

    attr_accessor :test_case

    attr_accessor :test_case_version_id

    attr_accessor :creator_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parent_id' => :'parentId',
        :'parent_type' => :'parentType',
        :'created' => :'created',
        :'links' => :'links',
        :'id' => :'id',
        :'name' => :'name',
        :'order' => :'order',
        :'pid' => :'pid',
        :'created_date' => :'created_date',
        :'last_modified_date' => :'last_modified_date',
        :'properties' => :'properties',
        :'test_case' => :'test_case',
        :'test_case_version_id' => :'test_case_version_id',
        :'creator_id' => :'creator_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'parent_id' => :'Integer',
        :'parent_type' => :'String',
        :'created' => :'DateTime',
        :'links' => :'Array<Link>',
        :'id' => :'Integer',
        :'name' => :'String',
        :'order' => :'Integer',
        :'pid' => :'String',
        :'created_date' => :'DateTime',
        :'last_modified_date' => :'DateTime',
        :'properties' => :'Array<PropertyResource>',
        :'test_case' => :'TestCaseWithCustomFieldResource',
        :'test_case_version_id' => :'Integer',
        :'creator_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'parentId')
        self.parent_id = attributes[:'parentId']
      end

      if attributes.has_key?(:'parentType')
        self.parent_type = attributes[:'parentType']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'pid')
        self.pid = attributes[:'pid']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'last_modified_date')
        self.last_modified_date = attributes[:'last_modified_date']
      end

      if attributes.has_key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.has_key?(:'test_case')
        self.test_case = attributes[:'test_case']
      end

      if attributes.has_key?(:'test_case_version_id')
        self.test_case_version_id = attributes[:'test_case_version_id']
      end

      if attributes.has_key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 500
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 500.")
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push("invalid value for 'name', the character length must be great than or equal to 1.")
      end

      if @properties.nil?
        invalid_properties.push("invalid value for 'properties', properties cannot be nil.")
      end

      if @test_case.nil?
        invalid_properties.push("invalid value for 'test_case', test_case cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      parent_type_validator = EnumAttributeValidator.new('String', ["root", "release", "test-cycle", "test-suite"])
      return false unless parent_type_validator.valid?(@parent_type)
      return false if !@name.nil? && @name.to_s.length > 500
      return false if !@name.nil? && @name.to_s.length < 1
      return false if @properties.nil?
      return false if @test_case.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] parent_type Object to be assigned
    def parent_type=(parent_type)
      validator = EnumAttributeValidator.new('String', ["root", "release", "test-cycle", "test-suite"])
      unless validator.valid?(parent_type)
        fail ArgumentError, "invalid value for 'parent_type', must be one of #{validator.allowable_values}."
      end
      @parent_type = parent_type
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 500
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 500."
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, "invalid value for 'name', the character length must be great than or equal to 1."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent_id == o.parent_id &&
          parent_type == o.parent_type &&
          created == o.created &&
          links == o.links &&
          id == o.id &&
          name == o.name &&
          order == o.order &&
          pid == o.pid &&
          created_date == o.created_date &&
          last_modified_date == o.last_modified_date &&
          properties == o.properties &&
          test_case == o.test_case &&
          test_case_version_id == o.test_case_version_id &&
          creator_id == o.creator_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [parent_id, parent_type, created, links, id, name, order, pid, created_date, last_modified_date, properties, test_case, test_case_version_id, creator_id].hash
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
