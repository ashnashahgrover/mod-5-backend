require "ibm_watson/authenticators"
require "ibm_watson/tone_analyzer_v3"

class IBMWatsonClients

  include IBMWatson

  NLU_APIKEY = Rails.application.credentials.NLU_IAM_KEY
  # VERSION = ENV['ibm_watson_version']
  NLU_URL = Rails.application.credentials.NLU_URL

  PI_APIKEY= Rails.application.credentials.PI_IAM_KEY
  # VERSION = ENV['ibm_watson_version']
  PI_URL = Rails.application.credentials.PI_URL

  def self.NLU_client

    nlu_authenticator = Authenticators::IamAuthenticator.new(
        apikey: NLU_APIKEY
    )

    nlu = NaturalLanguageUnderstandingV1.new(
      version: "2019-07-12",
      authenticator: nlu_authenticator
    )

    nlu.service_url = NLU_URL
    return nlu

  end

  def self.PI_client

    pi_authenticator = Authenticators::IamAuthenticator.new(
        apikey: PI_APIKEY
    )
    pi = PersonalityInsightsV3.new(
      version: "2017-10-13",
      authenticator: pi_authenticator
    )
    pi.service_url = PI_URL
    return pi
  end

end
