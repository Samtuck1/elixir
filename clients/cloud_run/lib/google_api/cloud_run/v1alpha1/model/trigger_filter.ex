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

defmodule GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter do
  @moduledoc """


  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Optional. Attributes filters events by exact match on event context attributes. Each key in the map is compared with the equivalent key in the event context. An event passes the filter if all values are equal to the specified values. Nested context attributes are not supported as keys. Only string values are supported. Note that this field is optional in knative. In fully managed, 'type' attribute is required due to different broker implementation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map()
        }

  field(:attributes, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
