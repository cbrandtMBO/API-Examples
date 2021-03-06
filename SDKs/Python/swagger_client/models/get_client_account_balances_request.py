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


class GetClientAccountBalancesRequest(object):
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
        'balance_date': 'datetime',
        'class_id': 'int',
        'client_ids': 'list[str]',
        'limit': 'int',
        'offset': 'int'
    }

    attribute_map = {
        'balance_date': 'BalanceDate',
        'class_id': 'ClassId',
        'client_ids': 'ClientIds',
        'limit': 'Limit',
        'offset': 'Offset'
    }

    def __init__(self, balance_date=None, class_id=None, client_ids=None, limit=None, offset=None):  # noqa: E501
        """GetClientAccountBalancesRequest - a model defined in Swagger"""  # noqa: E501

        self._balance_date = None
        self._class_id = None
        self._client_ids = None
        self._limit = None
        self._offset = None
        self.discriminator = None

        if balance_date is not None:
            self.balance_date = balance_date
        if class_id is not None:
            self.class_id = class_id
        self.client_ids = client_ids
        if limit is not None:
            self.limit = limit
        if offset is not None:
            self.offset = offset

    @property
    def balance_date(self):
        """Gets the balance_date of this GetClientAccountBalancesRequest.  # noqa: E501

        The date you want a balance relative to.   Default: **the current date**  # noqa: E501

        :return: The balance_date of this GetClientAccountBalancesRequest.  # noqa: E501
        :rtype: datetime
        """
        return self._balance_date

    @balance_date.setter
    def balance_date(self, balance_date):
        """Sets the balance_date of this GetClientAccountBalancesRequest.

        The date you want a balance relative to.   Default: **the current date**  # noqa: E501

        :param balance_date: The balance_date of this GetClientAccountBalancesRequest.  # noqa: E501
        :type: datetime
        """

        self._balance_date = balance_date

    @property
    def class_id(self):
        """Gets the class_id of this GetClientAccountBalancesRequest.  # noqa: E501

        The class ID of the event for which you want a balance.  # noqa: E501

        :return: The class_id of this GetClientAccountBalancesRequest.  # noqa: E501
        :rtype: int
        """
        return self._class_id

    @class_id.setter
    def class_id(self, class_id):
        """Sets the class_id of this GetClientAccountBalancesRequest.

        The class ID of the event for which you want a balance.  # noqa: E501

        :param class_id: The class_id of this GetClientAccountBalancesRequest.  # noqa: E501
        :type: int
        """

        self._class_id = class_id

    @property
    def client_ids(self):
        """Gets the client_ids of this GetClientAccountBalancesRequest.  # noqa: E501

        The list of clients IDs for which you want account balances.  # noqa: E501

        :return: The client_ids of this GetClientAccountBalancesRequest.  # noqa: E501
        :rtype: list[str]
        """
        return self._client_ids

    @client_ids.setter
    def client_ids(self, client_ids):
        """Sets the client_ids of this GetClientAccountBalancesRequest.

        The list of clients IDs for which you want account balances.  # noqa: E501

        :param client_ids: The client_ids of this GetClientAccountBalancesRequest.  # noqa: E501
        :type: list[str]
        """
        if client_ids is None:
            raise ValueError("Invalid value for `client_ids`, must not be `None`")  # noqa: E501

        self._client_ids = client_ids

    @property
    def limit(self):
        """Gets the limit of this GetClientAccountBalancesRequest.  # noqa: E501

        Number of results to include, defaults to 100  # noqa: E501

        :return: The limit of this GetClientAccountBalancesRequest.  # noqa: E501
        :rtype: int
        """
        return self._limit

    @limit.setter
    def limit(self, limit):
        """Sets the limit of this GetClientAccountBalancesRequest.

        Number of results to include, defaults to 100  # noqa: E501

        :param limit: The limit of this GetClientAccountBalancesRequest.  # noqa: E501
        :type: int
        """

        self._limit = limit

    @property
    def offset(self):
        """Gets the offset of this GetClientAccountBalancesRequest.  # noqa: E501

        Page offset, defaults to 0.  # noqa: E501

        :return: The offset of this GetClientAccountBalancesRequest.  # noqa: E501
        :rtype: int
        """
        return self._offset

    @offset.setter
    def offset(self, offset):
        """Sets the offset of this GetClientAccountBalancesRequest.

        Page offset, defaults to 0.  # noqa: E501

        :param offset: The offset of this GetClientAccountBalancesRequest.  # noqa: E501
        :type: int
        """

        self._offset = offset

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
        if issubclass(GetClientAccountBalancesRequest, dict):
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
        if not isinstance(other, GetClientAccountBalancesRequest):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
