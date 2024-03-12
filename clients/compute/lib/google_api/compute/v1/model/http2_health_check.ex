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

defmodule GoogleApi.Compute.V1.Model.HTTP2HealthCheck do
  @moduledoc """


  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - The value of the host header in the HTTP/2 health check request. If left empty (default value), the host header is set to the destination IP address to which health check packets are sent. The destination IP address depends on the type of load balancer. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#hc-packet-dest
  *   `port` (*type:* `integer()`, *default:* `nil`) - The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  *   `portName` (*type:* `String.t`, *default:* `nil`) - Not supported.
  *   `portSpecification` (*type:* `String.t`, *default:* `nil`) - Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for passthrough load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for passthrough load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  *   `proxyHeader` (*type:* `String.t`, *default:* `nil`) - Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  *   `requestPath` (*type:* `String.t`, *default:* `nil`) - The request path of the HTTP/2 health check request. The default value is /.
  *   `response` (*type:* `String.t`, *default:* `nil`) - Creates a content-based HTTP/2 health check. In addition to the required HTTP 200 (OK) status code, you can configure the health check to pass only when the backend sends this specific ASCII response string within the first 1024 bytes of the HTTP response body. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-http
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t() | nil,
          :port => integer() | nil,
          :portName => String.t() | nil,
          :portSpecification => String.t() | nil,
          :proxyHeader => String.t() | nil,
          :requestPath => String.t() | nil,
          :response => String.t() | nil
        }

  field(:host)
  field(:port)
  field(:portName)
  field(:portSpecification)
  field(:proxyHeader)
  field(:requestPath)
  field(:response)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HTTP2HealthCheck do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HTTP2HealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HTTP2HealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
