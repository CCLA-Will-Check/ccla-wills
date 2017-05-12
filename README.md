1. Dependencies
    * Ruby >= 2.3.0
    * Rails >= 5.0.0
    * PostgreSQL
    
2. Installation instructions (development)
   * Clone repo (`git clone http://github.com/redlibrarian/ccla-wills.git`)
   * Install dependencies (`bundle install`)
   * Migrate database (`rake db:migrate`)
   * Load test data (`rake db:seed`)
   * Start rails (`rails s`)
 
3. Installation instructions (production)
   * Set up web server (Apache, Nginx)
   * Set up app server (if desired) (e.g [Phusion Passenger](https://www.phusionpassenger.com/))
   * Postgres Database
   * Clone repo (`git clone http://github.com/redlibrarian/ccla-wills.git`)
   * Install dependencies (`bundle install`)
   * Migrate database (`rake db:migrate`)
   * Configure web and app servers
   * Start servers
   * SSL Certificate in Production
   
   
4. Running tests
   * `rake test`
