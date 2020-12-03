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

defmodule GoogleApi.DisplayVideo.V1.Model.InsertionOrder do
  @moduledoc """
  A single insertion order.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the advertiser the insertion order belongs to.
  *   `bidStrategy` (*type:* `GoogleApi.DisplayVideo.V1.Model.BiddingStrategy.t`, *default:* `nil`) - The bidding strategy of the insertion order. By default, fixed_bid is set.
  *   `budget` (*type:* `GoogleApi.DisplayVideo.V1.Model.InsertionOrderBudget.t`, *default:* `nil`) - Required. The budget allocation settings of the insertion order.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The unique ID of the campaign that the insertion order belongs to.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the insertion order. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Required. Controls whether or not the insertion order can spend its budget and bid on inventory. * For CreateInsertionOrder method, only `ENTITY_STATUS_DRAFT` is allowed. To activate an insertion order, use UpdateInsertionOrder method and update the status to `ENTITY_STATUS_ACTIVE` after creation. * An insertion order cannot be changed back to `ENTITY_STATUS_DRAFT` status from any other status. * An insertion order cannot be set to `ENTITY_STATUS_ACTIVE` if its parent campaign is not active.
  *   `frequencyCap` (*type:* `GoogleApi.DisplayVideo.V1.Model.FrequencyCap.t`, *default:* `nil`) - Required. The frequency capping setting of the insertion order.
  *   `insertionOrderId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the insertion order. Assigned by the system.
  *   `insertionOrderType` (*type:* `String.t`, *default:* `nil`) - The type of insertion order. If this field is unspecified in creation, the value defaults to `RTB`.
  *   `integrationDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.IntegrationDetails.t`, *default:* `nil`) - Additional integration details of the insertion order.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the insertion order.
  *   `pacing` (*type:* `GoogleApi.DisplayVideo.V1.Model.Pacing.t`, *default:* `nil`) - Required. The budget spending speed setting of the insertion order.
  *   `partnerCosts` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.PartnerCost.t)`, *default:* `nil`) - The partner costs associated with the insertion order. If absent or empty in CreateInsertionOrder method, the newly created insertion order will inherit partner costs from the partner settings.
  *   `performanceGoal` (*type:* `GoogleApi.DisplayVideo.V1.Model.PerformanceGoal.t`, *default:* `nil`) - Required. Performance goal of the insertion order.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the insertion order was last updated. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t(),
          :bidStrategy => GoogleApi.DisplayVideo.V1.Model.BiddingStrategy.t(),
          :budget => GoogleApi.DisplayVideo.V1.Model.InsertionOrderBudget.t(),
          :campaignId => String.t(),
          :displayName => String.t(),
          :entityStatus => String.t(),
          :frequencyCap => GoogleApi.DisplayVideo.V1.Model.FrequencyCap.t(),
          :insertionOrderId => String.t(),
          :insertionOrderType => String.t(),
          :integrationDetails => GoogleApi.DisplayVideo.V1.Model.IntegrationDetails.t(),
          :name => String.t(),
          :pacing => GoogleApi.DisplayVideo.V1.Model.Pacing.t(),
          :partnerCosts => list(GoogleApi.DisplayVideo.V1.Model.PartnerCost.t()),
          :performanceGoal => GoogleApi.DisplayVideo.V1.Model.PerformanceGoal.t(),
          :updateTime => DateTime.t()
        }

  field(:advertiserId)
  field(:bidStrategy, as: GoogleApi.DisplayVideo.V1.Model.BiddingStrategy)
  field(:budget, as: GoogleApi.DisplayVideo.V1.Model.InsertionOrderBudget)
  field(:campaignId)
  field(:displayName)
  field(:entityStatus)
  field(:frequencyCap, as: GoogleApi.DisplayVideo.V1.Model.FrequencyCap)
  field(:insertionOrderId)
  field(:insertionOrderType)
  field(:integrationDetails, as: GoogleApi.DisplayVideo.V1.Model.IntegrationDetails)
  field(:name)
  field(:pacing, as: GoogleApi.DisplayVideo.V1.Model.Pacing)
  field(:partnerCosts, as: GoogleApi.DisplayVideo.V1.Model.PartnerCost, type: :list)
  field(:performanceGoal, as: GoogleApi.DisplayVideo.V1.Model.PerformanceGoal)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.InsertionOrder do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.InsertionOrder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.InsertionOrder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
