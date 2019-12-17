require "ibm_watson/authenticators"
require "ibm_watson/tone_analyzer_v3"

class IBMWatsonClients

  include IBMWatson

  def NLU_client
    NLU_APIKEY = Rails.application.credentials.NLU_IAM_KEY
    # VERSION = ENV['ibm_watson_version']
    NLU_URL = Rails.application.credentials.NLU_URL

    nlu_authenticator = Authenticators::IamAuthenticator.new(
        apikey: NLU_APIKEY
    )

    NLU = NaturalLanguageUnderstandingV1.new(
        version: "2019-07-12",
        authenticator: nlu_authenticator
    )

    NLU.service_url = NLU_URL
    return NLU
  end

  def PI_client
    PI_APIKEY= Rails.application.credentials.PI_IAM_KEY
    # VERSION = ENV['ibm_watson_version']
    PI_URL = Rails.application.credentials.PI_URL

    pi_authenticator = Authenticators::IamAuthenticator.new(
        apikey: PI_APIKEY
    )
    PI = PersonalityInsightsV3.new(
      version: "2017-10-13",
      authenticator: pi_authenticator
    )
    PI.service_url = PI_URL
    return PI
  end

end
