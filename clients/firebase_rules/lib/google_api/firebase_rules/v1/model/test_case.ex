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

defmodule GoogleApi.FirebaseRules.V1.Model.TestCase do
  @moduledoc """
  `TestCase` messages provide the request context and an expectation as to
  whether the given context will be allowed or denied. Test cases may specify
  the `request`, `resource`, and `function_mocks` to mock a function call to
  a service-provided function.

  The `request` object represents context present at request-time.

  The `resource` is the value of the target resource as it appears in
  persistent storage before the request is executed.

  ## Attributes

  *   `expectation` (*type:* `String.t`, *default:* `nil`) - Test expectation.
  *   `functionMocks` (*type:* `list(GoogleApi.FirebaseRules.V1.Model.FunctionMock.t)`, *default:* `nil`) - Optional function mocks for service-defined functions. If not set, any
      service defined function is expected to return an error, which may or may
      not influence the test outcome.
  *   `request` (*type:* `any()`, *default:* `nil`) - Request context.

      The exact format of the request context is service-dependent. See the
      appropriate service documentation for information about the supported
      fields and types on the request. Minimally, all services support the
      following fields and types:

      Request field  | Type
      ---------------|-----------------
      auth.uid       | `string`
      auth.token     | `map<string, string>`
      headers        | `map<string, string>`
      method         | `string`
      params         | `map<string, string>`
      path           | `string`
      time           | `google.protobuf.Timestamp`

      If the request value is not well-formed for the service, the request will
      be rejected as an invalid argument.
  *   `resource` (*type:* `any()`, *default:* `nil`) - Optional resource value as it appears in persistent storage before the
      request is fulfilled.

      The resource type depends on the `request.path` value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectation => String.t(),
          :functionMocks => list(GoogleApi.FirebaseRules.V1.Model.FunctionMock.t()),
          :request => any(),
          :resource => any()
        }

  field(:expectation)
  field(:functionMocks, as: GoogleApi.FirebaseRules.V1.Model.FunctionMock, type: :list)
  field(:request)
  field(:resource)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.TestCase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
