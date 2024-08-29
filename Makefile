app:=

all:
	echo "Makefile settings"

setup:
	pip install -r requirements.txt

run:
	python manage.py runserver

check:
	python manage.py check

shell:
	python manage.py shell

m-show:
	python manage.py showmigrations

m-create:
	python manage.py makemigrations $(app)

m-migrate:
	python manage.py migrate $(app)

requirements:
	pipreqs . --force