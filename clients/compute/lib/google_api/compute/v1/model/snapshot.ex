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

defmodule GoogleApi.Compute.V1.Model.Snapshot do
  @moduledoc """
  Represents a Persistent Disk Snapshot resource. You can use snapshots to back up data on a regular interval. For more information, read Creating persistent disk snapshots.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - [Output Only] The architecture of the snapshot. Valid values are ARM64 or X86_64.
  *   `autoCreated` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Set to true if snapshots are automatically created by applying resource policy on the target disk.
  *   `locationHint` (*type:* `String.t`, *default:* `nil`) - An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  *   `sourceInstantSnapshot` (*type:* `String.t`, *default:* `nil`) - The source instant snapshot used to create this snapshot. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot 
  *   `storageLocations` (*type:* `list(String.t)`, *default:* `nil`) - Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  *   `snapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  *   `sourceInstantSnapshotId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique ID of the instant snapshot used to create this snapshot. This value identifies the exact instant snapshot that was used to create this persistent disk. For example, if you created the persistent disk from an instant snapshot that was later deleted and recreated under the same name, the source instant snapshot ID would identify the exact instant snapshot that was used.
  *   `chainName` (*type:* `String.t`, *default:* `nil`) - Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `sourceDiskId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The ID value of the disk used to create this snapshot. This value may be used to determine whether the snapshot was taken from the current or a previous instance of a given disk name.
  *   `kind` (*type:* `String.t`, *default:* `compute#snapshot`) - [Output Only] Type of the resource. Always compute#snapshot for Snapshot resources.
  *   `enableConfidentialCompute` (*type:* `boolean()`, *default:* `nil`) - Whether this snapshot is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  *   `sourceDiskEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the snapshot. This can be CREATING, DELETING, FAILED, READY, or UPLOADING.
  *   `storageBytesStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  *   `sourceInstantSnapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Customer provided encryption key when creating Snapshot from Instant Snapshot.
  *   `sourceDiskForRecoveryCheckpoint` (*type:* `String.t`, *default:* `nil`) - The source disk whose recovery checkpoint will be used to create this snapshot.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - [Output Only] Size of the source disk, specified in GB.
  *   `guestOsFeatures` (*type:* `list(GoogleApi.Compute.V1.Model.GuestOsFeature.t)`, *default:* `nil`) - [Output Only] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  *   `licenseCodes` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Integer license codes indicating which licenses are attached to this snapshot.
  *   `snapshotType` (*type:* `String.t`, *default:* `nil`) - Indicates the type of the snapshot.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] A list of public visible licenses that apply to this snapshot. This can be because the original image had licenses attached (such as a Windows image).
  *   `sourceSnapshotSchedulePolicy` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the resource policy which created this scheduled snapshot.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this snapshot, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a snapshot.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `sourceSnapshotSchedulePolicyId` (*type:* `String.t`, *default:* `nil`) - [Output Only] ID of the resource policy which created this scheduled snapshot.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `storageBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] A size of the storage used by the snapshot. As snapshots share storage, this number is expected to change with snapshot creation/deletion.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `sourceDisk` (*type:* `String.t`, *default:* `nil`) - The source disk used to create this snapshot.
  *   `downloadBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] Number of bytes downloaded to restore a snapshot to a disk.
  *   `creationSizeBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] Size in bytes of the snapshot at creation time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :autoCreated => boolean() | nil,
          :locationHint => String.t() | nil,
          :sourceInstantSnapshot => String.t() | nil,
          :storageLocations => list(String.t()) | nil,
          :snapshotEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :sourceInstantSnapshotId => String.t() | nil,
          :chainName => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :description => String.t() | nil,
          :sourceDiskId => String.t() | nil,
          :kind => String.t() | nil,
          :enableConfidentialCompute => boolean() | nil,
          :sourceDiskEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :name => String.t() | nil,
          :status => String.t() | nil,
          :storageBytesStatus => String.t() | nil,
          :sourceInstantSnapshotEncryptionKey =>
            GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :sourceDiskForRecoveryCheckpoint => String.t() | nil,
          :diskSizeGb => String.t() | nil,
          :guestOsFeatures => list(GoogleApi.Compute.V1.Model.GuestOsFeature.t()) | nil,
          :licenseCodes => list(String.t()) | nil,
          :snapshotType => String.t() | nil,
          :licenses => list(String.t()) | nil,
          :sourceSnapshotSchedulePolicy => String.t() | nil,
          :labelFingerprint => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :sourceSnapshotSchedulePolicyId => String.t() | nil,
          :id => String.t() | nil,
          :storageBytes => String.t() | nil,
          :labels => map() | nil,
          :selfLink => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :sourceDisk => String.t() | nil,
          :downloadBytes => String.t() | nil,
          :creationSizeBytes => String.t() | nil
        }

  field(:architecture)
  field(:autoCreated)
  field(:locationHint)
  field(:sourceInstantSnapshot)
  field(:storageLocations, type: :list)
  field(:snapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceInstantSnapshotId)
  field(:chainName)
  field(:satisfiesPzs)
  field(:description)
  field(:sourceDiskId)
  field(:kind)
  field(:enableConfidentialCompute)
  field(:sourceDiskEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:name)
  field(:status)
  field(:storageBytesStatus)
  field(:sourceInstantSnapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceDiskForRecoveryCheckpoint)
  field(:diskSizeGb)
  field(:guestOsFeatures, as: GoogleApi.Compute.V1.Model.GuestOsFeature, type: :list)
  field(:licenseCodes, type: :list)
  field(:snapshotType)
  field(:licenses, type: :list)
  field(:sourceSnapshotSchedulePolicy)
  field(:labelFingerprint)
  field(:creationTimestamp)
  field(:sourceSnapshotSchedulePolicyId)
  field(:id)
  field(:storageBytes)
  field(:labels, type: :map)
  field(:selfLink)
  field(:satisfiesPzi)
  field(:sourceDisk)
  field(:downloadBytes)
  field(:creationSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Snapshot do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Snapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Snapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
