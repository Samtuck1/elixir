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

defmodule GoogleApi.Sheets.V4.Model.Padding do
  @moduledoc """
  The amount of padding around the cell, in pixels.
  When updating padding, every field must be specified.

  ## Attributes

  *   `bottom` (*type:* `integer()`, *default:* `nil`) - The bottom padding of the cell.
  *   `left` (*type:* `integer()`, *default:* `nil`) - The left padding of the cell.
  *   `right` (*type:* `integer()`, *default:* `nil`) - The right padding of the cell.
  *   `top` (*type:* `integer()`, *default:* `nil`) - The top padding of the cell.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bottom => integer(),
          :left => integer(),
          :right => integer(),
          :top => integer()
        }

  field(:bottom)
  field(:left)
  field(:right)
  field(:top)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Padding do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.Padding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Padding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
