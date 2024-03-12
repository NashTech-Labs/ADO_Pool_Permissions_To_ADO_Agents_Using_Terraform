variable "adotoken_VV" {
  type        = string
  description = "Personal Access Token of ADO"
}

variable "organization_service_url_VV" {
  type        = string
  default     = "https://dev.azure.com/DCTEng"
  description = "Organisation Service URL"
}

variable "project_name_VV" {
  type        = string
  default     = "Duck Creek"
  description = "Name of Project"
}

variable "agent_pool_name_VV" {
  type        = string
  description = "Name of ADO Pool"
}


