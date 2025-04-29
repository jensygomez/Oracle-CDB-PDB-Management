# 📘 Curso Oracle Completo – Clase 1

## 🔧 Instalación del Oracle Database 21c

### 📥 Descarga

Puedes descargar el Oracle Database desde el sitio oficial:

🔗 [Descargar Oracle Database](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html#db_ee)

> ⚠️ **Importante:** Esta versión es solo para desarrollo, prototipado y pruebas en entornos **no productivos**.

Busca:

- `Oracle Database 21c for Microsoft Windows x64 (64-bit)`
- Haz clic en el archivo ZIP (~2.5 GB).
- Deberás crear una cuenta gratuita para iniciar la descarga.

Si el enlace está inactivo, busca en Google: `Oracle Download`.

---

## 📁 Preparativos en la Máquina Virtual

1. Crear las siguientes carpetas:


c:\app\administrator\product\21\dbhome_1


2. Copiar el archivo descargado desde tu PC a la máquina virtual.
3. Descomprimir `ORACLETRIALENTERPRISESETUPWINDOWS.X64_213000_db_home` dentro de:


4. Ejecutar `setup.exe` como administrador.

> Más detalles en: [Requisitos de instalación](http://www.rebellionrider.com/how-to-install-oracle-database-21c/)

---

## 🚀 Proceso de Instalación

1. Ejecuta `setup.exe` como **Administrador**.
2. Selecciona:  
✅ `Create and Configure a Single Instance Database`

> ℹ️ Opción `Setup software only` se usa para actualizaciones.

3. Selecciona la **Server Class** (instalación avanzada).
4. Elige la edición:  
✅ `Enterprise Edition`
5. Configura el tipo de usuario para el servicio Oracle:

| Opción                     | Descripción |
|---------------------------|-------------|
| Virtual Account           | Creada automáticamente por Windows. Ideal para pruebas. |
| Existing Windows User     | Usa un usuario ya existente. Necesita login. |
| Create New Windows User   | Crea una nueva cuenta durante la instalación. |
| Windows Built-in Account  | Usa cuentas internas como `LocalSystem`. No recomendado para producción. |

> ✅ Para este laboratorio, selecciona: **Use virtual account**

6. Directorio base:  

C:\app\Administrator


7. Desmarcar la opción de base de datos transaccional de ejemplo.
8. Deja las opciones por defecto.

---

## 🔠 Parámetros Importantes

### 🌐 Global Database Name

Nombre único que identifica tu base en la red.  
Ejemplo: `orcl.example.com`  
- `orcl` = nombre del DB  
- `example.com` = dominio

### 🆔 Oracle SID (System Identifier)

Identificador de la instancia que representa una combinación de memoria y procesos.  
Es único por servidor.

### 🧱 Pluggable Database Name (PDB)

Desde Oracle 12c se usa el modelo multitenant:

- CDB (Container Database): Contenedor principal.
- PDB (Pluggable Database): Bases de datos independientes dentro del contenedor.

Ejemplo por defecto: `ORCLPDB`

---

## 🧠 Configuración de Memoria

- Asigna entre **50% y 70%** de la memoria de la VM para Oracle.
- Charset: puedes dejar `Unicode Multilingua (AL32UTF8)` o elegir `ISO 8859-6 Latin/Arabic`.

> En producción: se asigna de **70% a 95%**.

---

## 💾 Almacenamiento

- Por defecto:  

C:\app\Administrator\oradata


- En producción se recomienda usar discos SSD separados.

---

## ☁️ Configuración de Nube

- Desmarca la opción de gestión en la nube, no la usaremos por ahora.

---

## ♻️ Recuperación

- Desactiva la opción de definir local de recuperación por ahora.  
- Veremos recuperación de bases más adelante.

---

## 🔑 Usuarios y Contraseñas

Durante la instalación se solicitarán contraseñas para los 3 usuarios principales de Oracle:

- **SYS**
- **SYSTEM**
- **PDBADMIN**

Usa una contraseña segura. Se puede usar la misma para los tres usuarios para fines prácticos de laboratorio.

---

## 📷 Ilustraciones

- Arquitectura Oracle:  
`D:\Backups\videoscursoudemyBK\ORACLE\images\ARQUITETURA`
- CDB y PDBs:  
`D:\Backups\videoscursoudemyBK\ORACLE\images\CDBXPDB`

---

## ✅ Conclusión

Con estos pasos, habrás instalado y configurado correctamente el Oracle Database 21c en tu máquina virtual, listo para comenzar tus prácticas del curso.

> 🧠 Próximamente aprenderás a crear bases propias, manipular PDBs, y trabajar con usuarios y esquemas como un verdadero DBA.

---

🚀 ¡Sigue avanzando, estás en el camino correcto para dominar Oracle Database!







