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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponseErrorsResponse do
  @moduledoc """
  Response message for listing all reasons that bid responses resulted in an
  error.

  ## Attributes

  *   `calloutStatusRows` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.CalloutStatusRow.t)`, *default:* `nil`) - List of rows, with counts of bid responses aggregated by callout status.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results.
      Pass this value in the
      ListBidResponseErrorsRequest.pageToken
      field in the subsequent call to the bidResponseErrors.list
      method to retrieve the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calloutStatusRows =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.CalloutStatusRow.t()),
          :nextPageToken => String.t()
        }

  field(:calloutStatusRows,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.CalloutStatusRow,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponseErrorsResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponseErrorsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponseErrorsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
