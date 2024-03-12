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

defmodule GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  @moduledoc """
  Policy for an individual app. Note: Application availability on a given device cannot be changed using this policy if installAppsDisabled is enabled. The maximum number of applications that you can specify per policy is 3,000.

  ## Attributes

  *   `accessibleTrackIds` (*type:* `list(String.t)`, *default:* `nil`) - List of the app’s track IDs that a device belonging to the enterprise can access. If the list contains multiple track IDs, devices receive the latest version among all accessible tracks. If the list contains no track IDs, devices only have access to the app’s production track. More details about each track are available in AppTrackInfo.
  *   `alwaysOnVpnLockdownExemption` (*type:* `String.t`, *default:* `nil`) - Specifies whether the app is allowed networking when the VPN is not connected and alwaysOnVpnPackage.lockdownEnabled is enabled. If set to VPN_LOCKDOWN_ENFORCED, the app is not allowed networking, and if set to VPN_LOCKDOWN_EXEMPTION, the app is allowed networking. Only supported on devices running Android 10 and above. If this is not supported by the device, the device will contain a NonComplianceDetail with non_compliance_reason set to API_LEVEL and a fieldPath. If this is not applicable to the app, the device will contain a NonComplianceDetail with non_compliance_reason set to UNSUPPORTED and a fieldPath. The fieldPath is set to applications[i].alwaysOnVpnLockdownExemption, where i is the index of the package in the applications policy.
  *   `autoUpdateMode` (*type:* `String.t`, *default:* `nil`) - Controls the auto-update mode for the app.
  *   `connectedWorkAndPersonalApp` (*type:* `String.t`, *default:* `nil`) - Controls whether the app can communicate with itself across a device’s work and personal profiles, subject to user consent.
  *   `credentialProviderPolicy` (*type:* `String.t`, *default:* `nil`) - Optional. Whether the app is allowed to act as a credential provider on Android 14 and above.
  *   `defaultPermissionPolicy` (*type:* `String.t`, *default:* `nil`) - The default policy for all permissions requested by the app. If specified, this overrides the policy-level default_permission_policy which applies to all apps. It does not override the permission_grants which applies to all apps.
  *   `delegatedScopes` (*type:* `list(String.t)`, *default:* `nil`) - The scopes delegated to the app from Android Device Policy. These provide additional privileges for the applications they are applied to.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Whether the app is disabled. When disabled, the app data is still preserved.
  *   `extensionConfig` (*type:* `GoogleApi.AndroidManagement.V1.Model.ExtensionConfig.t`, *default:* `nil`) - Configuration to enable this app as an extension app, with the capability of interacting with Android Device Policy offline.This field can be set for at most one app.
  *   `installConstraint` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.InstallConstraint.t)`, *default:* `nil`) - Optional. The constraints for installing the app. You can specify a maximum of one InstallConstraint. Multiple constraints are rejected.
  *   `installPriority` (*type:* `integer()`, *default:* `nil`) - Optional. Amongst apps with installType set to: FORCE_INSTALLED PREINSTALLEDthis controls the relative priority of installation. A value of 0 (default) means this app has no priority over other apps. For values between 1 and 10,000, a lower value means a higher priority. Values outside of the range 0 to 10,000 inclusive are rejected.
  *   `installType` (*type:* `String.t`, *default:* `nil`) - The type of installation to perform.
  *   `lockTaskAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether the app is allowed to lock itself in full-screen mode. DEPRECATED. Use InstallType KIOSK or kioskCustomLauncherEnabled to configure a dedicated device.
  *   `managedConfiguration` (*type:* `map()`, *default:* `nil`) - Managed configuration applied to the app. The format for the configuration is dictated by the ManagedProperty values supported by the app. Each field name in the managed configuration must match the key field of the ManagedProperty. The field value must be compatible with the type of the ManagedProperty: *type* *JSON value* BOOL true or false STRING string INTEGER number CHOICE string MULTISELECT array of strings HIDDEN string BUNDLE_ARRAY array of objects 
  *   `managedConfigurationTemplate` (*type:* `GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate.t`, *default:* `nil`) - The managed configurations template for the app, saved from the managed configurations iframe. This field is ignored if managed_configuration is set.
  *   `minimumVersionCode` (*type:* `integer()`, *default:* `nil`) - The minimum version of the app that runs on the device. If set, the device attempts to update the app to at least this version code. If the app is not up-to-date, the device will contain a NonComplianceDetail with non_compliance_reason set to APP_NOT_UPDATED. The app must already be published to Google Play with a version code greater than or equal to this value. At most 20 apps may specify a minimum version code per policy.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name of the app. For example, com.google.android.youtube for the YouTube app.
  *   `permissionGrants` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t)`, *default:* `nil`) - Explicit permission grants or denials for the app. These values override the default_permission_policy and permission_grants which apply to all apps.
  *   `workProfileWidgets` (*type:* `String.t`, *default:* `nil`) - Specifies whether the app installed in the work profile is allowed to add widgets to the home screen.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessibleTrackIds => list(String.t()) | nil,
          :alwaysOnVpnLockdownExemption => String.t() | nil,
          :autoUpdateMode => String.t() | nil,
          :connectedWorkAndPersonalApp => String.t() | nil,
          :credentialProviderPolicy => String.t() | nil,
          :defaultPermissionPolicy => String.t() | nil,
          :delegatedScopes => list(String.t()) | nil,
          :disabled => boolean() | nil,
          :extensionConfig => GoogleApi.AndroidManagement.V1.Model.ExtensionConfig.t() | nil,
          :installConstraint =>
            list(GoogleApi.AndroidManagement.V1.Model.InstallConstraint.t()) | nil,
          :installPriority => integer() | nil,
          :installType => String.t() | nil,
          :lockTaskAllowed => boolean() | nil,
          :managedConfiguration => map() | nil,
          :managedConfigurationTemplate =>
            GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate.t() | nil,
          :minimumVersionCode => integer() | nil,
          :packageName => String.t() | nil,
          :permissionGrants =>
            list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t()) | nil,
          :workProfileWidgets => String.t() | nil
        }

  field(:accessibleTrackIds, type: :list)
  field(:alwaysOnVpnLockdownExemption)
  field(:autoUpdateMode)
  field(:connectedWorkAndPersonalApp)
  field(:credentialProviderPolicy)
  field(:defaultPermissionPolicy)
  field(:delegatedScopes, type: :list)
  field(:disabled)
  field(:extensionConfig, as: GoogleApi.AndroidManagement.V1.Model.ExtensionConfig)

  field(:installConstraint,
    as: GoogleApi.AndroidManagement.V1.Model.InstallConstraint,
    type: :list
  )

  field(:installPriority)
  field(:installType)
  field(:lockTaskAllowed)
  field(:managedConfiguration, type: :map)

  field(:managedConfigurationTemplate,
    as: GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate
  )

  field(:minimumVersionCode)
  field(:packageName)
  field(:permissionGrants, as: GoogleApi.AndroidManagement.V1.Model.PermissionGrant, type: :list)
  field(:workProfileWidgets)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
