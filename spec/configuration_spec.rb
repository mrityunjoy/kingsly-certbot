require 'spec_helper'

RSpec.describe KingslyCertbot do
  it 'should set properties from passed params' do
    sentry_dsn = 'https://foo:bar@sentry.com/0'
    environment = 'test'
    tld = 'example.com'
    sub_domain = 'www'
    host = 'certbot.com'
    user = 'user'
    password = 'password'
    configuration = KingslyCertbot::Configuration.new(
      'SENTRY_DSN' => sentry_dsn,
      'ENVIRONMENT' => environment,
      'TOP_LEVEL_DOMAIN' => tld,
      'SUB_DOMAIN' => sub_domain,
      'KINGSLY_SERVER_HOST' => host,
      'KINGSLY_SERVER_USER' => user,
      'KINGSLY_SERVER_PASSWORD' => password
    )
    expect(configuration.sentry_dsn).to eq(sentry_dsn)
    expect(configuration.environment).to eq(environment)
    expect(configuration.top_level_domain).to eq(tld)
    expect(configuration.sub_domain).to eq(sub_domain)
    expect(configuration.kingsly_host).to eq(host)
    expect(configuration.kingsly_user).to eq(user)
    expect(configuration.kingsly_password).to eq(password)
  end
end
