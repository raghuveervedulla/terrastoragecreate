package terrascan.gcp.storage

violation[{"msg": msg}] {
    resource := input.resource
    resource.type == "google_storage_bucket"
    not resource.tags["department"]    # This checks if the "department" tag is missing
    msg := sprintf("Storage bucket '%s' does not have the department tag", [resource.name])
}

violation[{"msg": msg}] {
    resource := input.resource
    resource.type == "google_storage_bucket"
    resource.tags["department"] == ""  # This checks if the "department" tag is empty
    msg := sprintf("Storage bucket '%s' has an empty department tag", [resource.name])
}
