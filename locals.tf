locals {
  helm_chart      = "ingress-nginx"
  helm_repository = "https://kubernetes.github.io/ingress-nginx"

  load_balancer_ip = var.ip_address == null ? [] : [
    {
      name  = "controller.service.loadBalancerIP"
      value = var.ip_address
    }
  ]

  metrics_enabled = var.metrics_enabled ? [
    {
      name  = "controller.metrics.enabled"
      value = "true"
    },
    {
      name  = "controller.metrics.serviceMonitor.enabled"
      value = "true"
    },
    {
      name  = "controller.metrics.serviceMonitor.additionalLabels.release"
      value = "kube-prometheus-stack"
    }
  ] : []

  controller_service_node_ports = var.define_node_ports ? [
    {
      name  = "controller.service.nodePorts.http"
      value = var.service_node_port_http
    },
    {
      name  = "controller.service.nodePorts.https"
      value = var.service_node_port_https
    }
  ] : []
}
