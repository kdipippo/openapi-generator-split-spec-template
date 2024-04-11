# ExampleChildWithDogModel

TODO 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model_type** | **str** | Field that discerns which ModelType is being used, always \&quot;ExampleChildWithDog\&quot; | [optional] 
**child_id** | **str** | Child ID. | [optional] 
**child_name** | **str** | Child name field. | [optional] 
**dog_name** | **str** | Name of dog associated to child. | [optional] 

## Example

```python
from openapi_client.models.example_child_with_dog_model import ExampleChildWithDogModel

# TODO update the JSON string below
json = "{}"
# create an instance of ExampleChildWithDogModel from a JSON string
example_child_with_dog_model_instance = ExampleChildWithDogModel.from_json(json)
# print the JSON string representation of the object
print ExampleChildWithDogModel.to_json()

# convert the object into a dict
example_child_with_dog_model_dict = example_child_with_dog_model_instance.to_dict()
# create an instance of ExampleChildWithDogModel from a dict
example_child_with_dog_model_form_dict = example_child_with_dog_model.from_dict(example_child_with_dog_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


