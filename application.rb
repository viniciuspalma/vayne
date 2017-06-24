require 'bundler'

Bundler.require
$: << File.expand_path('../', __FILE__)

require 'lib/league/champions'
require 'lib/schema/schema'

Dotenv.load

class Application < Sinatra::Base
  configure do
    enable :cross_origin
  end

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  options "*" do
    response.headers["Allow"] = "GET, POST, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end

  #receive a request as graphql language
  post '/graphql' do
    pass unless request.content_type =~ /application\/graphql/

    ::MultiJson.dump(Schema.execute(request.body.read), pretty: true)
  end

  #receive a request as others types of language
  post '/graphql' do
    params = JSON.parse(request.body.read)
    query = params['query']
    variables = params['variables']

    ::MultiJson.dump(Schema.execute(query, variables: variables), pretty: true)
  end
end
