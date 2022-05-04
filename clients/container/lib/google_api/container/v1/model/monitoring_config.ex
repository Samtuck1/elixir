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

defmodule GoogleApi.Container.V1.Model.MonitoringConfig do
  @moduledoc """
  MonitoringConfig is cluster monitoring configuration.

  ## Attributes

  *   `componentConfig` (*type:* `GoogleApi.Container.V1.Model.MonitoringComponentConfig.t`, *default:* `nil`) - Monitoring components configuration
  *   `managedPrometheusConfig` (*type:* `GoogleApi.Container.V1.Model.ManagedPrometheusConfig.t`, *default:* `nil`) - Enable Google Cloud Managed Service for Prometheus in the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentConfig => GoogleApi.Container.V1.Model.MonitoringComponentConfig.t() | nil,
          :managedPrometheusConfig =>
            GoogleApi.Container.V1.Model.ManagedPrometheusConfig.t() | nil
        }

  field(:componentConfig, as: GoogleApi.Container.V1.Model.MonitoringComponentConfig)
  field(:managedPrometheusConfig, as: GoogleApi.Container.V1.Model.ManagedPrometheusConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.MonitoringConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.MonitoringConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.MonitoringConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
