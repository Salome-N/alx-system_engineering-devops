#!/usr/bin/python3
''' Function that queries the Reddit API and returns number of subscribers '''
import requests


def number_of_subscribers(subreddit):
    ''' Counts number of subscribers '''
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    response = requests.get(url, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get('data')
    subs = results.get('subscribers')
    return subs
