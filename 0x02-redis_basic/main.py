#!/usr/bin/env python3
"""
Main file
"""

import redis
from exercise import initialize_cache, store_data

# Initialize cache (flush database)
initialize_cache()

# Store data
data = b"hello"
key = store_data(data)
print(key)

# Retrieve data to verify
local_redis = redis.Redis()
print(local_redis.get(key))
