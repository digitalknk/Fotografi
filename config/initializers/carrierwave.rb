CarrierWave.configure do |config|
  if Rails.env.production?

    ####################################################
    ## Google Storage
    #################################################### 
    config.fog_credentials = {
      :provider                         => 'Google',
      :google_storage_access_key_id     => ENV["ACCESS_KEY_ID"],
      :google_storage_secret_access_key => ENV["SECRET_ACCESS_KEY"]
    }
    config.fog_directory = ENV["BUCKET"]
    config.fog_attributes = {'Cache-Control'=>'max-age=31536000'}


    ####################################################
    ## AMAZON S3 (AWS) Uncomment below
    #################################################### 
    # config.fog_credentials = {
    #   :provider              => 'AWS',
    #   :aws_access_key_id     => ENV["ACCESS_KEY_ID"],
    #   :aws_secret_access_key => ENV["SECRET_ACCESS_KEY"]
    # }
    # config.fog_directory = ENV["BUCKET"]
    # config.fog_attributes = {'Cache-Control'=>'max-age=31536000'}


    ####################################################
    ## Rackspace Cloud Files Uncomment below
    #################################################### 
    # config.fog_credentials = {
    #   :provider           => 'Rackspace',
    #   :rackspace_username => ENV["ACCESS_KEY_ID"],
    #   :rackspace_api_key  => ENV["SECRET_ACCESS_KEY"]
    # }
    # config.fog_directory = ENV["BUCKET"]
    # config.fog_attributes = {'Cache-Control'=>'max-age=31536000'}

  else
    #for development and testing locally
    config.storage = :file
    config.enable_processing = false
  end
end