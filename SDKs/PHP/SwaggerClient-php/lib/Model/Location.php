<?php
/**
 * Location
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * MINDBODY Public API
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v6
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 2.4.6
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;
use \Swagger\Client\ObjectSerializer;

/**
 * Location Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class Location implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'Location';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'additional_image_ur_ls' => 'string[]',
        'address' => 'string',
        'address2' => 'string',
        'amenities' => '\Swagger\Client\Model\Amenity[]',
        'business_description' => 'string',
        'city' => 'string',
        'description' => 'string',
        'has_classes' => 'bool',
        'id' => 'int',
        'latitude' => 'double',
        'longitude' => 'double',
        'name' => 'string',
        'phone' => 'string',
        'phone_extension' => 'string',
        'postal_code' => 'string',
        'site_id' => 'int',
        'state_prov_code' => 'string',
        'tax1' => 'float',
        'tax2' => 'float',
        'tax3' => 'float',
        'tax4' => 'float',
        'tax5' => 'float',
        'total_number_of_ratings' => 'int',
        'average_rating' => 'double',
        'total_number_of_deals' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'additional_image_ur_ls' => null,
        'address' => null,
        'address2' => null,
        'amenities' => null,
        'business_description' => null,
        'city' => null,
        'description' => null,
        'has_classes' => null,
        'id' => 'int32',
        'latitude' => 'double',
        'longitude' => 'double',
        'name' => null,
        'phone' => null,
        'phone_extension' => null,
        'postal_code' => null,
        'site_id' => 'int32',
        'state_prov_code' => null,
        'tax1' => 'float',
        'tax2' => 'float',
        'tax3' => 'float',
        'tax4' => 'float',
        'tax5' => 'float',
        'total_number_of_ratings' => 'int32',
        'average_rating' => 'double',
        'total_number_of_deals' => 'int64'
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'additional_image_ur_ls' => 'AdditionalImageURLs',
        'address' => 'Address',
        'address2' => 'Address2',
        'amenities' => 'Amenities',
        'business_description' => 'BusinessDescription',
        'city' => 'City',
        'description' => 'Description',
        'has_classes' => 'HasClasses',
        'id' => 'Id',
        'latitude' => 'Latitude',
        'longitude' => 'Longitude',
        'name' => 'Name',
        'phone' => 'Phone',
        'phone_extension' => 'PhoneExtension',
        'postal_code' => 'PostalCode',
        'site_id' => 'SiteID',
        'state_prov_code' => 'StateProvCode',
        'tax1' => 'Tax1',
        'tax2' => 'Tax2',
        'tax3' => 'Tax3',
        'tax4' => 'Tax4',
        'tax5' => 'Tax5',
        'total_number_of_ratings' => 'TotalNumberOfRatings',
        'average_rating' => 'AverageRating',
        'total_number_of_deals' => 'TotalNumberOfDeals'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'additional_image_ur_ls' => 'setAdditionalImageUrLs',
        'address' => 'setAddress',
        'address2' => 'setAddress2',
        'amenities' => 'setAmenities',
        'business_description' => 'setBusinessDescription',
        'city' => 'setCity',
        'description' => 'setDescription',
        'has_classes' => 'setHasClasses',
        'id' => 'setId',
        'latitude' => 'setLatitude',
        'longitude' => 'setLongitude',
        'name' => 'setName',
        'phone' => 'setPhone',
        'phone_extension' => 'setPhoneExtension',
        'postal_code' => 'setPostalCode',
        'site_id' => 'setSiteId',
        'state_prov_code' => 'setStateProvCode',
        'tax1' => 'setTax1',
        'tax2' => 'setTax2',
        'tax3' => 'setTax3',
        'tax4' => 'setTax4',
        'tax5' => 'setTax5',
        'total_number_of_ratings' => 'setTotalNumberOfRatings',
        'average_rating' => 'setAverageRating',
        'total_number_of_deals' => 'setTotalNumberOfDeals'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'additional_image_ur_ls' => 'getAdditionalImageUrLs',
        'address' => 'getAddress',
        'address2' => 'getAddress2',
        'amenities' => 'getAmenities',
        'business_description' => 'getBusinessDescription',
        'city' => 'getCity',
        'description' => 'getDescription',
        'has_classes' => 'getHasClasses',
        'id' => 'getId',
        'latitude' => 'getLatitude',
        'longitude' => 'getLongitude',
        'name' => 'getName',
        'phone' => 'getPhone',
        'phone_extension' => 'getPhoneExtension',
        'postal_code' => 'getPostalCode',
        'site_id' => 'getSiteId',
        'state_prov_code' => 'getStateProvCode',
        'tax1' => 'getTax1',
        'tax2' => 'getTax2',
        'tax3' => 'getTax3',
        'tax4' => 'getTax4',
        'tax5' => 'getTax5',
        'total_number_of_ratings' => 'getTotalNumberOfRatings',
        'average_rating' => 'getAverageRating',
        'total_number_of_deals' => 'getTotalNumberOfDeals'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$swaggerModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['additional_image_ur_ls'] = isset($data['additional_image_ur_ls']) ? $data['additional_image_ur_ls'] : null;
        $this->container['address'] = isset($data['address']) ? $data['address'] : null;
        $this->container['address2'] = isset($data['address2']) ? $data['address2'] : null;
        $this->container['amenities'] = isset($data['amenities']) ? $data['amenities'] : null;
        $this->container['business_description'] = isset($data['business_description']) ? $data['business_description'] : null;
        $this->container['city'] = isset($data['city']) ? $data['city'] : null;
        $this->container['description'] = isset($data['description']) ? $data['description'] : null;
        $this->container['has_classes'] = isset($data['has_classes']) ? $data['has_classes'] : null;
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['latitude'] = isset($data['latitude']) ? $data['latitude'] : null;
        $this->container['longitude'] = isset($data['longitude']) ? $data['longitude'] : null;
        $this->container['name'] = isset($data['name']) ? $data['name'] : null;
        $this->container['phone'] = isset($data['phone']) ? $data['phone'] : null;
        $this->container['phone_extension'] = isset($data['phone_extension']) ? $data['phone_extension'] : null;
        $this->container['postal_code'] = isset($data['postal_code']) ? $data['postal_code'] : null;
        $this->container['site_id'] = isset($data['site_id']) ? $data['site_id'] : null;
        $this->container['state_prov_code'] = isset($data['state_prov_code']) ? $data['state_prov_code'] : null;
        $this->container['tax1'] = isset($data['tax1']) ? $data['tax1'] : null;
        $this->container['tax2'] = isset($data['tax2']) ? $data['tax2'] : null;
        $this->container['tax3'] = isset($data['tax3']) ? $data['tax3'] : null;
        $this->container['tax4'] = isset($data['tax4']) ? $data['tax4'] : null;
        $this->container['tax5'] = isset($data['tax5']) ? $data['tax5'] : null;
        $this->container['total_number_of_ratings'] = isset($data['total_number_of_ratings']) ? $data['total_number_of_ratings'] : null;
        $this->container['average_rating'] = isset($data['average_rating']) ? $data['average_rating'] : null;
        $this->container['total_number_of_deals'] = isset($data['total_number_of_deals']) ? $data['total_number_of_deals'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets additional_image_ur_ls
     *
     * @return string[]
     */
    public function getAdditionalImageUrLs()
    {
        return $this->container['additional_image_ur_ls'];
    }

    /**
     * Sets additional_image_ur_ls
     *
     * @param string[] $additional_image_ur_ls A list of URLs of any images associated with this location.
     *
     * @return $this
     */
    public function setAdditionalImageUrLs($additional_image_ur_ls)
    {
        $this->container['additional_image_ur_ls'] = $additional_image_ur_ls;

        return $this;
    }

    /**
     * Gets address
     *
     * @return string
     */
    public function getAddress()
    {
        return $this->container['address'];
    }

    /**
     * Sets address
     *
     * @param string $address The first line of the location’s street address.
     *
     * @return $this
     */
    public function setAddress($address)
    {
        $this->container['address'] = $address;

        return $this;
    }

    /**
     * Gets address2
     *
     * @return string
     */
    public function getAddress2()
    {
        return $this->container['address2'];
    }

    /**
     * Sets address2
     *
     * @param string $address2 A second address line for the location’s street address, if needed.
     *
     * @return $this
     */
    public function setAddress2($address2)
    {
        $this->container['address2'] = $address2;

        return $this;
    }

    /**
     * Gets amenities
     *
     * @return \Swagger\Client\Model\Amenity[]
     */
    public function getAmenities()
    {
        return $this->container['amenities'];
    }

    /**
     * Sets amenities
     *
     * @param \Swagger\Client\Model\Amenity[] $amenities A list of strings representing amenities available at the location.
     *
     * @return $this
     */
    public function setAmenities($amenities)
    {
        $this->container['amenities'] = $amenities;

        return $this;
    }

    /**
     * Gets business_description
     *
     * @return string
     */
    public function getBusinessDescription()
    {
        return $this->container['business_description'];
    }

    /**
     * Sets business_description
     *
     * @param string $business_description The business description for the location, as configured by the business owner.
     *
     * @return $this
     */
    public function setBusinessDescription($business_description)
    {
        $this->container['business_description'] = $business_description;

        return $this;
    }

    /**
     * Gets city
     *
     * @return string
     */
    public function getCity()
    {
        return $this->container['city'];
    }

    /**
     * Sets city
     *
     * @param string $city The location’s city.
     *
     * @return $this
     */
    public function setCity($city)
    {
        $this->container['city'] = $city;

        return $this;
    }

    /**
     * Gets description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->container['description'];
    }

    /**
     * Sets description
     *
     * @param string $description A description of the location.
     *
     * @return $this
     */
    public function setDescription($description)
    {
        $this->container['description'] = $description;

        return $this;
    }

    /**
     * Gets has_classes
     *
     * @return bool
     */
    public function getHasClasses()
    {
        return $this->container['has_classes'];
    }

    /**
     * Sets has_classes
     *
     * @param bool $has_classes When `true`, indicates that classes are held at this location.<br />  When `false`, Indicates that classes are not held at this location.
     *
     * @return $this
     */
    public function setHasClasses($has_classes)
    {
        $this->container['has_classes'] = $has_classes;

        return $this;
    }

    /**
     * Gets id
     *
     * @return int
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int $id The ID assigned to this location.
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets latitude
     *
     * @return double
     */
    public function getLatitude()
    {
        return $this->container['latitude'];
    }

    /**
     * Sets latitude
     *
     * @param double $latitude The location’s latitude.
     *
     * @return $this
     */
    public function setLatitude($latitude)
    {
        $this->container['latitude'] = $latitude;

        return $this;
    }

    /**
     * Gets longitude
     *
     * @return double
     */
    public function getLongitude()
    {
        return $this->container['longitude'];
    }

    /**
     * Sets longitude
     *
     * @param double $longitude The location’s longitude.
     *
     * @return $this
     */
    public function setLongitude($longitude)
    {
        $this->container['longitude'] = $longitude;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string $name The name of this location.
     *
     * @return $this
     */
    public function setName($name)
    {
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets phone
     *
     * @return string
     */
    public function getPhone()
    {
        return $this->container['phone'];
    }

    /**
     * Sets phone
     *
     * @param string $phone The location’s phone number.
     *
     * @return $this
     */
    public function setPhone($phone)
    {
        $this->container['phone'] = $phone;

        return $this;
    }

    /**
     * Gets phone_extension
     *
     * @return string
     */
    public function getPhoneExtension()
    {
        return $this->container['phone_extension'];
    }

    /**
     * Sets phone_extension
     *
     * @param string $phone_extension The location’s phone extension.
     *
     * @return $this
     */
    public function setPhoneExtension($phone_extension)
    {
        $this->container['phone_extension'] = $phone_extension;

        return $this;
    }

    /**
     * Gets postal_code
     *
     * @return string
     */
    public function getPostalCode()
    {
        return $this->container['postal_code'];
    }

    /**
     * Sets postal_code
     *
     * @param string $postal_code The location’s postal code.
     *
     * @return $this
     */
    public function setPostalCode($postal_code)
    {
        $this->container['postal_code'] = $postal_code;

        return $this;
    }

    /**
     * Gets site_id
     *
     * @return int
     */
    public function getSiteId()
    {
        return $this->container['site_id'];
    }

    /**
     * Sets site_id
     *
     * @param int $site_id The ID number assigned to this location.
     *
     * @return $this
     */
    public function setSiteId($site_id)
    {
        $this->container['site_id'] = $site_id;

        return $this;
    }

    /**
     * Gets state_prov_code
     *
     * @return string
     */
    public function getStateProvCode()
    {
        return $this->container['state_prov_code'];
    }

    /**
     * Sets state_prov_code
     *
     * @param string $state_prov_code The location’s state or province code.
     *
     * @return $this
     */
    public function setStateProvCode($state_prov_code)
    {
        $this->container['state_prov_code'] = $state_prov_code;

        return $this;
    }

    /**
     * Gets tax1
     *
     * @return float
     */
    public function getTax1()
    {
        return $this->container['tax1'];
    }

    /**
     * Sets tax1
     *
     * @param float $tax1 A decimal representation of the location’s first tax rate. Tax properties are provided to apply all taxes to the purchase price that the purchase is subject to. Use as many tax properties as needed to represent all the taxes that apply in the location. Enter a decimal number that represents the appropriate tax rate. For example, for an 8% sales tax, enter 0.08.
     *
     * @return $this
     */
    public function setTax1($tax1)
    {
        $this->container['tax1'] = $tax1;

        return $this;
    }

    /**
     * Gets tax2
     *
     * @return float
     */
    public function getTax2()
    {
        return $this->container['tax2'];
    }

    /**
     * Sets tax2
     *
     * @param float $tax2 A decimal representation of the location’s second tax rate. See the example in the description of Tax1.
     *
     * @return $this
     */
    public function setTax2($tax2)
    {
        $this->container['tax2'] = $tax2;

        return $this;
    }

    /**
     * Gets tax3
     *
     * @return float
     */
    public function getTax3()
    {
        return $this->container['tax3'];
    }

    /**
     * Sets tax3
     *
     * @param float $tax3 A decimal representation of the location’s third tax rate. See the example in the description of Tax1.
     *
     * @return $this
     */
    public function setTax3($tax3)
    {
        $this->container['tax3'] = $tax3;

        return $this;
    }

    /**
     * Gets tax4
     *
     * @return float
     */
    public function getTax4()
    {
        return $this->container['tax4'];
    }

    /**
     * Sets tax4
     *
     * @param float $tax4 A decimal representation of the location’s fourth tax rate. See the example in the description of Tax1.
     *
     * @return $this
     */
    public function setTax4($tax4)
    {
        $this->container['tax4'] = $tax4;

        return $this;
    }

    /**
     * Gets tax5
     *
     * @return float
     */
    public function getTax5()
    {
        return $this->container['tax5'];
    }

    /**
     * Sets tax5
     *
     * @param float $tax5 A decimal representation of the location’s fifth tax rate. See the example in the description of Tax1.
     *
     * @return $this
     */
    public function setTax5($tax5)
    {
        $this->container['tax5'] = $tax5;

        return $this;
    }

    /**
     * Gets total_number_of_ratings
     *
     * @return int
     */
    public function getTotalNumberOfRatings()
    {
        return $this->container['total_number_of_ratings'];
    }

    /**
     * Sets total_number_of_ratings
     *
     * @param int $total_number_of_ratings The number of reviews that clients have left for this location.
     *
     * @return $this
     */
    public function setTotalNumberOfRatings($total_number_of_ratings)
    {
        $this->container['total_number_of_ratings'] = $total_number_of_ratings;

        return $this;
    }

    /**
     * Gets average_rating
     *
     * @return double
     */
    public function getAverageRating()
    {
        return $this->container['average_rating'];
    }

    /**
     * Sets average_rating
     *
     * @param double $average_rating The average rating for the location, out of five stars.
     *
     * @return $this
     */
    public function setAverageRating($average_rating)
    {
        $this->container['average_rating'] = $average_rating;

        return $this;
    }

    /**
     * Gets total_number_of_deals
     *
     * @return int
     */
    public function getTotalNumberOfDeals()
    {
        return $this->container['total_number_of_deals'];
    }

    /**
     * Sets total_number_of_deals
     *
     * @param int $total_number_of_deals The number of distinct introductory pricing options available for purchase at this location.
     *
     * @return $this
     */
    public function setTotalNumberOfDeals($total_number_of_deals)
    {
        $this->container['total_number_of_deals'] = $total_number_of_deals;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(
                ObjectSerializer::sanitizeForSerialization($this),
                JSON_PRETTY_PRINT
            );
        }

        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}

