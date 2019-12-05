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

defmodule GoogleApi.FirebaseRules.V1.Model.Ruleset do
  @moduledoc """
  `Ruleset` is an immutable copy of `Source` with a globally unique identifier
  and a creation time.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Time the `Ruleset` was created.
      Output only.
  *   `metadata` (*type:* `GoogleApi.FirebaseRules.V1.Model.Metadata.t`, *default:* `nil`) - The metadata for this ruleset.
      Output only.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the `Ruleset`. The ruleset_id is auto generated by the service.
      Format: `projects/{project_id}/rulesets/{ruleset_id}`
      Output only.
  *   `source` (*type:* `GoogleApi.FirebaseRules.V1.Model.Source.t`, *default:* `nil`) - `Source` for the `Ruleset`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :metadata => GoogleApi.FirebaseRules.V1.Model.Metadata.t(),
          :name => String.t(),
          :source => GoogleApi.FirebaseRules.V1.Model.Source.t()
        }

  field(:createTime, as: DateTime)
  field(:metadata, as: GoogleApi.FirebaseRules.V1.Model.Metadata)
  field(:name)
  field(:source, as: GoogleApi.FirebaseRules.V1.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Ruleset do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.Ruleset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Ruleset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
