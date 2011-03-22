# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Billcue::Application.initialize!

# Add our own custom date format
Time::DATE_FORMATS[:due] = 'due on %m/%d'
