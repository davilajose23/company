# Company Inc.
A database example.
### Instalation
Clone this project...

```
  git clone https://github.com/rgp/company.git
```

Get in the projects dir...

```
  cd company
```

Now lets bundle up..

```
  bundle install
```

Create that database...

```
  rake db:create
```

Run the database creation script...

```
  mysql -u root -p company < original_script.sql
```
##### Voila!

### Usage

Run the server...

```
  rails server
```
##### Voila!
