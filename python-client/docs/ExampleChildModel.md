# ExampleChildModel

Object representing example child model, which also references its ExampleParentModels. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_id** | **str** | Child ID. | [optional] 
**child_name** | **str** | Child name field. | [optional] 
**parents** | [**List[ExampleParentModel]**](ExampleParentModel.md) | List of ExampleParentModel objects associated with child. | [optional] 

## Example

```python
from openapi_client.models.example_child_model import ExampleChildModel

# TODO update the JSON string below
json = "{}"
# create an instance of ExampleChildModel from a JSON string
example_child_model_instance = ExampleChildModel.from_json(json)
# print the JSON string representation of the object
print ExampleChildModel.to_json()

# convert the object into a dict
example_child_model_dict = example_child_model_instance.to_dict()
# create an instance of ExampleChildModel from a dict
example_child_model_form_dict = example_child_model.from_dict(example_child_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


