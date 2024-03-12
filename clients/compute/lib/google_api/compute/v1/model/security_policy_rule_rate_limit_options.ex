# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions do
  @moduledoc """


  ## Attributes

  *   `banDurationSec` (*type:* `integer()`, *default:* `nil`) - Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  *   `banThreshold` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold.t`, *default:* `nil`) - Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  *   `conformAction` (*type:* `String.t`, *default:* `nil`) - Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  *   `enforceOnKey` (*type:* `String.t`, *default:* `nil`) - Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates. - TLS_JA3_FINGERPRINT: JA3 TLS/SSL fingerprint if the client connects using HTTPS, HTTP/2 or HTTP/3. If not available, the key type defaults to ALL. - USER_IP: The IP address of the originating client, which is resolved based on "userIpRequestHeaders" configured with the security policy. If there is no "userIpRequestHeaders" configuration or an IP address cannot be resolved from it, the key type defaults to IP. 
  *   `enforceOnKeyConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig.t)`, *default:* `nil`) - If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  *   `enforceOnKeyName` (*type:* `String.t`, *default:* `nil`) - Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  *   `exceedAction` (*type:* `String.t`, *default:* `nil`) - Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  *   `exceedRedirectOptions` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions.t`, *default:* `nil`) - Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  *   `rateLimitThreshold` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold.t`, *default:* `nil`) - Threshold at which to begin ratelimiting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :banDurationSec => integer() | nil,
          :banThreshold =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold.t() | nil,
          :conformAction => String.t() | nil,
          :enforceOnKey => String.t() | nil,
          :enforceOnKeyConfigs =>
            list(
              GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig.t()
            )
            | nil,
          :enforceOnKeyName => String.t() | nil,
          :exceedAction => String.t() | nil,
          :exceedRedirectOptions =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions.t() | nil,
          :rateLimitThreshold =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold.t() | nil
        }

  field(:banDurationSec)
  field(:banThreshold, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold)
  field(:conformAction)
  field(:enforceOnKey)

  field(:enforceOnKeyConfigs,
    as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig,
    type: :list
  )

  field(:enforceOnKeyName)
  field(:exceedAction)
  field(:exceedRedirectOptions, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions)

  field(:rateLimitThreshold,
    as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptionsThreshold
  )
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
