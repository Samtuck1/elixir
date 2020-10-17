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

defmodule GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1LastPeriodAmount do
  @moduledoc """
  Describes a budget amount targeted to last period's spend. At this time, the amount is automatically 100% of last period's spend; that is, there are no other options yet. Future configuration will be described here (for example, configuring a percentage of last period's spend).

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder,
  for: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1LastPeriodAmount do
  def decode(value, options) do
    GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1LastPeriodAmount.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BillingBudgets.V1.Model.GoogleCloudBillingBudgetsV1LastPeriodAmount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
