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

defmodule GoogleApi.DomainsRDAP.V1.Model.RdapResponse do
  @moduledoc """
  Response to a general RDAP query.

  ## Attributes

  *   `description` (*type:* `list(String.t)`, *default:* `nil`) - Error description.
  *   `errorCode` (*type:* `integer()`, *default:* `nil`) - Error HTTP code. Example: "501".
  *   `jsonResponse` (*type:* `GoogleApi.DomainsRDAP.V1.Model.HttpBody.t`, *default:* `nil`) - HTTP response with content type set to "application/json+rdap".
  *   `lang` (*type:* `String.t`, *default:* `nil`) - Error language code. Error response info fields are defined in [section 6
      of RFC 7483](https://tools.ietf.org/html/rfc7483#section-6).
  *   `notices` (*type:* `list(GoogleApi.DomainsRDAP.V1.Model.Notice.t)`, *default:* `nil`) - Notices applying to this response.
  *   `rdapConformance` (*type:* `list(String.t)`, *default:* `nil`) - RDAP conformance level.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Error title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => list(String.t()),
          :errorCode => integer(),
          :jsonResponse => GoogleApi.DomainsRDAP.V1.Model.HttpBody.t(),
          :lang => String.t(),
          :notices => list(GoogleApi.DomainsRDAP.V1.Model.Notice.t()),
          :rdapConformance => list(String.t()),
          :title => String.t()
        }

  field(:description, type: :list)
  field(:errorCode)
  field(:jsonResponse, as: GoogleApi.DomainsRDAP.V1.Model.HttpBody)
  field(:lang)
  field(:notices, as: GoogleApi.DomainsRDAP.V1.Model.Notice, type: :list)
  field(:rdapConformance, type: :list)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DomainsRDAP.V1.Model.RdapResponse do
  def decode(value, options) do
    GoogleApi.DomainsRDAP.V1.Model.RdapResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DomainsRDAP.V1.Model.RdapResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
