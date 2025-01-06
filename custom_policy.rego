package terrascan.gcp.storage

violation[{"msg": msg}] {
    resource := input.resource
    resource.type == "google_storage_bucket"
    not resource.tags["department"]
    msg := sprintf("Storage bucket '%s' does not have the department tag", [resource.name])
}

