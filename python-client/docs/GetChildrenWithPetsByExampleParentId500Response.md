# GetChildrenWithPetsByExampleParentId500Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** | Message response string. | [optional] 
**items** | [**List[ExampleChildWithPetModel]**](ExampleChildWithPetModel.md) | Array of ExampleChildWithPetModel objects returned, but API error returns empty array. | [optional] 
**count** | **str** | Count of objects returned, null if error occured. | [optional] 

## Example

```python
from openapi_client.models.get_children_with_pets_by_example_parent_id500_response import GetChildrenWithPetsByExampleParentId500Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetChildrenWithPetsByExampleParentId500Response from a JSON string
get_children_with_pets_by_example_parent_id500_response_instance = GetChildrenWithPetsByExampleParentId500Response.from_json(json)
# print the JSON string representation of the object
print GetChildrenWithPetsByExampleParentId500Response.to_json()

# convert the object into a dict
get_children_with_pets_by_example_parent_id500_response_dict = get_children_with_pets_by_example_parent_id500_response_instance.to_dict()
# create an instance of GetChildrenWithPetsByExampleParentId500Response from a dict
get_children_with_pets_by_example_parent_id500_response_form_dict = get_children_with_pets_by_example_parent_id500_response.from_dict(get_children_with_pets_by_example_parent_id500_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


