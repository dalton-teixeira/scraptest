from PageObjectLibrary import PageObject


class RegisterPage(PageObject):

    PAGE_TITLE = "Login · Scrapinghub"
    PAGE_URL = "/account/login/?next=/o/367514/crawlera/getting-started%3Fselected%3Dbasic"

    _locators = {
            "register_now": "Register now!"
    }

    def click_on_register_now(self):
        self.selib.click_link(self.locator.register_now)