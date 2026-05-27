 Implementación de Módulos Terraform - EC2 y VPC

Este repositorio contiene la resolución de la **Evaluación Formativa N° 2** para la asignatura de *Infraestructura como Código II: El objetivo principal es demostrar la capacidad de crear infraestructura modular, reutilizable y correctamente versionada siguiendo las mejores prácticas de la industria.

🚀 Mejoras e Implementación

Basado en los requerimientos de la evaluación, se realizaron las siguientes mejoras en la estructura del código:

1. Modularización Completa (IL3.1): El código se ha dividido en módulos independientes para `vpc` y `ec2`, permitiendo su reutilización en distintos entornos.
2. Documentación Técnica (IL3.2): Se ha generado una descripción detallada de las variables de entrada (inputs), salidas (outputs) y dependencias de cada módulo.
3. Ejemplos de Uso: Se incluyó una carpeta `examples/completo` que muestra cómo integrar ambos módulos de manera práctica.

 📂 Estructura del Proyecto

```text
.
├── modules/
│   ├── vpc/             # Módulo para la creación de red (VPC, Subnets)
│   └── ec2/             # Módulo para instancias y Security Groups
├── examples/
│   └── completo/        # Implementación de referencia (main.tf, variables.tf)
├── versions.tf          # Restricciones de versión de Terraform y Providers
└── README.md            # Documentación general
