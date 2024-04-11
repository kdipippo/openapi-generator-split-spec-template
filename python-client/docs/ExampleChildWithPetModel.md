# ExampleChildWithPetModel


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model_type** | **object** | Field that discerns which ModelType is being used, always \&quot;ExampleChildWithDog\&quot; | [optional] 
**child_id** | **object** | Child ID. | [optional] 
**child_name** | **object** | Child name field. | [optional] 
**cat_name** | **object** | Name of cat associated to child. | [optional] 
**dog_name** | **object** | Name of dog associated to child. | [optional] 

## Example

```python
from openapi_client.models.example_child_with_pet_model import ExampleChildWithPetModel

# TODO update the JSON string below
json = "{}"
# create an instance of ExampleChildWithPetModel from a JSON string
example_child_with_pet_model_instance = ExampleChildWithPetModel.from_json(json)
# print the JSON string representation of the object
print ExampleChildWithPetModel.to_json()

# convert the object into a dict
example_child_with_pet_model_dict = example_child_with_pet_model_instance.to_dict()
# create an instance of ExampleChildWithPetModel from a dict
example_child_with_pet_model_form_dict = example_child_with_pet_model.from_dict(example_child_with_pet_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


