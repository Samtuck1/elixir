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

defmodule GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig do
  @moduledoc """
  Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.

  ## Attributes

  *   `enable` (*type:* `boolean()`, *default:* `nil`) - If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  *   `ruleVisibility` (*type:* `String.t`, *default:* `nil`) - Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  *   `thresholdConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.t)`, *default:* `nil`) - Configuration options for layer7 adaptive protection for various customizable thresholds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enable => boolean() | nil,
          :ruleVisibility => String.t() | nil,
          :thresholdConfigs =>
            list(
              GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.t()
            )
            | nil
        }

  field(:enable)
  field(:ruleVisibility)

  field(:thresholdConfigs,
    as:
      GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
