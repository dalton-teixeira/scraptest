from PageObjectLibrary import PageObject
from robot.libraries.BuiltIn import BuiltIn
from time import time, sleep


class SignUpPage(PageObject):

    PAGE_TITLE = "Sign Up · Scrapinghub"
    PAGE_URL = "/account/signup/"

    _locators = {
            "username": "username",
            "email": "email",
            "password": "password1",
            "accept_terms": "accept_terms",
            "SignUp": "//button[text()='Sign Up']"
    }

    def fill_out_new_user_form(self, new_user):
        sleep(1)
        username = "{0}{1}".format(new_user.username, int(time()))
        print(username)
        self.enter_username(username)
        new_email = "{0}@test.com".format(username)
        print(new_email)
        self.enter_email(new_email)
        self.enter_password(new_user.password)
        self.selib.click_element(self.locator.accept_terms)
        
    def enter_username(self, username):
        self.selib.input_text(self.locator.username, username)

    def enter_email(self, email):
        self.selib.input_text(self.locator.email, email)

    def enter_password(self, password):
        self.selib.input_text(self.locator.password, password)

    def click_on_sign_up(self):
        self.selib.click_element(self.locator.SignUp)
        sleep(1)