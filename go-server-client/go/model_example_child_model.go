// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

/*
 * Example API
 *
 * Example API spec
 *
 * API version: v1
 * Contact: example@example-team.com
 */

package openapi




// ExampleChildModel - Object representing example child model, which also references its ExampleParentModels. 
type ExampleChildModel struct {

	// Child ID.
	ChildId string `json:"ChildId,omitempty"`

	// Child name field.
	ChildName string `json:"ChildName,omitempty"`

	// List of ExampleParentModel objects associated with child.
	Parents []ExampleParentModel `json:"Parents,omitempty"`
}

// AssertExampleChildModelRequired checks if the required fields are not zero-ed
func AssertExampleChildModelRequired(obj ExampleChildModel) error {
	for _, el := range obj.Parents {
		if err := AssertExampleParentModelRequired(el); err != nil {
			return err
		}
	}
	return nil
}

// AssertExampleChildModelConstraints checks if the values respects the defined constraints
func AssertExampleChildModelConstraints(obj ExampleChildModel) error {
	return nil
}