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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType do
  @moduledoc """
  EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

  ## Attributes

  *   `baseType` (*type:* `String.t`, *default:* `nil`) - Type of the entity. It must be one of the following: `document` - the entity represents a classification of a logical document. `object` - if the entity has properties it is likely an object (or or a document.) `datetime` - the entity is a date or time value. `money` - the entity represents a money value amount. `number` - the entity is a number - integer or floating point. `string` - the entity is a string value. `boolean` - the entity is a boolean value. `address` - the entity is a location address.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the entity type.
  *   `enumValues` (*type:* `list(String.t)`, *default:* `nil`) - If specified, lists all the possible values for this entity.
  *   `occurrenceType` (*type:* `String.t`, *default:* `nil`) - Occurrence type limits the number of times an entity type appears in the document.
  *   `properties` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType.t)`, *default:* `nil`) - Describing the nested structure of an entity. An EntityType may consist of several other EntityTypes. For example, in a document there can be an EntityType 'ID', which consists of EntityType 'name' and 'address', with corresponding attributes, such as TEXT for both types and ONCE for occurrence types.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Source of this entity type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Name of the type. It must be unique within the set of same level types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseType => String.t() | nil,
          :description => String.t() | nil,
          :enumValues => list(String.t()) | nil,
          :occurrenceType => String.t() | nil,
          :properties =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType.t()
            )
            | nil,
          :source => String.t() | nil,
          :type => String.t() | nil
        }

  field(:baseType)
  field(:description)
  field(:enumValues, type: :list)
  field(:occurrenceType)

  field(:properties,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType,
    type: :list
  )

  field(:source)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3SchemaEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
