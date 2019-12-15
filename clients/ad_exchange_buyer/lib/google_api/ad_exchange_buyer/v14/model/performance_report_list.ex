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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList do
  @moduledoc """
  The configuration data for an Ad Exchange performance report list.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#performanceReportList`) - Resource type.
  *   `performanceReport` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReport.t)`, *default:* `nil`) - A list of performance reports relevant for the account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :performanceReport => list(GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReport.t())
        }

  field(:kind)

  field(:performanceReport, as: GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReport, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
