# coding: utf-8

"""
    Example API

    Example API spec

    The version of the OpenAPI document: v1
    Contact: example@example-team.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from openapi_client.api.example_call_api import ExampleCallApi


class TestExampleCallApi(unittest.TestCase):
    """ExampleCallApi unit test stubs"""

    def setUp(self) -> None:
        self.api = ExampleCallApi()

    def tearDown(self) -> None:
        pass

    def test_get_children_by_example_parent_id(self) -> None:
        """Test case for get_children_by_example_parent_id

        Get children of parent by example parent ID.
        """
        pass

    def test_get_children_with_pets_by_example_parent_id(self) -> None:
        """Test case for get_children_with_pets_by_example_parent_id

        Get children with pets of parent by example parent ID.
        """
        pass

    def test_get_example_parent_by_id(self) -> None:
        """Test case for get_example_parent_by_id

        Get example parent by ID.
        """
        pass

    def test_get_examples(self) -> None:
        """Test case for get_examples

        Get examples.
        """
        pass


if __name__ == '__main__':
    unittest.main()