=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'date'

module SwaggerClient
  # A Client
  class Client
    # The gender of staff member with whom the client prefers to book appointments.
    attr_accessor :appointment_gender_preference

    # The client’s date of birth.
    attr_accessor :birth_date

    # The client’s country.
    attr_accessor :country

    # The date the client’s profile was created and added to the business, either by the client from the online store, or by a staff member. This value always returns in the format `yyyy-mm-ddThh:mm:ss:ms`.
    attr_accessor :creation_date

    # Contains information about the custom client fields assigned to the client.
    attr_accessor :custom_client_fields

    # Contains information about the client’s credit card.
    attr_accessor :client_credit_card

    # Contains the IDs of the client’s assigned ClientIndexes and ClientIndexValues.
    attr_accessor :client_indexes

    # Contains information about the relationship between two clients.
    attr_accessor :client_relationships

    # The date of the client’s first booked appointment at the business.
    attr_accessor :first_appointment_date

    # The client’s first name.
    attr_accessor :first_name

    # The client’s ID, as configured by the business owner. This is the client’s barcode ID if the business owner assigns barcodes to clients. This ID is used throughout the Public API for client-related Public API calls. When used in a POST `UpdateClient` request, the `Id` is used to identify the client for the update.
    attr_accessor :id

    # When `true`, indicates that the client should be marked as a company at the business.<br />  When `false`, indicates the client is an individual and does not represent a company.
    attr_accessor :is_company

    # This value is set only if the business owner allows individuals to be prospects.<br />  When `true`, indicates that the client should be marked as a prospect for the business.<br />  When `false`, indicates that the client should not be marked as a prospect for the business.
    attr_accessor :is_prospect

    # The client’s last name.
    attr_accessor :last_name

    # Contains the client’s liability agreement information for the business.
    attr_accessor :liability

    # Passing `true` sets the client’s liability information as follows:  * `IsReleased` is set to `true`.  * `AgreementDate` is set to the time zone of the business when the call was processed.  * `ReleasedBy` is set to `null` if the call is made by the client, `0` if the call was made by the business owner, or to a specific staff member’s ID if a staff member made the call.  Passing `false` sets the client’s liability information as follows:  * `IsReleased` is set to `false`.  * `AgreementDate` is set to `null`.  * `ReleasedBy` is set to `null`.
    attr_accessor :liability_release

    # The ID of the [membership icon](https://support.mindbodyonline.com/s/article/203259703-Membership-Setup-screen?language=en_US) displayed next to the client’s name, if the client has a membership on their account.
    attr_accessor :membership_icon

    # The client’s mobile provider.
    attr_accessor :mobile_provider

    # Any notes entered on the client’s account by staff members. This value should never be shown to clients unless the business owner has a specific reason for showing them.
    attr_accessor :notes

    # The client’s state.
    attr_accessor :state

    # The client’s system-generated ID at the business. This value cannot be changed by business owners and is always unique across all clients at the business. This ID is not widely used in the Public API, but can be used by your application to uniquely identify clients.
    attr_accessor :unique_id

    # The UTC date and time when the client’s information was last modified.
    attr_accessor :last_modified_date_time

    # Contains any red alert information entered by the business owner for the client.
    attr_accessor :red_alert

    # Contains any yellow alert information entered by the business owner for the client.
    attr_accessor :yellow_alert

    # The client’s middle name.
    attr_accessor :middle_name

    # Contains information about the client [prospect stage](https://support.mindbodyonline.com/s/article/206176457-Prospect-Stages?language=en_US).
    attr_accessor :prospect_stage

    # The client’s email address.
    attr_accessor :email

    # The client’s mobile phone number.
    attr_accessor :mobile_phone

    # The client’s home phone number.
    attr_accessor :home_phone

    # The client’s work phone number.
    attr_accessor :work_phone

    # The client’s current [account balance](https://mindbody-online-support.force.com/support/s/article/203262013-Adding-account-payments-video-tutorial?language=en_US).
    attr_accessor :account_balance

    # The first line of the client’s street address.
    attr_accessor :address_line1

    # The second line of the client’s street address, if needed.
    attr_accessor :address_line2

    # The client’s city.
    attr_accessor :city

    # The client’s postal code.
    attr_accessor :postal_code

    # The client’s work phone extension number.
    attr_accessor :work_extension

    # Specifies how the client was referred to the business. You can get a list of possible strings using the `GetClientReferralTypes` endpoint.
    attr_accessor :referred_by

    # The URL of the client’s photo for the client profile.
    attr_accessor :photo_url

    # The name of the client’s emergency contact.
    attr_accessor :emergency_contact_info_name

    # The email address of the client’s emergency contact.
    attr_accessor :emergency_contact_info_email

    # The phone number of the client’s emergency contact.
    attr_accessor :emergency_contact_info_phone

    # The client’s relationship with the emergency contact.
    attr_accessor :emergency_contact_info_relationship

    # The gender of the client.
    attr_accessor :gender

    # The last [formula note](https://support.mindbodyonline.com/s/article/203259903-Appointments-Formula-notes?language=en_US) entered for the client.
    attr_accessor :last_formula_notes

    # When `true`, indicates that the client’s profile is marked as active on the site.<br />  When `false`, the client’s profile is inactive.
    attr_accessor :active

    # A list of sales representatives.
    attr_accessor :sales_reps

    # The status of the client in the business. Possible values are:  * Declined  * Non-Member  * Active  * Expired  * Suspended  * Terminated
    attr_accessor :status

    # The action taken.
    attr_accessor :action

    # When `true`, indicates that the client has opted to receive general account notifications by email. This property is editable.   <br />Default: **false**
    attr_accessor :send_account_emails

    # When `true`, indicates that the client has opted to receive general account notifications by text message. This parameter cannot be updated by developers. If included in a request, it is ignored.
    attr_accessor :send_account_texts

    # When `true`, indicates that the client has opted to receive promotional notifications by email. This property is editable.   <br />Default: **false**
    attr_accessor :send_promotional_emails

    # When `true`, indicates that the client has opted to receive promotional notifications by text message. This parameter cannot be updated by developers. If included in a request, it is ignored.
    attr_accessor :send_promotional_texts

    # When `true`, indicates that the client has opted to receive schedule notifications by email. This property is editable.   <br />Default: **false**
    attr_accessor :send_schedule_emails

    # When `true`, indicates that the client has opted to receive schedule notifications by text message. This parameter cannot be updated by developers. If included in a request, it is ignored.
    attr_accessor :send_schedule_texts

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
        :'appointment_gender_preference' => :'AppointmentGenderPreference',
        :'birth_date' => :'BirthDate',
        :'country' => :'Country',
        :'creation_date' => :'CreationDate',
        :'custom_client_fields' => :'CustomClientFields',
        :'client_credit_card' => :'ClientCreditCard',
        :'client_indexes' => :'ClientIndexes',
        :'client_relationships' => :'ClientRelationships',
        :'first_appointment_date' => :'FirstAppointmentDate',
        :'first_name' => :'FirstName',
        :'id' => :'Id',
        :'is_company' => :'IsCompany',
        :'is_prospect' => :'IsProspect',
        :'last_name' => :'LastName',
        :'liability' => :'Liability',
        :'liability_release' => :'LiabilityRelease',
        :'membership_icon' => :'MembershipIcon',
        :'mobile_provider' => :'MobileProvider',
        :'notes' => :'Notes',
        :'state' => :'State',
        :'unique_id' => :'UniqueId',
        :'last_modified_date_time' => :'LastModifiedDateTime',
        :'red_alert' => :'RedAlert',
        :'yellow_alert' => :'YellowAlert',
        :'middle_name' => :'MiddleName',
        :'prospect_stage' => :'ProspectStage',
        :'email' => :'Email',
        :'mobile_phone' => :'MobilePhone',
        :'home_phone' => :'HomePhone',
        :'work_phone' => :'WorkPhone',
        :'account_balance' => :'AccountBalance',
        :'address_line1' => :'AddressLine1',
        :'address_line2' => :'AddressLine2',
        :'city' => :'City',
        :'postal_code' => :'PostalCode',
        :'work_extension' => :'WorkExtension',
        :'referred_by' => :'ReferredBy',
        :'photo_url' => :'PhotoUrl',
        :'emergency_contact_info_name' => :'EmergencyContactInfoName',
        :'emergency_contact_info_email' => :'EmergencyContactInfoEmail',
        :'emergency_contact_info_phone' => :'EmergencyContactInfoPhone',
        :'emergency_contact_info_relationship' => :'EmergencyContactInfoRelationship',
        :'gender' => :'Gender',
        :'last_formula_notes' => :'LastFormulaNotes',
        :'active' => :'Active',
        :'sales_reps' => :'SalesReps',
        :'status' => :'Status',
        :'action' => :'Action',
        :'send_account_emails' => :'SendAccountEmails',
        :'send_account_texts' => :'SendAccountTexts',
        :'send_promotional_emails' => :'SendPromotionalEmails',
        :'send_promotional_texts' => :'SendPromotionalTexts',
        :'send_schedule_emails' => :'SendScheduleEmails',
        :'send_schedule_texts' => :'SendScheduleTexts'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'appointment_gender_preference' => :'String',
        :'birth_date' => :'DateTime',
        :'country' => :'String',
        :'creation_date' => :'DateTime',
        :'custom_client_fields' => :'Array<CustomClientFieldValue>',
        :'client_credit_card' => :'ClientCreditCard',
        :'client_indexes' => :'Array<AssignedClientIndex>',
        :'client_relationships' => :'Array<ClientRelationship>',
        :'first_appointment_date' => :'DateTime',
        :'first_name' => :'String',
        :'id' => :'String',
        :'is_company' => :'BOOLEAN',
        :'is_prospect' => :'BOOLEAN',
        :'last_name' => :'String',
        :'liability' => :'Liability',
        :'liability_release' => :'BOOLEAN',
        :'membership_icon' => :'Integer',
        :'mobile_provider' => :'Integer',
        :'notes' => :'String',
        :'state' => :'String',
        :'unique_id' => :'Integer',
        :'last_modified_date_time' => :'DateTime',
        :'red_alert' => :'String',
        :'yellow_alert' => :'String',
        :'middle_name' => :'String',
        :'prospect_stage' => :'ProspectStage',
        :'email' => :'String',
        :'mobile_phone' => :'String',
        :'home_phone' => :'String',
        :'work_phone' => :'String',
        :'account_balance' => :'Float',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'city' => :'String',
        :'postal_code' => :'String',
        :'work_extension' => :'String',
        :'referred_by' => :'String',
        :'photo_url' => :'String',
        :'emergency_contact_info_name' => :'String',
        :'emergency_contact_info_email' => :'String',
        :'emergency_contact_info_phone' => :'String',
        :'emergency_contact_info_relationship' => :'String',
        :'gender' => :'String',
        :'last_formula_notes' => :'String',
        :'active' => :'BOOLEAN',
        :'sales_reps' => :'Array<SalesRep>',
        :'status' => :'String',
        :'action' => :'String',
        :'send_account_emails' => :'BOOLEAN',
        :'send_account_texts' => :'BOOLEAN',
        :'send_promotional_emails' => :'BOOLEAN',
        :'send_promotional_texts' => :'BOOLEAN',
        :'send_schedule_emails' => :'BOOLEAN',
        :'send_schedule_texts' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'AppointmentGenderPreference')
        self.appointment_gender_preference = attributes[:'AppointmentGenderPreference']
      end

      if attributes.has_key?(:'BirthDate')
        self.birth_date = attributes[:'BirthDate']
      end

      if attributes.has_key?(:'Country')
        self.country = attributes[:'Country']
      end

      if attributes.has_key?(:'CreationDate')
        self.creation_date = attributes[:'CreationDate']
      end

      if attributes.has_key?(:'CustomClientFields')
        if (value = attributes[:'CustomClientFields']).is_a?(Array)
          self.custom_client_fields = value
        end
      end

      if attributes.has_key?(:'ClientCreditCard')
        self.client_credit_card = attributes[:'ClientCreditCard']
      end

      if attributes.has_key?(:'ClientIndexes')
        if (value = attributes[:'ClientIndexes']).is_a?(Array)
          self.client_indexes = value
        end
      end

      if attributes.has_key?(:'ClientRelationships')
        if (value = attributes[:'ClientRelationships']).is_a?(Array)
          self.client_relationships = value
        end
      end

      if attributes.has_key?(:'FirstAppointmentDate')
        self.first_appointment_date = attributes[:'FirstAppointmentDate']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'IsCompany')
        self.is_company = attributes[:'IsCompany']
      end

      if attributes.has_key?(:'IsProspect')
        self.is_prospect = attributes[:'IsProspect']
      end

      if attributes.has_key?(:'LastName')
        self.last_name = attributes[:'LastName']
      end

      if attributes.has_key?(:'Liability')
        self.liability = attributes[:'Liability']
      end

      if attributes.has_key?(:'LiabilityRelease')
        self.liability_release = attributes[:'LiabilityRelease']
      end

      if attributes.has_key?(:'MembershipIcon')
        self.membership_icon = attributes[:'MembershipIcon']
      end

      if attributes.has_key?(:'MobileProvider')
        self.mobile_provider = attributes[:'MobileProvider']
      end

      if attributes.has_key?(:'Notes')
        self.notes = attributes[:'Notes']
      end

      if attributes.has_key?(:'State')
        self.state = attributes[:'State']
      end

      if attributes.has_key?(:'UniqueId')
        self.unique_id = attributes[:'UniqueId']
      end

      if attributes.has_key?(:'LastModifiedDateTime')
        self.last_modified_date_time = attributes[:'LastModifiedDateTime']
      end

      if attributes.has_key?(:'RedAlert')
        self.red_alert = attributes[:'RedAlert']
      end

      if attributes.has_key?(:'YellowAlert')
        self.yellow_alert = attributes[:'YellowAlert']
      end

      if attributes.has_key?(:'MiddleName')
        self.middle_name = attributes[:'MiddleName']
      end

      if attributes.has_key?(:'ProspectStage')
        self.prospect_stage = attributes[:'ProspectStage']
      end

      if attributes.has_key?(:'Email')
        self.email = attributes[:'Email']
      end

      if attributes.has_key?(:'MobilePhone')
        self.mobile_phone = attributes[:'MobilePhone']
      end

      if attributes.has_key?(:'HomePhone')
        self.home_phone = attributes[:'HomePhone']
      end

      if attributes.has_key?(:'WorkPhone')
        self.work_phone = attributes[:'WorkPhone']
      end

      if attributes.has_key?(:'AccountBalance')
        self.account_balance = attributes[:'AccountBalance']
      end

      if attributes.has_key?(:'AddressLine1')
        self.address_line1 = attributes[:'AddressLine1']
      end

      if attributes.has_key?(:'AddressLine2')
        self.address_line2 = attributes[:'AddressLine2']
      end

      if attributes.has_key?(:'City')
        self.city = attributes[:'City']
      end

      if attributes.has_key?(:'PostalCode')
        self.postal_code = attributes[:'PostalCode']
      end

      if attributes.has_key?(:'WorkExtension')
        self.work_extension = attributes[:'WorkExtension']
      end

      if attributes.has_key?(:'ReferredBy')
        self.referred_by = attributes[:'ReferredBy']
      end

      if attributes.has_key?(:'PhotoUrl')
        self.photo_url = attributes[:'PhotoUrl']
      end

      if attributes.has_key?(:'EmergencyContactInfoName')
        self.emergency_contact_info_name = attributes[:'EmergencyContactInfoName']
      end

      if attributes.has_key?(:'EmergencyContactInfoEmail')
        self.emergency_contact_info_email = attributes[:'EmergencyContactInfoEmail']
      end

      if attributes.has_key?(:'EmergencyContactInfoPhone')
        self.emergency_contact_info_phone = attributes[:'EmergencyContactInfoPhone']
      end

      if attributes.has_key?(:'EmergencyContactInfoRelationship')
        self.emergency_contact_info_relationship = attributes[:'EmergencyContactInfoRelationship']
      end

      if attributes.has_key?(:'Gender')
        self.gender = attributes[:'Gender']
      end

      if attributes.has_key?(:'LastFormulaNotes')
        self.last_formula_notes = attributes[:'LastFormulaNotes']
      end

      if attributes.has_key?(:'Active')
        self.active = attributes[:'Active']
      end

      if attributes.has_key?(:'SalesReps')
        if (value = attributes[:'SalesReps']).is_a?(Array)
          self.sales_reps = value
        end
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'Action')
        self.action = attributes[:'Action']
      end

      if attributes.has_key?(:'SendAccountEmails')
        self.send_account_emails = attributes[:'SendAccountEmails']
      end

      if attributes.has_key?(:'SendAccountTexts')
        self.send_account_texts = attributes[:'SendAccountTexts']
      end

      if attributes.has_key?(:'SendPromotionalEmails')
        self.send_promotional_emails = attributes[:'SendPromotionalEmails']
      end

      if attributes.has_key?(:'SendPromotionalTexts')
        self.send_promotional_texts = attributes[:'SendPromotionalTexts']
      end

      if attributes.has_key?(:'SendScheduleEmails')
        self.send_schedule_emails = attributes[:'SendScheduleEmails']
      end

      if attributes.has_key?(:'SendScheduleTexts')
        self.send_schedule_texts = attributes[:'SendScheduleTexts']
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
      appointment_gender_preference_validator = EnumAttributeValidator.new('String', ['None', 'Female', 'Male'])
      return false unless appointment_gender_preference_validator.valid?(@appointment_gender_preference)
      action_validator = EnumAttributeValidator.new('String', ['None', 'Added', 'Updated', 'Failed', 'Removed'])
      return false unless action_validator.valid?(@action)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] appointment_gender_preference Object to be assigned
    def appointment_gender_preference=(appointment_gender_preference)
      validator = EnumAttributeValidator.new('String', ['None', 'Female', 'Male'])
      unless validator.valid?(appointment_gender_preference)
        fail ArgumentError, 'invalid value for "appointment_gender_preference", must be one of #{validator.allowable_values}.'
      end
      @appointment_gender_preference = appointment_gender_preference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ['None', 'Added', 'Updated', 'Failed', 'Removed'])
      unless validator.valid?(action)
        fail ArgumentError, 'invalid value for "action", must be one of #{validator.allowable_values}.'
      end
      @action = action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          appointment_gender_preference == o.appointment_gender_preference &&
          birth_date == o.birth_date &&
          country == o.country &&
          creation_date == o.creation_date &&
          custom_client_fields == o.custom_client_fields &&
          client_credit_card == o.client_credit_card &&
          client_indexes == o.client_indexes &&
          client_relationships == o.client_relationships &&
          first_appointment_date == o.first_appointment_date &&
          first_name == o.first_name &&
          id == o.id &&
          is_company == o.is_company &&
          is_prospect == o.is_prospect &&
          last_name == o.last_name &&
          liability == o.liability &&
          liability_release == o.liability_release &&
          membership_icon == o.membership_icon &&
          mobile_provider == o.mobile_provider &&
          notes == o.notes &&
          state == o.state &&
          unique_id == o.unique_id &&
          last_modified_date_time == o.last_modified_date_time &&
          red_alert == o.red_alert &&
          yellow_alert == o.yellow_alert &&
          middle_name == o.middle_name &&
          prospect_stage == o.prospect_stage &&
          email == o.email &&
          mobile_phone == o.mobile_phone &&
          home_phone == o.home_phone &&
          work_phone == o.work_phone &&
          account_balance == o.account_balance &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          city == o.city &&
          postal_code == o.postal_code &&
          work_extension == o.work_extension &&
          referred_by == o.referred_by &&
          photo_url == o.photo_url &&
          emergency_contact_info_name == o.emergency_contact_info_name &&
          emergency_contact_info_email == o.emergency_contact_info_email &&
          emergency_contact_info_phone == o.emergency_contact_info_phone &&
          emergency_contact_info_relationship == o.emergency_contact_info_relationship &&
          gender == o.gender &&
          last_formula_notes == o.last_formula_notes &&
          active == o.active &&
          sales_reps == o.sales_reps &&
          status == o.status &&
          action == o.action &&
          send_account_emails == o.send_account_emails &&
          send_account_texts == o.send_account_texts &&
          send_promotional_emails == o.send_promotional_emails &&
          send_promotional_texts == o.send_promotional_texts &&
          send_schedule_emails == o.send_schedule_emails &&
          send_schedule_texts == o.send_schedule_texts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [appointment_gender_preference, birth_date, country, creation_date, custom_client_fields, client_credit_card, client_indexes, client_relationships, first_appointment_date, first_name, id, is_company, is_prospect, last_name, liability, liability_release, membership_icon, mobile_provider, notes, state, unique_id, last_modified_date_time, red_alert, yellow_alert, middle_name, prospect_stage, email, mobile_phone, home_phone, work_phone, account_balance, address_line1, address_line2, city, postal_code, work_extension, referred_by, photo_url, emergency_contact_info_name, emergency_contact_info_email, emergency_contact_info_phone, emergency_contact_info_relationship, gender, last_formula_notes, active, sales_reps, status, action, send_account_emails, send_account_texts, send_promotional_emails, send_promotional_texts, send_schedule_emails, send_schedule_texts].hash
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
