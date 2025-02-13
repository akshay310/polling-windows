# Activate the virtual environment
source ~/env/bin/activate

# Navigate to the project directory
cd /var/www/polling

# Pull the latest changes from the repository
git pull

# Install/update required Python packages
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files 
python manage.py collectstatic --no-input

# Deactivate the virtual environment
deactivate

# restart Nginx to apply changes
sudo systemctl restart nginx


# restart Gunicorn to restart the application
sudo systemctl restart gunicorn
