EADME

## Steps

### Clone repository

`git clone git@github.com:DanielSantiagoCampos/technical_test.git`

### Prepare project to up

- `sudo docker-compose run web gem install bundler`
- `sudo docker-compose run web bundle install`
- `sudo docker-compose run web bin/rake db:create`
- `sudo docker-compose run web bin/rake db:migrate`
- `sudo docker-compose up`

### See exercise

- Please open [project](http://localhost:3000/) and navigate.
- Check, `app/views/ && app/controllers`

## References
- https://guides.rubyonrails.org/
- https://github.com/julianvargasalvarez/tailung
- https://docs.docker.com/compose/rails/

