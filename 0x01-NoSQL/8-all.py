#!/usr/bin/env python3
"""
Lists all documents in a collection
"""


def list_all(mongo_collection):
    """
    lists all documents in a collection
    return empty list if no document
    """
    return mongo_collection.find()
