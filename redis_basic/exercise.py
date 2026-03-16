#!/usr/bin/env python3
"""
Redis basic cache class
"""

import redis
import uuid
from typing import Union


class Cache:
    """Cache class using Redis"""

    def __init__(self):
        """Initialize Redis client and flush database"""
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """Store data in Redis with a random key"""
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key