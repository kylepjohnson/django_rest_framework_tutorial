[![Build Status](https://travis-ci.org/kylepjohnson/django_rest_framework_tutorial.svg?branch=master)](https://travis-ci.org/kylepjohnson/django_rest_framework_tutorial)

# Setup
For the tutorial, see: www.django-rest-framework.org/tutorial/1-serialization/

To get started with a new db:
```
python manage.py makemigrations snippets

python manage.py migrate

python manage.py createsuperuser

python manage.py runserver
```


# Deploy

gunicorn --workers=3 --bind localhost:8001 tutorial.wsgi

Setup instructions at:

* http://michal.karzynski.pl/blog/2013/06/09/django-nginx-gunicorn-virtualenv-supervisor/
* https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-django-with-postgres-nginx-and-gunicorn
* https://github.com/benoitc/gunicorn/blob/master/examples/nginx.conf
* http://agiliq.com/blog/2013/08/minimal-nginx-and-gunicorn-configuration-for-djang/