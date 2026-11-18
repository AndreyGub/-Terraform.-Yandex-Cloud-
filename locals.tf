locals {
  # Собрал имя для Web-ВМ из названия проекта и переменной vpc_name
  vm_web_name = "netology-${var.vpc_name}-platform-web"
  
  # Собрал имя для DB-ВМ
  vm_db_name  = "netology-${var.vpc_name}-platform-db"
}