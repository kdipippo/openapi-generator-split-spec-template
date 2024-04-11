# ExampleChildWithCatModel

TODO 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model_type** | **str** | Field that discerns which ModelType is being used, always \&quot;ExampleChildWithCat\&quot; | [optional] 
**child_id** | **str** | Child ID. | [optional] 
**child_name** | **str** | Child name field. | [optional] 
**cat_name** | **str** | Name of cat associated to child. | [optional] 

## Example

```python
from openapi_client.models.example_child_with_cat_model import ExampleChildWithCatModel

# TODO update the JSON string below
json = "{}"
# create an instance of ExampleChildWithCatModel from a JSON string
example_child_with_cat_model_instance = ExampleChildWithCatModel.from_json(json)
# print the JSON string representation of the object
print ExampleChildWithCatModel.to_json()

# convert the object into a dict
example_child_with_cat_model_dict = example_child_with_cat_model_instance.to_dict()
# create an instance of ExampleChildWithCatModel from a dict
example_child_with_cat_model_form_dict = example_child_with_cat_model.from_dict(example_child_with_cat_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


