data "azuredevops_project" "project" {
  name = var.project_name_VV
}

data "azuredevops_agent_queue" "agent_queue" {
  project_id = data.azuredevops_project.project.id
  name       = var.agent_pool_name_VV
}

resource "azuredevops_pipeline_authorization" "pipeline_authorization" {
  project_id  = data.azuredevops_project.project.id
  resource_id = data.azuredevops_agent_queue.agent_queue.id
  type        = "queue"
}