"""
Package: service
Package for the application models and service routes
This module creates and configures the Flask app and sets up the logging
and SQL database
"""
import logging
from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS

# Create Flask application
app = Flask(__name__)
app.config.from_object("config")

# Initialize Talisman for security headers
talisman = Talisman(app)

# Initialize CORS to enable cross-origin resource sharing
CORS(app)

# Import the routes after the Flask app is created
from service import routes, models

# Set up logging for production
logging.info(70 * "*")
logging.info("  A C C O U N T   S E R V I C E   R U N N I N G  ".center(70, "*"))
logging.info(70 * "*")
