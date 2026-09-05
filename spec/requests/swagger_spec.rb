# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'Swagger docs', type: :request do
  it 'serves a document that uses the current host instead of an external example server' do
    get '/api-docs/v1/swagger.yaml'

    expect(response).to have_http_status(:ok)

    spec = YAML.safe_load(response.body)
    expect(spec.dig('servers', 0, 'url')).to eq('/')
  end
end
