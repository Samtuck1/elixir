# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse do
  @moduledoc """
  The response for FirebaseRulesService.GetReleaseExecutable

  ## Attributes

  *   `executable` (*type:* `String.t`, *default:* `nil`) - Executable view of the `Ruleset` referenced by the `Release`.
  *   `executableVersion` (*type:* `String.t`, *default:* `nil`) - The Rules runtime version of the executable.
  *   `language` (*type:* `String.t`, *default:* `nil`) - `Language` used to generate the executable bytes.
  *   `rulesetName` (*type:* `String.t`, *default:* `nil`) - `Ruleset` name associated with the `Release` executable.
  *   `syncTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional, indicates the freshness of the result. The response is
      guaranteed to be the latest within an interval up to the
      sync_time (inclusive).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp for the most recent `Release.update_time`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :executable => String.t(),
          :executableVersion => String.t(),
          :language => String.t(),
          :rulesetName => String.t(),
          :syncTime => DateTime.t(),
          :updateTime => DateTime.t()
        }

  field(:executable)
  field(:executableVersion)
  field(:language)
  field(:rulesetName)
  field(:syncTime, as: DateTime)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
