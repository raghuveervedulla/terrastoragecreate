package accurics

# Check for missing or empty "department" tags in Google Cloud Storage buckets

violation[{"resource_id": resource.id, "msg": msg}] {
    resource := input.google_storage_bucket[_]  # Iterate over all Google Storage buckets in the input
    not resource.tags["department"]            # Check if the "department" tag is missing
    msg := sprintf("Storage bucket '%s' does not have the 'department' tag.", [resource.name])
}

violation[{"resource_id": resource.id, "msg": msg}] {
    resource := input.google_storage_bucket[_]  # Iterate over all Google Storage buckets in the input
    resource.tags["department"] == ""           # Check if the "department" tag is empty
    msg := sprintf("Storage bucket '%s' has an empty 'department' tag.", [resource.name])
}
