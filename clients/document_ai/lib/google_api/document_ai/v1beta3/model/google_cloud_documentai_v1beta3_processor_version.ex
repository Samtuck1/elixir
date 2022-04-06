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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorVersion do
  @moduledoc """
  A processor version is an implementation of a processor. Each processor can have multiple versions, pre-trained by Google internally or up-trained by the customer. At a time, a processor can only have one default version version. So the processor's behavior (when processing documents) is defined by a default version

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the processor version was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the processor version.
  *   `googleManaged` (*type:* `boolean()`, *default:* `nil`) - Denotes that this ProcessorVersion is managed by google.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The KMS key name used for encryption.
  *   `kmsKeyVersionName` (*type:* `String.t`, *default:* `nil`) - The KMS key version with which data is encrypted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the processor version. Format: `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}`
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the processor version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :googleManaged => boolean() | nil,
          :kmsKeyName => String.t() | nil,
          :kmsKeyVersionName => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:googleManaged)
  field(:kmsKeyName)
  field(:kmsKeyVersionName)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorVersion do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorVersion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
