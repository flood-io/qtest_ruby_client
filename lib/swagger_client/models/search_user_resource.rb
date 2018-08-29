=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class SearchUserResource
    # Link to resource
    attr_accessor :links

    # ID of the User
    attr_accessor :id

    # Login username of the User
    attr_accessor :username

    # Contact email of the User
    attr_accessor :email

    attr_accessor :password

    # First name of the User
    attr_accessor :first_name

    # Last name of the User
    attr_accessor :last_name

    # Status of the User
    attr_accessor :status

    # Avatar URL of the User
    attr_accessor :avatar

    # LDAP username
    attr_accessor :ldap_username

    # Timezone offset
    attr_accessor :timezone_offset

    # Country name of configured timezone
    attr_accessor :country_name

    # Arrays of Project that user assigned to
    attr_accessor :assigned_projects


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'links',
        :'id' => :'id',
        :'username' => :'username',
        :'email' => :'email',
        :'password' => :'password',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'status' => :'status',
        :'avatar' => :'avatar',
        :'ldap_username' => :'ldap_username',
        :'timezone_offset' => :'timezone_offset',
        :'country_name' => :'country_name',
        :'assigned_projects' => :'assigned_projects'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'id' => :'Integer',
        :'username' => :'String',
        :'email' => :'String',
        :'password' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'status' => :'Integer',
        :'avatar' => :'String',
        :'ldap_username' => :'String',
        :'timezone_offset' => :'String',
        :'country_name' => :'String',
        :'assigned_projects' => :'Array<Integer>'
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

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.has_key?(:'ldap_username')
        self.ldap_username = attributes[:'ldap_username']
      end

      if attributes.has_key?(:'timezone_offset')
        self.timezone_offset = attributes[:'timezone_offset']
      end

      if attributes.has_key?(:'country_name')
        self.country_name = attributes[:'country_name']
      end

      if attributes.has_key?(:'assigned_projects')
        if (value = attributes[:'assigned_projects']).is_a?(Array)
          self.assigned_projects = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          id == o.id &&
          username == o.username &&
          email == o.email &&
          password == o.password &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          status == o.status &&
          avatar == o.avatar &&
          ldap_username == o.ldap_username &&
          timezone_offset == o.timezone_offset &&
          country_name == o.country_name &&
          assigned_projects == o.assigned_projects
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, id, username, email, password, first_name, last_name, status, avatar, ldap_username, timezone_offset, country_name, assigned_projects].hash
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
