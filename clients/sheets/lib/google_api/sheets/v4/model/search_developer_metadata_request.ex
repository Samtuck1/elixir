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

defmodule GoogleApi.Sheets.V4.Model.SearchDeveloperMetadataRequest do
  @moduledoc """
  A request to retrieve all developer metadata matching the set of specified
  criteria.

  ## Attributes

  *   `dataFilters` (*type:* `list(GoogleApi.Sheets.V4.Model.DataFilter.t)`, *default:* `nil`) - The data filters describing the criteria used to determine which
      DeveloperMetadata entries to return.  DeveloperMetadata matching any of the
      specified filters will be included in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFilters => list(GoogleApi.Sheets.V4.Model.DataFilter.t())
        }

  field(:dataFilters, as: GoogleApi.Sheets.V4.Model.DataFilter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SearchDeveloperMetadataRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SearchDeveloperMetadataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SearchDeveloperMetadataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
