locals {
  helm_release_values = merge(var.helm_release_values, {
    "release.timestamp" = random_string.force_helm_release.result
  })

  helm_release_string_values = merge(var.helm_release_string_values, {
    "release.timestamp" = random_string.force_helm_release.result
  })
}

resource "helm_release" "helm_release" {
  chart      = var.helm_release_chart
  name       = var.helm_release_release_name
  namespace  = var.helm_release_namespace
  version    = var.helm_release_chart_version
  repository = var.helm_release_chart_repository

  max_history      = var.helm_release_max_history
  description      = var.helm_release_description
  replace          = var.helm_release_replace
  recreate_pods    = var.helm_release_recreate_pods
  verify           = var.helm_release_verify
  create_namespace = var.helm_release_namespace == "default" || var.helm_release_prevent_create_namespace ? false : true
  atomic           = var.helm_release_atomic
  lint             = var.helm_release_lint
  wait             = var.helm_release_wait
  skip_crds        = var.helm_release_skip_crds
  cleanup_on_fail  = var.helm_release_cleanup_on_fail
  reset_values     = var.helm_release_reset_values
  reuse_values     = var.helm_release_reuse_values
  timeout          = var.helm_release_timeout

  values = [
    "${file("${var.helm_release_value_files}")}"
  ]

  dynamic "set" {
    for_each = local.helm_release_values

    content {
      name  = set.key
      value = set.value
      type  = var.helm_release_values_type
    }
  }

  dynamic "set" {
    for_each = local.helm_release_string_values

    content {
      name  = set.key
      value = set.value
      type  = var.helm_release_string_values_type
    }
  }

  dynamic "set_sensitive" {
    for_each = var.helm_release_sensitive_values

    content {
      name  = set_sensitive.key
      value = set_sensitive.value
      type  = var.helm_release_values_type
    }
  }

}

resource "random_string" "force_helm_release" {
  keepers = {
    timestamp = var.helm_release_force_helm_release ? timestamp() : null
  }

  length  = "16"
  special = false
  upper   = true
  lower   = true
  numeric  = true
}

