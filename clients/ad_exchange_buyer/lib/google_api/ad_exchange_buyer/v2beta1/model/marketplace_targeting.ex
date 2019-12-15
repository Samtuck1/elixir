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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.MarketplaceTargeting do
  @moduledoc """
  Targeting represents different criteria that can be used by advertisers to
  target ad inventory. For example, they can choose to target ad requests only
  if the user is in the US.
  Multiple types of targeting are always applied as a logical AND, unless noted
  otherwise.

  ## Attributes

  *   `geoTargeting` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting.t`, *default:* `nil`) - Geo criteria IDs to be included/excluded.
  *   `inventorySizeTargeting` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.InventorySizeTargeting.t`, *default:* `nil`) - Inventory sizes to be included/excluded.
  *   `placementTargeting` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting.t`, *default:* `nil`) - Placement targeting information, e.g., URL, mobile applications.
  *   `technologyTargeting` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.TechnologyTargeting.t`, *default:* `nil`) - Technology targeting information, e.g., operating system, device category.
  *   `videoTargeting` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting.t`, *default:* `nil`) - Video targeting information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :geoTargeting => GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting.t(),
          :inventorySizeTargeting =>
            GoogleApi.AdExchangeBuyer.V2beta1.Model.InventorySizeTargeting.t(),
          :placementTargeting => GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting.t(),
          :technologyTargeting => GoogleApi.AdExchangeBuyer.V2beta1.Model.TechnologyTargeting.t(),
          :videoTargeting => GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting.t()
        }

  field(:geoTargeting, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting)

  field(:inventorySizeTargeting,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.InventorySizeTargeting
  )

  field(:placementTargeting, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting)
  field(:technologyTargeting, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.TechnologyTargeting)
  field(:videoTargeting, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.MarketplaceTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.MarketplaceTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.MarketplaceTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
