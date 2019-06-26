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

defmodule GoogleApi.FirebaseRules.V1.Model.TestSuite do
  @moduledoc """
  `TestSuite` is a collection of `TestCase` instances that validate the logical
  correctness of a `Ruleset`. The `TestSuite` may be referenced in-line within
  a `TestRuleset` invocation or as part of a `Release` object as a pre-release
  check.

  ## Attributes

  *   `testCases` (*type:* `list(GoogleApi.FirebaseRules.V1.Model.TestCase.t)`, *default:* `nil`) - Collection of test cases associated with the `TestSuite`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :testCases => list(GoogleApi.FirebaseRules.V1.Model.TestCase.t())
        }

  field(:testCases, as: GoogleApi.FirebaseRules.V1.Model.TestCase, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestSuite do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.TestSuite.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.TestSuite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
