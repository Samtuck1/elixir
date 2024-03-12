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

defmodule GoogleApi.Compute.V1.Model.NodeTemplate do
  @moduledoc """
  Represent a sole-tenant Node Template resource. You can use a template to define properties for nodes in a node group. For more information, read Creating node groups and instances.

  ## Attributes

  *   `accelerators` (*type:* `list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - 
  *   `cpuOvercommitType` (*type:* `String.t`, *default:* `nil`) - CPU overcommit.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `disks` (*type:* `list(GoogleApi.Compute.V1.Model.LocalDisk.t)`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#nodeTemplate`) - [Output Only] The type of the resource. Always compute#nodeTemplate for node templates.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `nodeAffinityLabels` (*type:* `map()`, *default:* `nil`) - Labels to use for node affinity, which will be used in instance scheduling.
  *   `nodeType` (*type:* `String.t`, *default:* `nil`) - The node type to use for nodes group that are created from this template.
  *   `nodeTypeFlexibility` (*type:* `GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility.t`, *default:* `nil`) - Do not use. Instead, use the node_type property.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the region where the node template resides, such as us-central1.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `serverBinding` (*type:* `GoogleApi.Compute.V1.Model.ServerBinding.t`, *default:* `nil`) - Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the node template. One of the following values: CREATING, READY, and DELETING.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable explanation of the status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t()) | nil,
          :cpuOvercommitType => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :disks => list(GoogleApi.Compute.V1.Model.LocalDisk.t()) | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :nodeAffinityLabels => map() | nil,
          :nodeType => String.t() | nil,
          :nodeTypeFlexibility =>
            GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :serverBinding => GoogleApi.Compute.V1.Model.ServerBinding.t() | nil,
          :status => String.t() | nil,
          :statusMessage => String.t() | nil
        }

  field(:accelerators, as: GoogleApi.Compute.V1.Model.AcceleratorConfig, type: :list)
  field(:cpuOvercommitType)
  field(:creationTimestamp)
  field(:description)
  field(:disks, as: GoogleApi.Compute.V1.Model.LocalDisk, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:nodeAffinityLabels, type: :map)
  field(:nodeType)
  field(:nodeTypeFlexibility, as: GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility)
  field(:region)
  field(:selfLink)
  field(:serverBinding, as: GoogleApi.Compute.V1.Model.ServerBinding)
  field(:status)
  field(:statusMessage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeTemplate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
