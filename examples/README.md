# Ejemplo de Implementación Completa

Este directorio contiene un caso de uso real que integra los módulos de **VPC** y **EC2** desarrollados en este repositorio. Despliega una infraestructura web básica pero robusta en AWS.

## Recursos que se despliegan:
* Red: Una VPC personalizada con subredes públicas y privadas, tablas de rutas e Internet Gateway.
* Seguridad: Grupos de Seguridad configurados para permitir tráfico HTTP (80) y SSH (22).
* Cómputo: Una instancia EC2 con *Nginx* instalado automáticamente mediante `user_data`.

## Cómo usar este ejemplo

### 1. Requisitos previos
* Tener instalado *Terraform* (v1.0.0 o superior).
* Credenciales de AWS configuradas (recomendado usar `aws configure` o variables de entorno en Voclabs).

### 2. Despliegue
Desde esta carpeta (`examples/completo`), ejecuta los siguientes comandos:

```bash
# Inicializar los módulos y descargar proveedores
terraform init

# Validar que la configuración es correcta
terraform validate

# Ver el plan de ejecución
terraform plan

# Aplicar los cambios
terraform apply

# Una vez finalizado el apply, Terraform entregará la IP Pública del servidor. Copia esa IP y pégala en tu navegador para ver la página de bienvenida de Nginx.
