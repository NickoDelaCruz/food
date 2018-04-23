# Mario's Food


Live demo: N/A Heroku not playing nice on Windows

![alt tag](https://i.gyazo.com/fbcd914e3625882ab56fbcd591f9286e.png)

![alt tag](https://i.gyazo.com/b3e648eed4d50fefe6116cd90d2279dd.png)


### Installation
```
Open Terminal
```

```
$ git clone https://github.com/NickoDelaCruz/food.git
```

## How To Run

Install gems

```
$ bundle update
```

Create DB

```
$ rake db:create
```

Migrate DB

```
$ rake db:migrate
```


## Seeding DB w/ Faker

To populate db using Faker Gem run:


```
$ rake db:seed
```

## Testing
Before running rspec:
```
$ rake db:schema:load RAILS_ENV=test

```

and then:

```
$ bundle exec rake db:migrate

```


Run Test:
```
$ rspec
```

## Bugs

N/A

## Built With

* [Atom](https://atom.io/) - Text editor
* [cmder](http://cmder.net/) - Windows terminal
* [Ruby](http://railsinstaller.org/en) - Ruby on Rails



## Authors

* **Nicko Dela Cruz**  [Epicodus Github](https://github.com/NickoDelaCruz)



## License

OS
