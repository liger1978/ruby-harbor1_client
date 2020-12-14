=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module Harbor1Client
  class User
    # The ID of the user.
    attr_accessor :user_id

    attr_accessor :username

    attr_accessor :email

    attr_accessor :password

    attr_accessor :realname

    attr_accessor :comment

    attr_accessor :deleted

    attr_accessor :role_name

    attr_accessor :role_id

    attr_accessor :has_admin_role

    attr_accessor :reset_uuid

    attr_accessor :salt

    attr_accessor :creation_time

    attr_accessor :update_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_id' => :'user_id',
        :'username' => :'username',
        :'email' => :'email',
        :'password' => :'password',
        :'realname' => :'realname',
        :'comment' => :'comment',
        :'deleted' => :'deleted',
        :'role_name' => :'role_name',
        :'role_id' => :'role_id',
        :'has_admin_role' => :'has_admin_role',
        :'reset_uuid' => :'reset_uuid',
        :'salt' => :'Salt',
        :'creation_time' => :'creation_time',
        :'update_time' => :'update_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'user_id' => :'Integer',
        :'username' => :'String',
        :'email' => :'String',
        :'password' => :'String',
        :'realname' => :'String',
        :'comment' => :'String',
        :'deleted' => :'BOOLEAN',
        :'role_name' => :'String',
        :'role_id' => :'Integer',
        :'has_admin_role' => :'BOOLEAN',
        :'reset_uuid' => :'String',
        :'salt' => :'String',
        :'creation_time' => :'String',
        :'update_time' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
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

      if attributes.has_key?(:'realname')
        self.realname = attributes[:'realname']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.has_key?(:'role_name')
        self.role_name = attributes[:'role_name']
      end

      if attributes.has_key?(:'role_id')
        self.role_id = attributes[:'role_id']
      end

      if attributes.has_key?(:'has_admin_role')
        self.has_admin_role = attributes[:'has_admin_role']
      end

      if attributes.has_key?(:'reset_uuid')
        self.reset_uuid = attributes[:'reset_uuid']
      end

      if attributes.has_key?(:'Salt')
        self.salt = attributes[:'Salt']
      end

      if attributes.has_key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.has_key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_id == o.user_id &&
          username == o.username &&
          email == o.email &&
          password == o.password &&
          realname == o.realname &&
          comment == o.comment &&
          deleted == o.deleted &&
          role_name == o.role_name &&
          role_id == o.role_id &&
          has_admin_role == o.has_admin_role &&
          reset_uuid == o.reset_uuid &&
          salt == o.salt &&
          creation_time == o.creation_time &&
          update_time == o.update_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [user_id, username, email, password, realname, comment, deleted, role_name, role_id, has_admin_role, reset_uuid, salt, creation_time, update_time].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = Harbor1Client.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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