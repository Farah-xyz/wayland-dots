#====================================================================#
#=================== qutebrowser Settings ===========================#
#====================================================================#
# Import Theme
import catppuccin

# load your autoconfig, use this if the rest of your config is empty!
config.load_autoconfig()

# set the flavour you'd like to use
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
catppuccin.setup(c, 'mocha')

#====================================================================#
#========================== My Config ===============================#
#====================================================================#
############################################
#############       Font        ############
############################################
c.fonts.default_size = '10pt'
c.fonts.default_family = "JetBrains Mono Nerd Font"
c.fonts.completion.entry = '10pt "JetBrains Mono Nerd Font"'
c.fonts.debug_console = '10pt "JetBrains Mono Nerd Font"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '10pt "JetBrains Mono Nerd Font"'
############################################
#############      statusbar    ############
############################################
c.statusbar.show = 'always'
c.statusbar.position = 'bottom'
c.statusbar.widgets = ['progress', 'keypress', 'url', 'scroll', 'history', 'tabs']
###############################################
############       Tabs     ###################
###############################################
c.tabs.favicons.show = 'always'
c.tabs.favicons.scale=1
c.tabs.background = True
c.tabs.last_close = 'ignore'
c.tabs.position = 'top'
c.tabs.show = 'multiple'
c.tabs.padding = { "left": 5, "right": 5, "bottom": 5, "top": 5 }
###############################################
############       URL     ####################
###############################################
# c.url.default_page = '~/prjcts/siteWeb/newtab/index.html'
# c.url.start_pages = '~/prjcts/siteWeb/newtab/index.html'
# c.url.default_page = 'https://start.duckduckgo.com/'
# c.url.start_pages = 'https://start.duckduckgo.com/'
##################################################
######## download manager  #######################
##################################################
c.downloads.location.directory = '~/dl'
c.downloads.location.suggestion = "both"
c.downloads.location.remember = True
c.downloads.position = 'bottom'
c.downloads.remove_finished = 5000
###############################################
################       Others  ################
###############################################
# c.auto_save.session=True
c.scrolling.smooth=True
c.completion.height=200
c.confirm_quit=["multiple-tabs", "downloads"]
config.set("zoom.default", "90%")
# config.set("colors.webpage.darkmode.enabled", True)
