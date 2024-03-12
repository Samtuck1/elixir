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

defmodule GoogleApi.Compute.V1.Model.HealthStatus do
  @moduledoc """


  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Metadata defined as annotations for network endpoint.
  *   `forwardingRule` (*type:* `String.t`, *default:* `nil`) - URL of the forwarding rule associated with the health status of the instance.
  *   `forwardingRuleIp` (*type:* `String.t`, *default:* `nil`) - A forwarding rule IP address assigned to this instance.
  *   `healthState` (*type:* `String.t`, *default:* `nil`) - Health state of the IPv4 address of the instance.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - URL of the instance resource.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - For target pool based Network Load Balancing, it indicates the forwarding rule's IP address assigned to this instance. For other types of load balancing, the field indicates VM internal ip.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The named port of the instance group, not necessarily the port that is health-checked.
  *   `weight` (*type:* `String.t`, *default:* `nil`) - 
  *   `weightError` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :forwardingRule => String.t() | nil,
          :forwardingRuleIp => String.t() | nil,
          :healthState => String.t() | nil,
          :instance => String.t() | nil,
          :ipAddress => String.t() | nil,
          :port => integer() | nil,
          :weight => String.t() | nil,
          :weightError => String.t() | nil
        }

  field(:annotations, type: :map)
  field(:forwardingRule)
  field(:forwardingRuleIp)
  field(:healthState)
  field(:instance)
  field(:ipAddress)
  field(:port)
  field(:weight)
  field(:weightError)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HealthStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HealthStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HealthStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
