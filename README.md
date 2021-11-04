<div align="center">

# [PreKinder](https://pre-kinder.herokuapp.com/)
[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
![Build Badge][build-badge]

<br>

  app description

---

## Contributors

|Jacq Whitmer|Dane Brophy|Isika Powers|Ezzedine Alwafai|Kevin Nguyen
|--- |--- |--- |--- |--- |
|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://github.com/jrwhitmer)|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://github.com/danembb)|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://github.com/Isikapowers)|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://github.com/ealwafai)|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://github.com/denverdevelopments)
|[<img src= "https://img.shields.io/badge/in-LinkedIn-blue" />](https://www.linkedin.com/in/jacqwhitmer/)|[<img src= "https://img.shields.io/badge/in-LinkedIn-blue" />](https://www.linkedin.com/in/dane-brophy/)|[<img src= "https://img.shields.io/badge/in-LinkedIn-blue" />](https://www.linkedin.com/in/isika/)|[<img src= "https://img.shields.io/badge/in-LinkedIn-blue" />](https://www.linkedin.com/in/ezzedine-alwafai/)|[<img src= "https://img.shields.io/badge/in-LinkedIn-blue" />](https://www.linkedin.com/in/kevin-nguyen-59510520a/)


## Table of Contents
|Links
|--- |
[Tools Used](#tools-used)
[Setup](#setup)
[Learning Goals](#learning-goals)
[Database Schema](#database-schema)
[Wireframes](#wireframes)


## Tools Used

|Development|Development|Testing|Deployment
|--- |--- |--- |--- |
|[<img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />](https://www.ruby-lang.org/en/downloads/)|[<img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)|[ <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://github.com/rspec/rspec-rails)|[<img src="https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white" />](http://virtual-watch-party.herokuapp.com)|
|[ <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />](https://rubygems.org/gems/rails/versions/5.2.6)|[<img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />](https://desktop.github.com/)|[<img src="https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://github.com/teamcapybara/capybara)|[CircleCI](https://circleci.com/)|
|[<img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://rubygems.org/gems/pry/versions/0.10.3)|[Bootstrap](https://rubygems.org/gems/bootstrap/versions/4.0.0)|[<img src="https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://github.com/bblimke/webmock)
|[PostgresQL](https://www.postgresql.org/)|[HTML5](https://developer.mozilla.org/en-US/docs/Web/HTML)|[VCR](https://github.com/vcr/vcr)
|[Postico](https://eggerapps.at/postico/)|[CSS3](https://developer.mozilla.org/en-US/docs/Web/CSS)|[<img src="https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://rubygems.org/gems/launchy/versions/2.4.3)
|[OmniAuth Google OAuth2](https://github.com/zquestz/omniauth-google-oauth2)|[<img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://rubygems.org/gems/rubocop/versions/0.39.0)|[FactoryBot](https://github.com/thoughtbot/factory_bot)
|[Figaro](https://github.com/laserlemon/figaro)|[<img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />](https://atom.io/)|[Faker](https://github.com/faker-ruby/faker)
|[<img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://github.com/lostisland/faraday)||[<img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />](https://rubygems.org/gems/simplecov/versions/0.12.0)|
|[<img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />](https://www.postman.com/product/rest-client/)|

</div>

<div align="center">

## Setup

</div>


  This project requires Ruby 2.7.2.

  * Fork this repository
  * From the command line, install gems and set up your DB:
      * `bundle install && bundle update`
      * `rails db:{create,migrate}`
  * Run the test suite with `bundle exec rspec -fd`
  * Run your development server with `rails s` to see the app in action.

#### Project Configurations

  * Ruby version
      ```bash
      $ ruby -v
      ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
      ```

  * [System dependencies](https://github.com/prekinder/frontend/blob/main/Gemfile)
      ```bash
      $ rails -v
      Rails 5.2.6
      ```

  * Database creation
      ```bash
      $ rails db:{drop,create,migrate,seed}
      Created database 'frontend_development'
      Created database 'frontend_test'
      ```

  * [OAuth setup](https://github.com/zquestz/omniauth-google-oauth2#installation)
      ```bash
      #Gemfile
        gem 'omniauth-google-oauth2'
        gem 'omniauth-rails_csrf_protection'
      ```
      ```bash
      $ bundle install
      ```

  * [Google API setup](https://console.developers.google.com)
      ```bash
      Visit https://console.developers.google.com
      - Select your project
        - From the Credentials section:
          - Select the "OAuth consent screen" tab on top, and provide an 'EMAIL ADDRESS' and a 'PRODUCT NAME'
          - Wait 10 minutes for changes to take effect.
      ```

  * [API key configuration](https://github.com/laserlemon/figaro)
      ```bash
      $ bundle exec figaro install
      ```
      Add your credentials & API keys to `config/application.yml`:
      ```yml
      #Frontend Repo:
      GOOGLE_CLIENT_ID: <your client id>
      GOOGLE_CLIENT_SECRET: <your client secret>

      #Backend Repo:
      yelp_api_key: 'Bearer <your v3 token>'
      ```

  * How to run the test suite
      ```bash
      $ bundle exec rspec -fd
      ```

  * [Local Deployment](http://localhost:3000), for testing
      ```bash
      $ rails s
      => Booting Puma
      => Rails 5.2.6 application starting in development
      => Run `rails server -h` for more startup options
      Puma starting in single mode...
      * Version 3.12.6 (ruby 2.7.2-p137)
      * Min threads: 5, max threads: 5
      * Environment: development
      * Listening on tcp://localhost:3000
      Use Ctrl-C to stop
      ```

  * [Heroku Deployment](https://pre-kinder.herokuapp.com/), for production


<div align="center">

## Learning Goals

</div>


&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Consume two or more external APIs which require authentication<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Build APIs that return JSON responses<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Use an external OAuth provider to authenticate users<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Create a project with a separate frontend and backend<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Organize and refactor code to be more maintainable<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Implement a self-referential relationship in ActiveRecord<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Use Rails to create web pages that allow users to CRUD resources<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Create instance and class methods on a Rails model that use ActiveRecord methods and helpers<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Write model and feature tests that fully cover data logic and potential user behavior<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Utilize Continuous Integration via Travis CI or CircleCI<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Deploy to Heroku<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Implement a production-quality user interface using Bootstrap or other common CSS styling framework<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Implement project management by using project boards, participating in daily stand-ups and retros<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Utilize quality workflow practices: small commits, descriptive pull requests, and code reviews<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Write thorough, understandable documentation<br>
&nbsp; &nbsp; ⭐ &nbsp; &nbsp; Apply RuboCop’s style guide for code quality<br>

<div align="center">

## Database Schema

<img src="https://user-images.githubusercontent.com/78382113/140089201-1d7167e9-6324-47a9-9381-632cb909d0d3.png">

## Wireframes
[Welcome Page](#welcome-page) | [Registration](#registration) | [New Teacher Page](#new-teacher) |
[New Parent Page](#new-parent) | [Teacher Dashboard](#teacher-dashboard) |
[Parent Dashboard](#parent-dashboard) | [Edit Classroom Page](#edit-classroom) | [Parent Profile](#parent-profile) |
[Teacher Profile](#teacher-profile)

The following section displays a comparison of our vision and how our vision came to life.


### Welcome Page


<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140091388-97ca23af-9d19-4bb9-aaa5-49765d80d8f4.png" style="height:225px">
  </td>

  <td style = 'width:45%'>
    <img src="https://user-images.githubusercontent.com/78382113/140091388-97ca23af-9d19-4bb9-aaa5-49765d80d8f4.png" style="height:225px">
  </td>
</tr>
</table>


### Registration

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>
    <img src="https://user-images.githubusercontent.com/78382113/140091891-cb529033-c205-44f1-9b20-80ecdea24088.png" style="height:225px">
  </td>
  <td style = 'width:45%'>
    <img src="https://user-images.githubusercontent.com/78382113/140091891-cb529033-c205-44f1-9b20-80ecdea24088.png" style="height:225px">
  </td>
</tr>
</table>

### New Teacher

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098713-e7f203bd-2f79-4329-8f7d-2b9ee7a8d787.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098713-e7f203bd-2f79-4329-8f7d-2b9ee7a8d787.png" style="height:225px">
  </td>
</tr>
</table>

### New Parent

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098866-a36e8226-353e-431f-8558-dea06e386602.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098866-a36e8226-353e-431f-8558-dea06e386602.png" style="height:225px">
  </td>
</tr>
</table>

#### Teacher Dashboard

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098590-4575512c-f53e-450f-a734-fbd1b2fc64d1.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098590-4575512c-f53e-450f-a734-fbd1b2fc64d1.png" style="height:225px">
  </td>
</tr>
</table>

#### Parent Dashboard

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098960-d11c5d4b-d409-43c1-87e5-5b6dc38306b6.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140098960-d11c5d4b-d409-43c1-87e5-5b6dc38306b6.png" style="height:225px">
  </td>
</tr>
</table>

### Edit Classroom

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099080-fb1a084d-871c-4e33-ae60-7edad6ed3571.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099080-fb1a084d-871c-4e33-ae60-7edad6ed3571.png" style="height:225px">
  </td>
</tr>
</table>

### Parent Profile

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099516-65636c51-7060-48f8-ae41-5726f03a8313.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099516-65636c51-7060-48f8-ae41-5726f03a8313.png" style="height:225px">
  </td>
</tr>
</table>

### Teacher Profile

<table>
<tr>
  <th style='text-align: center'>Wireframe</th>
  <th style='text-align: center'>Production</th>
</tr>

<tr align = 'center'>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099244-5dd5ca3f-501b-4bff-b6b5-fcd0d59bd0b4.png" style="height:225px">
  </td>
  <td style = 'width:45%'>  
    <img src="https://user-images.githubusercontent.com/78382113/140099244-5dd5ca3f-501b-4bff-b6b5-fcd0d59bd0b4.png" style="height:225px">
  </td>
</tr>
</table>

</div>

## Acknowledgements

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/pre-kinder/front-end.svg?style=flat-square
[contributors-url]: https://github.com/pre-kinder/front-end/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/pre-kinder/front-end.svg?style=flat-square
[forks-url]: https://github.com/pre-kinder/front-end/network/members
[stars-shield]: https://img.shields.io/github/stars/pre-kinder/front-end.svg?style=flat-square
[stars-url]: https://github.com/pre-kinder/front-end/stargazers
[issues-shield]: https://img.shields.io/github/issues/pre-kinder/front-end.svg?style=flat-square
[issues-url]: https://github.com/pre-kinder/front-end/issues
[build-badge]: https://img.shields.io/circleci/build/github/pre-kinder/front-end?style=flat-square
