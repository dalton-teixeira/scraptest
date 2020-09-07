import os
import sys

class Config(object):

    def __init__(self):
        _here = os.path.dirname(__file__)

        # Add local python scripts to be recognized from python interpreter automatically 
        sys.path.insert(0, os.path.abspath(os.path.join(_here, "..", "..")))
        sys.path.insert(0, os.path.abspath(os.path.join(_here)))
        self.root = os.path.abspath(os.path.join(_here, ".."))
        # Set webdriver variables
        self.server = "https://app.scrapinghub.com"
        self.browser = "Chrome"
        self.delay = 0
        

    def __str__(self):
        return "<Config: %s>" % str(self.__dict__)


# This creates a variable that robot can see
CONFIG = Config()