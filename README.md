Fotografi
=========
Ever wanted a simple photo log? Well now you have it! Fotografi was my answer to an problem I was having. I wanted a simple photo log that gave me control of where my photos are hosted.

What is Fotografi?
------------------
A Photolog that is single user and easy to use. It runs on Heroku and images are hosted in the cloud with a provider like [Google Cloud Storage] or [Amazon S3]. So you control fotografi in every way from storage to look.

Gems
----

Fotografi uses:

-   [Rails] version 3.2.11
-   [Unicorn] ">=4.3.1"
-   [Bootstrap-sass] ">= 2.2.2.0"
-   [Simple\_form] ">= 2.0.4"
-   [Figaro] ">= 0.5.0"
-   [sorcery]
-   [rmagick]
-   [carrierwave]
-   [fog]

In Development Fotografi uses:

-   [sqlite3]
-   [better_errors] ">= 0.3.2"
-   [binding\_of\_caller] ">= 0.6.8"

Learn more about [Installing Rails].

Getting Started
---------------

I built fotografi with [Heroku] and [Google Cloud Storage] in mind. So the defaults and instructions are for that setup. It can be changed though especially the cloud storage.

**Before you get started please make sure you have a [Heroku] account and have read their [getting started] guide as well as installed their [toolbelt]. Also that you have registered for [Google Cloud Storage] or [Amazon S3] at least.**

Basically type in these commands in your terminal.

    git clone git://github.com/digitalknk/fotografi.git
---
    cd fotografi
--- 
    heroku apps:create
---
    bundle install
---
    heroku config:add ADMIN_EMAIL=your@email.com
---
    heroku config:add ADMIN_PASSWORD=YoUrPaSsWoRd!
---
    heroku config:add FULL_NAME="Your Name"
---
    heroku config:add SITE_TITLE="My Site"
---
Fotografi is configured to use [Google Cloud Storage] by **default**. Depending which cloud hosting service you use, you will have to uncomment the configure settings in initializers/carrierwave.rb. Make sure to only have **ONE** cloud hosting storage uncommented.

Once you figure out the provider you want to use and have created the bucket, add these to your [Heroku] account by pasting it in your terminal.

    heroku config:add ACCESS_KEY_ID=YourKeyID
---    
    heroku config:add SECRET_ACCESS_KEY=YourSecretKey
---    
    heroku config:add BUCKET=myfotografi
make sure you already created the bucket with your storage provider!

---
    git push heroku master
---
    heroku run rake db:setup
---
    heroku restart
---
Wait a few minutes ...

---
    heroku open
    
Your browser should now have opened to your fotografi install on heroku. Login and start uploading pictures :-)


Documentation and Support
-------------------------

This is the only documentation *for now*. So please come back periodically to check for commits or changes to the documentation.

#### Issues

As of right now I don't know of any but you can [submit][issues] them if you find an issue.
[Submit an issue][issues]


Please Contribute
-----------------

If you make improvements to fotografi, please share with others.

-   Fork the project on GitHub.
-   Make your feature addition or bug fix.
-   Commit with Git.
-   Send me a pull request.

If you add functionality to this application, create an alternative
implementation, or build an application that is similar, please contact
me and I’ll add a note to the README so that others can find your work.

Credits
-------

-   This application was generated with the [rails\_apps\_composer] gem
provided by the [RailsApps Project].
-   Rails Team
-   Authors of the Gems used

License
-------

Copyright © 2013 Jonathan Molina <jm@nerdla.bz\>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

  [Google Cloud Storage]: https://cloud.google.com/products/cloud-storage
  
  [Amazon S3]: http://aws.amazon.com/s3/
    
  [Installing Rails]: http://railsapps.github.com/installing-rails.html

  [rails\_apps\_composer]: https://github.com/RailsApps/rails_apps_composer
    
  [RailsApps Project]: http://railsapps.github.com/
  
  [Rails]: https://github.com/rails/rails
  
  [Unicorn]: http://unicorn.bogomips.org/
  
  [Bootstrap-sass]: https://github.com/thomas-mcdonald/bootstrap-sass
  
  [Simple\_form]: https://github.com/plataformatec/simple_form
  
  [Figaro]: https://github.com/laserlemon/figaro
  
  [sorcery]: https://github.com/NoamB/sorcery
  
  [rmagick]: https://github.com/rmagick/rmagick
  
  [carrierwave]: https://github.com/jnicklas/carrierwave
  
  [fog]: https://github.com/fog/fog
  
  [sqlite3]: https://github.com/luislavena/sqlite3-ruby
  
  [better_errors]: https://github.com/charliesome/better_errors
  
  [binding\_of\_caller]:https://github.com/banister/binding_of_caller
  
  [Heroku]: https://www.heroku.com
  
  [getting started]: https://devcenter.heroku.com/articles/quickstart
  
  [toolbelt]: https://toolbelt.heroku.com/
  
  [issues]:https://github.com/digitalknk/Fotografi/issues
  
  