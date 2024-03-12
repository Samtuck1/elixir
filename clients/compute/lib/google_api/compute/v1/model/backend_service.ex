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

defmodule GoogleApi.Compute.V1.Model.BackendService do
  @moduledoc """
  Represents a Backend Service resource. A backend service defines how Google Cloud load balancers distribute traffic. The backend service configuration contains a set of values, such as the protocol used to connect to backends, various distribution and session settings, health checks, and timeouts. These settings provide fine-grained control over how your load balancer behaves. Most of the settings have default values that allow for easy configuration if you need to get started quickly. Backend services in Google Compute Engine can be either regionally or globally scoped. * [Global](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices) * [Regional](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices) For more information, see Backend Services.

  ## Attributes

  *   `port` (*type:* `integer()`, *default:* `nil`) - Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For internal passthrough Network Load Balancers and external passthrough Network Load Balancers, omit port.
  *   `metadatas` (*type:* `map()`, *default:* `nil`) - Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  *   `enableCDN` (*type:* `boolean()`, *default:* `nil`) - If true, enables Cloud CDN for the backend service of a global external Application Load Balancer.
  *   `securitySettings` (*type:* `GoogleApi.Compute.V1.Model.SecuritySettings.t`, *default:* `nil`) - This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  *   `customRequestHeaders` (*type:* `list(String.t)`, *default:* `nil`) - Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  *   `usedBy` (*type:* `list(GoogleApi.Compute.V1.Model.BackendServiceUsedBy.t)`, *default:* `nil`) - 
  *   `subsetting` (*type:* `GoogleApi.Compute.V1.Model.Subsetting.t`, *default:* `nil`) - 
  *   `timeoutSec` (*type:* `integer()`, *default:* `nil`) - The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  *   `portName` (*type:* `String.t`, *default:* `nil`) - A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For internal passthrough Network Load Balancers and external passthrough Network Load Balancers, omit port_name.
  *   `localityLbPolicies` (*type:* `list(GoogleApi.Compute.V1.Model.BackendServiceLocalityLoadBalancingPolicyConfig.t)`, *default:* `nil`) - A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `kind` (*type:* `String.t`, *default:* `compute#backendService`) - [Output Only] Type of resource. Always compute#backendService for backend services.
  *   `sessionAffinity` (*type:* `String.t`, *default:* `nil`) - Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  *   `maxStreamDuration` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  *   `cdnPolicy` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy.t`, *default:* `nil`) - Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  *   `consistentHash` (*type:* `GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings.t`, *default:* `nil`) - Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED. 
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a BackendService. An up-to-date fingerprint must be provided in order to update the BackendService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a BackendService.
  *   `customResponseHeaders` (*type:* `list(String.t)`, *default:* `nil`) - Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  *   `backends` (*type:* `list(GoogleApi.Compute.V1.Model.Backend.t)`, *default:* `nil`) - The list of backends that serve this BackendService.
  *   `securityPolicy` (*type:* `String.t`, *default:* `nil`) - [Output Only] The resource URL for the security policy associated with this backend service.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional backend service resides. This field is not applicable to global backend services. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  *   `affinityCookieTtlSec` (*type:* `integer()`, *default:* `nil`) - Lifetime of cookies in seconds. This setting is applicable to Application Load Balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `edgeSecurityPolicy` (*type:* `String.t`, *default:* `nil`) - [Output Only] The resource URL for the edge security policy associated with this backend service.
  *   `outlierDetection` (*type:* `GoogleApi.Compute.V1.Model.OutlierDetection.t`, *default:* `nil`) - Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `loadBalancingScheme` (*type:* `String.t`, *default:* `nil`) - Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `localityLbPolicy` (*type:* `String.t`, *default:* `nil`) - The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `connectionDraining` (*type:* `GoogleApi.Compute.V1.Model.ConnectionDraining.t`, *default:* `nil`) - 
  *   `logConfig` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceLogConfig.t`, *default:* `nil`) - This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  *   `iap` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceIAP.t`, *default:* `nil`) - The configurations for Identity-Aware Proxy on this resource. Not available for internal passthrough Network Load Balancers and external passthrough Network Load Balancers.
  *   `healthChecks` (*type:* `list(String.t)`, *default:* `nil`) - The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `failoverPolicy` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceFailoverPolicy.t`, *default:* `nil`) - Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal passthrough Network Load Balancers](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external passthrough Network Load Balancers](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  *   `serviceLbPolicy` (*type:* `String.t`, *default:* `nil`) - URL to networkservices.ServiceLbPolicy resource. Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  *   `connectionTrackingPolicy` (*type:* `GoogleApi.Compute.V1.Model.BackendServiceConnectionTrackingPolicy.t`, *default:* `nil`) - Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for external passthrough Network Load Balancers and internal passthrough Network Load Balancers.
  *   `circuitBreakers` (*type:* `GoogleApi.Compute.V1.Model.CircuitBreakers.t`, *default:* `nil`) - 
  *   `compressionMode` (*type:* `String.t`, *default:* `nil`) - Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  *   `serviceBindings` (*type:* `list(String.t)`, *default:* `nil`) - URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :port => integer() | nil,
          :metadatas => map() | nil,
          :protocol => String.t() | nil,
          :enableCDN => boolean() | nil,
          :securitySettings => GoogleApi.Compute.V1.Model.SecuritySettings.t() | nil,
          :customRequestHeaders => list(String.t()) | nil,
          :usedBy => list(GoogleApi.Compute.V1.Model.BackendServiceUsedBy.t()) | nil,
          :subsetting => GoogleApi.Compute.V1.Model.Subsetting.t() | nil,
          :timeoutSec => integer() | nil,
          :portName => String.t() | nil,
          :localityLbPolicies =>
            list(GoogleApi.Compute.V1.Model.BackendServiceLocalityLoadBalancingPolicyConfig.t())
            | nil,
          :description => String.t() | nil,
          :kind => String.t() | nil,
          :sessionAffinity => String.t() | nil,
          :maxStreamDuration => GoogleApi.Compute.V1.Model.Duration.t() | nil,
          :cdnPolicy => GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy.t() | nil,
          :consistentHash =>
            GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings.t() | nil,
          :name => String.t() | nil,
          :fingerprint => String.t() | nil,
          :customResponseHeaders => list(String.t()) | nil,
          :backends => list(GoogleApi.Compute.V1.Model.Backend.t()) | nil,
          :securityPolicy => String.t() | nil,
          :region => String.t() | nil,
          :network => String.t() | nil,
          :affinityCookieTtlSec => integer() | nil,
          :edgeSecurityPolicy => String.t() | nil,
          :outlierDetection => GoogleApi.Compute.V1.Model.OutlierDetection.t() | nil,
          :loadBalancingScheme => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :localityLbPolicy => String.t() | nil,
          :connectionDraining => GoogleApi.Compute.V1.Model.ConnectionDraining.t() | nil,
          :logConfig => GoogleApi.Compute.V1.Model.BackendServiceLogConfig.t() | nil,
          :iap => GoogleApi.Compute.V1.Model.BackendServiceIAP.t() | nil,
          :healthChecks => list(String.t()) | nil,
          :id => String.t() | nil,
          :selfLink => String.t() | nil,
          :failoverPolicy => GoogleApi.Compute.V1.Model.BackendServiceFailoverPolicy.t() | nil,
          :serviceLbPolicy => String.t() | nil,
          :connectionTrackingPolicy =>
            GoogleApi.Compute.V1.Model.BackendServiceConnectionTrackingPolicy.t() | nil,
          :circuitBreakers => GoogleApi.Compute.V1.Model.CircuitBreakers.t() | nil,
          :compressionMode => String.t() | nil,
          :serviceBindings => list(String.t()) | nil
        }

  field(:port)
  field(:metadatas, type: :map)
  field(:protocol)
  field(:enableCDN)
  field(:securitySettings, as: GoogleApi.Compute.V1.Model.SecuritySettings)
  field(:customRequestHeaders, type: :list)
  field(:usedBy, as: GoogleApi.Compute.V1.Model.BackendServiceUsedBy, type: :list)
  field(:subsetting, as: GoogleApi.Compute.V1.Model.Subsetting)
  field(:timeoutSec)
  field(:portName)

  field(:localityLbPolicies,
    as: GoogleApi.Compute.V1.Model.BackendServiceLocalityLoadBalancingPolicyConfig,
    type: :list
  )

  field(:description)
  field(:kind)
  field(:sessionAffinity)
  field(:maxStreamDuration, as: GoogleApi.Compute.V1.Model.Duration)
  field(:cdnPolicy, as: GoogleApi.Compute.V1.Model.BackendServiceCdnPolicy)
  field(:consistentHash, as: GoogleApi.Compute.V1.Model.ConsistentHashLoadBalancerSettings)
  field(:name)
  field(:fingerprint)
  field(:customResponseHeaders, type: :list)
  field(:backends, as: GoogleApi.Compute.V1.Model.Backend, type: :list)
  field(:securityPolicy)
  field(:region)
  field(:network)
  field(:affinityCookieTtlSec)
  field(:edgeSecurityPolicy)
  field(:outlierDetection, as: GoogleApi.Compute.V1.Model.OutlierDetection)
  field(:loadBalancingScheme)
  field(:creationTimestamp)
  field(:localityLbPolicy)
  field(:connectionDraining, as: GoogleApi.Compute.V1.Model.ConnectionDraining)
  field(:logConfig, as: GoogleApi.Compute.V1.Model.BackendServiceLogConfig)
  field(:iap, as: GoogleApi.Compute.V1.Model.BackendServiceIAP)
  field(:healthChecks, type: :list)
  field(:id)
  field(:selfLink)
  field(:failoverPolicy, as: GoogleApi.Compute.V1.Model.BackendServiceFailoverPolicy)
  field(:serviceLbPolicy)

  field(:connectionTrackingPolicy,
    as: GoogleApi.Compute.V1.Model.BackendServiceConnectionTrackingPolicy
  )

  field(:circuitBreakers, as: GoogleApi.Compute.V1.Model.CircuitBreakers)
  field(:compressionMode)
  field(:serviceBindings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
