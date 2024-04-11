# ExampleParentModel

Object representing example parent model. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_id** | **str** | Parent ID. | [optional] 
**parent_name** | **str** | Parent name field. | [optional] 

## Example

```python
from openapi_client.models.example_parent_model import ExampleParentModel

# TODO update the JSON string below
json = "{}"
# create an instance of ExampleParentModel from a JSON string
example_parent_model_instance = ExampleParentModel.from_json(json)
# print the JSON string representation of the object
print ExampleParentModel.to_json()

# convert the object into a dict
example_parent_model_dict = example_parent_model_instance.to_dict()
# create an instance of ExampleParentModel from a dict
example_parent_model_form_dict = example_parent_model.from_dict(example_parent_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


