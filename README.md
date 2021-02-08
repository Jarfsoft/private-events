![](https://img.shields.io/badge/Microverse-blueviolet)
# Ruby on Rails Private Events

> Welcome to our **Ruby on Rails Private-Events** project built mainly with `Ruby` and `Ruby on Rails`. The main purpose of this app is to practice *associations* in `Ruby on Rails`.
Users can create and attend events only if they are logged in but they can only edit or delete their own profile.

![screenshot](./app/assets/images/screenshot.png)

### Built With

- Ruby
- Ruby on Rails 6
- Rubocop
- Visual Studio Code
- Linux
- Devise

### Setup

- Clone or download the project to your local machine. If necessary, unzip the file.

- Change to the project's root directory
```
cd private-events
```

- Install the required gems
```
bundle install
```

- Setup the database
```
rails db:create
rails db:migrate
```

- Start up the Rails server
```
rails server
```

- Open you browser and access your app on the address

NOTE: You need to have `Bundler` installed and, of course, `Ruby`. If don't have `Bundler` installed you can install it with `gem install bundler`.

Assuming that `Bundler` is installed, you can continue with the following steps:
- Step 1: Clone this repository. Just use: `git clone https://github.com/Jarfsoft/private-events`.
- Step 2: Open the project folder where the repository was downloaded. Once you are in that folder, open a terminal and make sure that it will be opened in that specific folder.
- Step 3: Once you are in the terminal, just type in: `bundle install`. This will install the required dependencies for this project.
- Step 4: Type in `rails webpacker:install` to avoid a webpacker:manifest error while trying to run the project.
- Step 5: Now, you need to run the migrations. To do this, while in the project root folder type in: `rails db:migrate`.
- Step 6: Now, to try the project type in: `rails console`. You can add Users, Posts and Comments in hash form. Remember to take into account the restrictions in place for each model. You can check them out in *app/models*.

### Authors

👤 **Juan Raudales**

- Github : [@Jarfsoft](https://github.com/Jarfsoft)
- Twitter : [@Jarfsoft](https://twitter.com/Jarfsoft)
- Linkedin : [Jarfsoft](https://www.linkedin.com/in/juan-raudales-flores-7b0a3b113/)

👤 **Alvaro Ruiz**

- Github: [@alvarorf](https://github.com/alvarorf)
- Twitter: [@aaruizf](https://twitter.com/aaruizf)
- Linkedin: [Álvaro Ruiz](https://www.linkedin.com/in/alvaro-andr%C3%A9s-ruiz-florez/)

### 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

### Show your support

Give a ⭐️ if you like this project!


### 📝 License

This project is for microverse course purposes.
