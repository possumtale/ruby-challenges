# we need to tell Rack (remember what Rack is?) that we are just testing.
# normally this is 'development'
ENV['RACK_ENV'] = 'test'

# look in this directory!
$:.unshift File.join(File.dirname(__FILE__))
require 'index'  # <-- your sinatra app

# require testing gems
require 'rspec'
require 'rack/test'

describe 'Our Hello World App' do
  include Rack::Test::Methods

  # Rack::Test looks for this app variable
  def app
    Sinatra::Application
  end

  it "responds with success" do
    get '/'
    # This is an HTTP status - we'll talk about these later!
    expect(last_response).to be_ok
  end

  it "says hello" do
    get '/'
    expect(last_response.body).to eq('Hello World')
  end
end

