class createFirefoxProfileModule():
 def create_profile(self):
    from selenium import webdriver
    fp = webdriver.FirefoxProfile()
    fp.set_preference("browser.download.folderList", 2)
    fp.set_preference("browser.download.manager.showWhenStarting", False)
    #fp.set_preference("browser.download.dir", path)
    fp.set_preference("browser.helperApps.neverAsk.saveToDisk", 'application/csv')
    fp.update_preferences()