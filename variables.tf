variable "namespace" {
  type = string
  
}

variable "tags" {
  type    = map(string)
  default = { "Name" = "" }
}

variable "allow_entities" {
  type = list
  default = ["admin", "qa", "developer"]
}

variable "entities" {
  type = map(any)
  default = {
    admin = {
      rule = {
        "api_groups" = [
          "*"]
        "resources" = [
          "*"]
        "verbs" = [
          "*"]
      }
    },
    developer = {
      rule = {
        "api_groups" = [
          "*"]
        "resources" = [
          "pods/log",
          "pods/portforward",
          "pods/exec",
          "cronjobs",
          "componentstatuses",
          "daemonsets",
          "deployments",
          "deployments/scale",
          "events",
          "ingress",
          "ingresses",
          "jobs",
          "limitranges",
          "nodes",
          "pods",
          "persistentvolumes",
          "persistentvolumeclaims",
          "services"
        ]
        "verbs" = [
          "*"]
      }
    },
    qa = {
      rule = {
        "api_groups" = [
          "*"]
        "resources" = [
          "pods/log",
          "pods/portforward",
          "pods/exec",
          "cronjobs",
          "componentstatuses",
          "daemonsets",
          "deployments",
          "deployments/scale",
          "events",
          "ingress",
          "ingresses",
          "jobs",
          "limitranges",
          "nodes",
          "pods",
          "persistentvolumes",
          "persistentvolumeclaims",
          "services"
        ]
        verbs = [
          "get",
          "list",
          "watch"]
      }
    }
  }
}