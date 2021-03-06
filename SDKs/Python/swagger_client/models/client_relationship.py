# coding: utf-8

"""
    MINDBODY Public API

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v6
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from swagger_client.models.relationship import Relationship  # noqa: F401,E501


class ClientRelationship(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'related_client_id': 'str',
        'relationship': 'Relationship',
        'relationship_name': 'str'
    }

    attribute_map = {
        'related_client_id': 'RelatedClientId',
        'relationship': 'Relationship',
        'relationship_name': 'RelationshipName'
    }

    def __init__(self, related_client_id=None, relationship=None, relationship_name=None):  # noqa: E501
        """ClientRelationship - a model defined in Swagger"""  # noqa: E501

        self._related_client_id = None
        self._relationship = None
        self._relationship_name = None
        self.discriminator = None

        if related_client_id is not None:
            self.related_client_id = related_client_id
        if relationship is not None:
            self.relationship = relationship
        if relationship_name is not None:
            self.relationship_name = relationship_name

    @property
    def related_client_id(self):
        """Gets the related_client_id of this ClientRelationship.  # noqa: E501

        The RSSID of the related client.  # noqa: E501

        :return: The related_client_id of this ClientRelationship.  # noqa: E501
        :rtype: str
        """
        return self._related_client_id

    @related_client_id.setter
    def related_client_id(self, related_client_id):
        """Sets the related_client_id of this ClientRelationship.

        The RSSID of the related client.  # noqa: E501

        :param related_client_id: The related_client_id of this ClientRelationship.  # noqa: E501
        :type: str
        """

        self._related_client_id = related_client_id

    @property
    def relationship(self):
        """Gets the relationship of this ClientRelationship.  # noqa: E501

        Contains details about the relationship between two clients.  # noqa: E501

        :return: The relationship of this ClientRelationship.  # noqa: E501
        :rtype: Relationship
        """
        return self._relationship

    @relationship.setter
    def relationship(self, relationship):
        """Sets the relationship of this ClientRelationship.

        Contains details about the relationship between two clients.  # noqa: E501

        :param relationship: The relationship of this ClientRelationship.  # noqa: E501
        :type: Relationship
        """

        self._relationship = relationship

    @property
    def relationship_name(self):
        """Gets the relationship_name of this ClientRelationship.  # noqa: E501

        The name of the relationship of the related client.  # noqa: E501

        :return: The relationship_name of this ClientRelationship.  # noqa: E501
        :rtype: str
        """
        return self._relationship_name

    @relationship_name.setter
    def relationship_name(self, relationship_name):
        """Sets the relationship_name of this ClientRelationship.

        The name of the relationship of the related client.  # noqa: E501

        :param relationship_name: The relationship_name of this ClientRelationship.  # noqa: E501
        :type: str
        """

        self._relationship_name = relationship_name

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(ClientRelationship, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, ClientRelationship):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
