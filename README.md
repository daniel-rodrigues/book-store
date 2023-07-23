# book-store

Learning python and django

## Run

```bash
docker-compose up -d --build
```

### Create super user

```bash
docker-compose exec web python manage.py createsuperuser
```

## Tests

```bash
docker-compose exec web python manage.py test
```
