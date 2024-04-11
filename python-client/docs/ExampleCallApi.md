# openapi_client.ExampleCallApi

All URIs are relative to *https://example-server.com:1234/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_children_by_example_parent_id**](ExampleCallApi.md#get_children_by_example_parent_id) | **GET** /example-parents/{id}/example-childs | Get children of parent by example parent ID.
[**get_children_with_pets_by_example_parent_id**](ExampleCallApi.md#get_children_with_pets_by_example_parent_id) | **GET** /example-parents/{id}/example-childs-with-pets | Get children with pets of parent by example parent ID.
[**get_example_parent_by_id**](ExampleCallApi.md#get_example_parent_by_id) | **GET** /example-parents/{id} | Get example parent by ID.
[**get_examples**](ExampleCallApi.md#get_examples) | **GET** /example-parents | Get examples.


# **get_children_by_example_parent_id**
> GetChildrenByExampleParentId200Response get_children_by_example_parent_id(id, limit=limit)

Get children of parent by example parent ID.

An example endpoint where API reponse returns a list of objects of type 'ExampleChildModel', and 'ExampleChildModel' also contains a list of objects of type 'ExampleParentModel'. 

### Example

* Bearer Authentication (BearerAuth):

```python
import openapi_client
from openapi_client.models.get_children_by_example_parent_id200_response import GetChildrenByExampleParentId200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://example-server.com:1234/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://example-server.com:1234/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.ExampleCallApi(api_client)
    id = 'f59e24c1-8d57-4ad3-b6e7-8577fc117269' # str | ID of ExampleParent
    limit = 10 # int | Limit to number of results (optional)

    try:
        # Get children of parent by example parent ID.
        api_response = api_instance.get_children_by_example_parent_id(id, limit=limit)
        print("The response of ExampleCallApi->get_children_by_example_parent_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExampleCallApi->get_children_by_example_parent_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| ID of ExampleParent | 
 **limit** | **int**| Limit to number of results | [optional] 

### Return type

[**GetChildrenByExampleParentId200Response**](GetChildrenByExampleParentId200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved simple response objects. |  -  |
**401** |  |  -  |
**500** | Internal server error encountered. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_children_with_pets_by_example_parent_id**
> GetChildrenWithPetsByExampleParentId200Response get_children_with_pets_by_example_parent_id(id, limit=limit)

Get children with pets of parent by example parent ID.

An example endpoint where API reponse returns a list of objects of type 'ExampleChildWithPetModel', configured to validate how OpenAPI generator handles \"oneOf\" with a \"discrimator\" schema. 

### Example

* Bearer Authentication (BearerAuth):

```python
import openapi_client
from openapi_client.models.get_children_with_pets_by_example_parent_id200_response import GetChildrenWithPetsByExampleParentId200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://example-server.com:1234/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://example-server.com:1234/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.ExampleCallApi(api_client)
    id = 'f59e24c1-8d57-4ad3-b6e7-8577fc117269' # str | ID of ExampleParent
    limit = 10 # int | Limit to number of results (optional)

    try:
        # Get children with pets of parent by example parent ID.
        api_response = api_instance.get_children_with_pets_by_example_parent_id(id, limit=limit)
        print("The response of ExampleCallApi->get_children_with_pets_by_example_parent_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExampleCallApi->get_children_with_pets_by_example_parent_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| ID of ExampleParent | 
 **limit** | **int**| Limit to number of results | [optional] 

### Return type

[**GetChildrenWithPetsByExampleParentId200Response**](GetChildrenWithPetsByExampleParentId200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved simple response objects. |  -  |
**401** |  |  -  |
**500** | Internal server error encountered. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_example_parent_by_id**
> GetExamples200Response get_example_parent_by_id(id, limit=limit)

Get example parent by ID.

Basic example endpoint to return list of objects of type 'ExampleParentModel' by ID.

### Example

* Bearer Authentication (BearerAuth):

```python
import openapi_client
from openapi_client.models.get_examples200_response import GetExamples200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://example-server.com:1234/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://example-server.com:1234/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.ExampleCallApi(api_client)
    id = 'f59e24c1-8d57-4ad3-b6e7-8577fc117269' # str | ID of ExampleParent
    limit = 10 # int | Limit to number of results (optional)

    try:
        # Get example parent by ID.
        api_response = api_instance.get_example_parent_by_id(id, limit=limit)
        print("The response of ExampleCallApi->get_example_parent_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExampleCallApi->get_example_parent_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| ID of ExampleParent | 
 **limit** | **int**| Limit to number of results | [optional] 

### Return type

[**GetExamples200Response**](GetExamples200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved simple response objects. |  -  |
**401** |  |  -  |
**500** | Internal server error encountered. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_examples**
> GetExamples200Response get_examples(limit=limit)

Get examples.

Basic example endpoint to return list of objects of type 'ExampleParentModel'.

### Example

* Bearer Authentication (BearerAuth):

```python
import openapi_client
from openapi_client.models.get_examples200_response import GetExamples200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://example-server.com:1234/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://example-server.com:1234/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.ExampleCallApi(api_client)
    limit = 10 # int | Limit to number of results (optional)

    try:
        # Get examples.
        api_response = api_instance.get_examples(limit=limit)
        print("The response of ExampleCallApi->get_examples:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExampleCallApi->get_examples: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limit to number of results | [optional] 

### Return type

[**GetExamples200Response**](GetExamples200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved simple response objects. |  -  |
**401** |  |  -  |
**500** | Internal server error encountered. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

