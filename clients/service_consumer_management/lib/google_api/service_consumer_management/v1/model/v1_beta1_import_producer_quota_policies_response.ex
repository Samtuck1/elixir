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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerQuotaPoliciesResponse do
  @moduledoc """
  Response message for ImportProducerQuotaPolicies

  ## Attributes

  *   `policies` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ProducerQuotaPolicy.t)`, *default:* `nil`) - The policies that were created from the imported data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policies =>
            list(GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ProducerQuotaPolicy.t())
            | nil
        }

  field(:policies,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ProducerQuotaPolicy,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerQuotaPoliciesResponse do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerQuotaPoliciesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerQuotaPoliciesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
