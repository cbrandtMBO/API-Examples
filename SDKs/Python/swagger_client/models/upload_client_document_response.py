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


class UploadClientDocumentResponse(object):
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
        'file_size': 'int',
        'file_name': 'str'
    }

    attribute_map = {
        'file_size': 'FileSize',
        'file_name': 'FileName'
    }

    def __init__(self, file_size=None, file_name=None):  # noqa: E501
        """UploadClientDocumentResponse - a model defined in Swagger"""  # noqa: E501

        self._file_size = None
        self._file_name = None
        self.discriminator = None

        if file_size is not None:
            self.file_size = file_size
        if file_name is not None:
            self.file_name = file_name

    @property
    def file_size(self):
        """Gets the file_size of this UploadClientDocumentResponse.  # noqa: E501

        The size of the uploaded file.  # noqa: E501

        :return: The file_size of this UploadClientDocumentResponse.  # noqa: E501
        :rtype: int
        """
        return self._file_size

    @file_size.setter
    def file_size(self, file_size):
        """Sets the file_size of this UploadClientDocumentResponse.

        The size of the uploaded file.  # noqa: E501

        :param file_size: The file_size of this UploadClientDocumentResponse.  # noqa: E501
        :type: int
        """

        self._file_size = file_size

    @property
    def file_name(self):
        """Gets the file_name of this UploadClientDocumentResponse.  # noqa: E501

        The name of the uploaded file.  # noqa: E501

        :return: The file_name of this UploadClientDocumentResponse.  # noqa: E501
        :rtype: str
        """
        return self._file_name

    @file_name.setter
    def file_name(self, file_name):
        """Sets the file_name of this UploadClientDocumentResponse.

        The name of the uploaded file.  # noqa: E501

        :param file_name: The file_name of this UploadClientDocumentResponse.  # noqa: E501
        :type: str
        """

        self._file_name = file_name

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
        if issubclass(UploadClientDocumentResponse, dict):
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
        if not isinstance(other, UploadClientDocumentResponse):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other