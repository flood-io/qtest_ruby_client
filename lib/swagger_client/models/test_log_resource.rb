=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class TestLogResource
    attr_accessor :links

    attr_accessor :id

    attr_accessor :test_case_version_id

    attr_accessor :exe_start_date

    attr_accessor :exe_end_date

    attr_accessor :note

    attr_accessor :attachments

    attr_accessor :name

    attr_accessor :planned_exe_time

    attr_accessor :actual_exe_time

    attr_accessor :build_number

    attr_accessor :build_url

    attr_accessor :properties

    attr_accessor :status

    attr_accessor :result_number

    attr_accessor :test_step_logs

    attr_accessor :test_case

    attr_accessor :defects


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'links',
        :'id' => :'id',
        :'test_case_version_id' => :'test_case_version_id',
        :'exe_start_date' => :'exe_start_date',
        :'exe_end_date' => :'exe_end_date',
        :'note' => :'note',
        :'attachments' => :'attachments',
        :'name' => :'name',
        :'planned_exe_time' => :'planned_exe_time',
        :'actual_exe_time' => :'actual_exe_time',
        :'build_number' => :'build_number',
        :'build_url' => :'build_url',
        :'properties' => :'properties',
        :'status' => :'status',
        :'result_number' => :'result_number',
        :'test_step_logs' => :'test_step_logs',
        :'test_case' => :'test_case',
        :'defects' => :'defects'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'id' => :'Integer',
        :'test_case_version_id' => :'Integer',
        :'exe_start_date' => :'DateTime',
        :'exe_end_date' => :'DateTime',
        :'note' => :'String',
        :'attachments' => :'Array<AttachmentResource>',
        :'name' => :'String',
        :'planned_exe_time' => :'Integer',
        :'actual_exe_time' => :'Integer',
        :'build_number' => :'String',
        :'build_url' => :'String',
        :'properties' => :'Array<PropertyResource>',
        :'status' => :'StatusResource',
        :'result_number' => :'Integer',
        :'test_step_logs' => :'Array<TestStepLogResource>',
        :'test_case' => :'TestCaseWithCustomFieldResource',
        :'defects' => :'Array<LinkedDefectResource>'
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

      if attributes.has_key?(:'test_case_version_id')
        self.test_case_version_id = attributes[:'test_case_version_id']
      end

      if attributes.has_key?(:'exe_start_date')
        self.exe_start_date = attributes[:'exe_start_date']
      end

      if attributes.has_key?(:'exe_end_date')
        self.exe_end_date = attributes[:'exe_end_date']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'planned_exe_time')
        self.planned_exe_time = attributes[:'planned_exe_time']
      end

      if attributes.has_key?(:'actual_exe_time')
        self.actual_exe_time = attributes[:'actual_exe_time']
      end

      if attributes.has_key?(:'build_number')
        self.build_number = attributes[:'build_number']
      end

      if attributes.has_key?(:'build_url')
        self.build_url = attributes[:'build_url']
      end

      if attributes.has_key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'result_number')
        self.result_number = attributes[:'result_number']
      end

      if attributes.has_key?(:'test_step_logs')
        if (value = attributes[:'test_step_logs']).is_a?(Array)
          self.test_step_logs = value
        end
      end

      if attributes.has_key?(:'test_case')
        self.test_case = attributes[:'test_case']
      end

      if attributes.has_key?(:'defects')
        if (value = attributes[:'defects']).is_a?(Array)
          self.defects = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @exe_start_date.nil?
        invalid_properties.push("invalid value for 'exe_start_date', exe_start_date cannot be nil.")
      end

      if @exe_end_date.nil?
        invalid_properties.push("invalid value for 'exe_end_date', exe_end_date cannot be nil.")
      end

      if !@planned_exe_time.nil? && @planned_exe_time > 9999999
        invalid_properties.push("invalid value for 'planned_exe_time', must be smaller than or equal to 9999999.")
      end

      if !@planned_exe_time.nil? && @planned_exe_time < 0
        invalid_properties.push("invalid value for 'planned_exe_time', must be greater than or equal to 0.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @exe_start_date.nil?
      return false if @exe_end_date.nil?
      return false if !@planned_exe_time.nil? && @planned_exe_time > 9999999
      return false if !@planned_exe_time.nil? && @planned_exe_time < 0
      return false if @status.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] planned_exe_time Value to be assigned
    def planned_exe_time=(planned_exe_time)

      if !planned_exe_time.nil? && planned_exe_time > 9999999
        fail ArgumentError, "invalid value for 'planned_exe_time', must be smaller than or equal to 9999999."
      end

      if !planned_exe_time.nil? && planned_exe_time < 0
        fail ArgumentError, "invalid value for 'planned_exe_time', must be greater than or equal to 0."
      end

      @planned_exe_time = planned_exe_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          id == o.id &&
          test_case_version_id == o.test_case_version_id &&
          exe_start_date == o.exe_start_date &&
          exe_end_date == o.exe_end_date &&
          note == o.note &&
          attachments == o.attachments &&
          name == o.name &&
          planned_exe_time == o.planned_exe_time &&
          actual_exe_time == o.actual_exe_time &&
          build_number == o.build_number &&
          build_url == o.build_url &&
          properties == o.properties &&
          status == o.status &&
          result_number == o.result_number &&
          test_step_logs == o.test_step_logs &&
          test_case == o.test_case &&
          defects == o.defects
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, id, test_case_version_id, exe_start_date, exe_end_date, note, attachments, name, planned_exe_time, actual_exe_time, build_number, build_url, properties, status, result_number, test_step_logs, test_case, defects].hash
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
