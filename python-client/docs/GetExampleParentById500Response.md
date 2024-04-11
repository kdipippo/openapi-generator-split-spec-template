# GetExampleParentById500Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** | Message response string. | [optional] 
**parent** | [**List[ExampleParentModel]**](ExampleParentModel.md) | Array of objects returned, but API error returns empty array. | [optional] 
**count** | **str** | Count of objects returned, null if error occured. | [optional] 

## Example

```python
from openapi_client.models.get_example_parent_by_id500_response import GetExampleParentById500Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetExampleParentById500Response from a JSON string
get_example_parent_by_id500_response_instance = GetExampleParentById500Response.from_json(json)
# print the JSON string representation of the object
print GetExampleParentById500Response.to_json()

# convert the object into a dict
get_example_parent_by_id500_response_dict = get_example_parent_by_id500_response_instance.to_dict()
# create an instance of GetExampleParentById500Response from a dict
get_example_parent_by_id500_response_form_dict = get_example_parent_by_id500_response.from_dict(get_example_parent_by_id500_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


