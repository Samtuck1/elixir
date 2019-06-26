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

defmodule GoogleApi.FirebaseRules.V1.Model.TestRulesetRequest do
  @moduledoc """
  The request for FirebaseRulesService.TestRuleset.

  ## Attributes

  *   `source` (*type:* `GoogleApi.FirebaseRules.V1.Model.Source.t`, *default:* `nil`) - Optional `Source` to be checked for correctness.

      This field must not be set when the resource name refers to a `Ruleset`.
  *   `testSuite` (*type:* `GoogleApi.FirebaseRules.V1.Model.TestSuite.t`, *default:* `nil`) - Inline `TestSuite` to run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :source => GoogleApi.FirebaseRules.V1.Model.Source.t(),
          :testSuite => GoogleApi.FirebaseRules.V1.Model.TestSuite.t()
        }

  field(:source, as: GoogleApi.FirebaseRules.V1.Model.Source)
  field(:testSuite, as: GoogleApi.FirebaseRules.V1.Model.TestSuite)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestRulesetRequest do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.TestRulesetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.TestRulesetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
