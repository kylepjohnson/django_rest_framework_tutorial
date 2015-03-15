sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get install -y git
sudo apt-get install -y nginx

curl -O https://raw.githubusercontent.com/kylepjohnson/python3_bootstrap/master/ubuntu14.sh
chmod +x ubuntu14.sh
./ubuntu14.sh

cd ~/
pyvenv ~/venv
source ~/venv/bin/activate

git clone --depth 1 https://github.com/kylepjohnson/django_rest_framework_tutorial.git
cd django_rest_framework_tutorial
pip install -r requirements.txt

python manage.py makemigrations snippets
python manage.py migrate
python manage.py test
