# coding: utf-8

# flake8: noqa

"""
    Example API

    Example API spec

    The version of the OpenAPI document: v1
    Contact: example@example-team.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


__version__ = "1.0.0"

# import apis into sdk package
from openapi_client.api.example_call_api import ExampleCallApi

# import ApiClient
from openapi_client.api_response import ApiResponse
from openapi_client.api_client import ApiClient
from openapi_client.configuration import Configuration
from openapi_client.exceptions import OpenApiException
from openapi_client.exceptions import ApiTypeError
from openapi_client.exceptions import ApiValueError
from openapi_client.exceptions import ApiKeyError
from openapi_client.exceptions import ApiAttributeError
from openapi_client.exceptions import ApiException

# import models into sdk package
from openapi_client.models.example_child_model import ExampleChildModel
from openapi_client.models.example_child_with_cat_model import ExampleChildWithCatModel
from openapi_client.models.example_child_with_dog_model import ExampleChildWithDogModel
from openapi_client.models.example_child_with_pet_model import ExampleChildWithPetModel
from openapi_client.models.example_parent_model import ExampleParentModel
from openapi_client.models.get_children_by_example_parent_id200_response import GetChildrenByExampleParentId200Response
from openapi_client.models.get_children_by_example_parent_id500_response import GetChildrenByExampleParentId500Response
from openapi_client.models.get_children_with_pets_by_example_parent_id200_response import GetChildrenWithPetsByExampleParentId200Response
from openapi_client.models.get_children_with_pets_by_example_parent_id500_response import GetChildrenWithPetsByExampleParentId500Response
from openapi_client.models.get_example_parent_by_id500_response import GetExampleParentById500Response
from openapi_client.models.get_examples200_response import GetExamples200Response
from openapi_client.models.get_examples500_response import GetExamples500Response