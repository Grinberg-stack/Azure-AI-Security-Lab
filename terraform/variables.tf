variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "ai-sec-lab"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "enable_private_endpoints" {
  description = "Create Private Endpoints and Private DNS zones"
  type        = bool
  default     = true
}

variable "enable_azure_openai" {
  description = "Create Azure OpenAI resource if supported by the subscription"
  type        = bool
  default     = false
}
