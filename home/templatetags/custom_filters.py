# custom_filters.py

from django import template
import datetime

register = template.Library()

@register.filter(name='unix_timestamp_to_datetime')
def unix_timestamp_to_datetime(value):
    """
    Convert a Unix timestamp to a datetime string.

    Args:
        value (int): The Unix timestamp to convert.

    Returns:
        str: The datetime string formatted as '%B %d, %Y, %I:%M %p'.
    """
    dt = datetime.datetime.utcfromtimestamp(value)
    return dt.strftime('%m/%d, %I:%M %p')


@register.filter(name='split')
def split(value, key):
    """
        Returns the value turned into a list.
    """
    return value.split(key)