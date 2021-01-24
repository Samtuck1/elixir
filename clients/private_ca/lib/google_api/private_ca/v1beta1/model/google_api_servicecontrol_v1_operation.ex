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

defmodule GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1Operation do
  @moduledoc """
  Represents information regarding an operation.

  ## Attributes

  *   `consumerId` (*type:* `String.t`, *default:* `nil`) - Identity of the consumer who is using the service. This field should be filled in for the operations initiated by a consumer, but not for service-initiated operations that are not related to a specific consumer. - This can be in one of the following formats: - project:PROJECT_ID, - project`_`number:PROJECT_NUMBER, - projects/PROJECT_ID or PROJECT_NUMBER, - folders/FOLDER_NUMBER, - organizations/ORGANIZATION_NUMBER, - api`_`key:API_KEY.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End time of the operation. Required when the operation is used in ServiceController.Report, but optional when the operation is used in ServiceController.Check.
  *   `extensions` (*type:* `list(map())`, *default:* `nil`) - Unimplemented.
  *   `importance` (*type:* `String.t`, *default:* `nil`) - DO NOT USE. This is an experimental field.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels describing the operation. Only the following labels are allowed: - Labels describing monitored resources as defined in the service configuration. - Default labels of metric values. When specified, labels defined in the metric value override these default. - The following labels defined by Google Cloud Platform: - `cloud.googleapis.com/location` describing the location where the operation happened, - `servicecontrol.googleapis.com/user_agent` describing the user agent of the API request, - `servicecontrol.googleapis.com/service_agent` describing the service used to handle the API request (e.g. ESP), - `servicecontrol.googleapis.com/platform` describing the platform where the API is served, such as App Engine, Compute Engine, or Kubernetes Engine.
  *   `logEntries` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1LogEntry.t)`, *default:* `nil`) - Represents information to be logged.
  *   `metricValueSets` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet.t)`, *default:* `nil`) - Represents information about this operation. Each MetricValueSet corresponds to a metric defined in the service configuration. The data type used in the MetricValueSet must agree with the data type specified in the metric definition. Within a single operation, it is not allowed to have more than one MetricValue instances that have the same metric names and identical label value combinations. If a request has such duplicated MetricValue instances, the entire request is rejected with an invalid argument error.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - Identity of the operation. This must be unique within the scope of the service that generated the operation. If the service calls Check() and Report() on the same operation, the two calls should carry the same id. UUID version 4 is recommended, though not required. In scenarios where an operation is computed from existing information and an idempotent id is desirable for deduplication purpose, UUID version 5 is recommended. See RFC 4122 for details.
  *   `operationName` (*type:* `String.t`, *default:* `nil`) - Fully qualified name of the operation. Reserved for future use.
  *   `quotaProperties` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1QuotaProperties.t`, *default:* `nil`) - Represents the properties needed for quota check. Applicable only if this operation is for a quota check request. If this is not specified, no quota check will be performed.
  *   `resources` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ResourceInfo.t)`, *default:* `nil`) - The resources that are involved in the operation. The maximum supported number of entries in this field is 100.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. Start time of the operation.
  *   `traceSpans` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1TraceSpan.t)`, *default:* `nil`) - Unimplemented. A list of Cloud Trace spans. The span names shall contain the id of the destination project which can be either the produce or the consumer project.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - Private Preview. This feature is only available for approved services. User defined labels for the resource that this operation is associated with. Only a combination of 1000 user labels per consumer project are allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerId => String.t(),
          :endTime => DateTime.t(),
          :extensions => list(map()),
          :importance => String.t(),
          :labels => map(),
          :logEntries =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1LogEntry.t()),
          :metricValueSets =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet.t()),
          :operationId => String.t(),
          :operationName => String.t(),
          :quotaProperties =>
            GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1QuotaProperties.t(),
          :resources =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ResourceInfo.t()),
          :startTime => DateTime.t(),
          :traceSpans =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1TraceSpan.t()),
          :userLabels => map()
        }

  field(:consumerId)
  field(:endTime, as: DateTime)
  field(:extensions, type: :list)
  field(:importance)
  field(:labels, type: :map)

  field(:logEntries,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1LogEntry,
    type: :list
  )

  field(:metricValueSets,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1MetricValueSet,
    type: :list
  )

  field(:operationId)
  field(:operationName)

  field(:quotaProperties,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1QuotaProperties
  )

  field(:resources,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ResourceInfo,
    type: :list
  )

  field(:startTime, as: DateTime)

  field(:traceSpans,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1TraceSpan,
    type: :list
  )

  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1Operation do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
