package accurics

checkMissingTagsOnResource[resource.id] {
    resource := input.google_storage_bucket[_]
    not resource.config.labels.department
}
