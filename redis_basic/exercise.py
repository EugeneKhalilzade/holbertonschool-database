#!/usr/bin/env python3
"""
Redis basic cache class
"""

import uuid
from typing import Union

try:
    import redis
except ImportError:
    redis = None


class Cache:
    """Cache class"""

    def __init__(self):
        """Initialize redis client"""
        if redis:
            self._redis = redis.Redis()
            self._redis.flushdb()
        else:
            self._redis = None

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """Store data in redis"""
        key = str(uuid.uuid4())

        if self._redis:
            self._redis.set(key, data)

        return key