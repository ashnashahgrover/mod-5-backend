# require "ibm_watson/authenticators"
# require "ibm_watson/tone_analyzer_v3"
# include IBMWatson
#
# NLU_APIKEY = Rails.application.credentials.NLU_IAM_KEY
# # VERSION = ENV['ibm_watson_version']
# NLU_URL = Rails.application.credentials.NLU_URL
#
# PI_APIKEY= Rails.application.credentials.PI_IAM_KEY
# # VERSION = ENV['ibm_watson_version']
# PI_URL = Rails.application.credentials.PI_URL
#
#
# nlu_authenticator = Authenticators::IamAuthenticator.new(
#     apikey: NLU_APIKEY
# )
#
# pi_authenticator = Authenticators::IamAuthenticator.new(
#     apikey: PI_APIKEY
# )
#
# NLU = NaturalLanguageUnderstandingV1.new(
#     version: "2019-07-12",
#     authenticator: nlu_authenticator
# )
#
# PI = PersonalityInsightsV3.new(
#   version: "2017-10-13",
#   authenticator: pi_authenticator
# )
#
# NLU.service_url = NLU_URL
# NLU
#
# PI.service_url = PI_URL
# PI
