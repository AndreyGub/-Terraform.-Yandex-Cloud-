# --- Переменные для платформ и зон ---
variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2" 
  description = "ID платформы для web-ВМ"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Сем-тво образов"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "ID платформы для DB-ВМ"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-d" # Я поменял  на d, так как яндекс сейчас не сможет создать.. из-за разрушений
  description = "Зона доступности для DB-ВМ"
}

# ---ЭТО НОВЫЕ ПЕРЕМЕННЫЕ ИЗ ЗАДАНИЯ 6 ---

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  description = "Ресурсы для вм"
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
      hdd_size      = 5
      hdd_type      = "network-hdd"
    },
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 5
      hdd_type      = "network-ssd" # Поменял на SSD, чтобы обойти лимит из-за ошибки
    }
  }
}

variable "metadata" {
  type        = map(string)
  description = "общ  метаданные для всех ВМ"
}
