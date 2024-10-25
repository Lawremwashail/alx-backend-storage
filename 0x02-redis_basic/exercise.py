#!/usr/bin/env python3
"""
Writing strings to Redis
"""

import redis
import uuid
from typing import Union

redis_client = redis.Redis()


def initialize_cache() -> None:
    """
    Flushes Redis database
    """
    redis_client.flushdb()

    def store_data(data: Union[str, bytes, int, float]) -> str:
        key = str(uuid.uuid4())
        redis_client.set(key, data)

        return key
