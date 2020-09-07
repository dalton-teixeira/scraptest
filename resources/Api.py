import requests

class Api(object):
    def get(self, api_key):
        response = requests.get(
            "http://httpbin.scrapinghub.com/get",
            proxies={
                "http": "http://{0}:@proxy.crawlera.com:8010/".format(api_key),
            },
        )
        return response