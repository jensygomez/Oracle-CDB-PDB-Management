# Ejercicio: Administrar CDB y PDB en Oracle

## Objetivo
El objetivo de este ejercicio es aprender a:
- Conectarse al **CDB** (Container Database) y **PDB** (Pluggable Database).
- Crear usuarios y asignar permisos dentro del **CDB** y **PDB**.
- Consultar los usuarios y permisos en el **CDB** y **PDB**.
- Gestionar usuarios dentro del **CDB** y **PDB**.

## Paso 1: Conectarse al CDB y PDB

1. Conéctate al **CDB** como `sys` con privilegios de administrador:
    ```sql
    sqlplus sys/password@CDB1 as sysdba
    ```

2. Ver las **PDBs** disponibles:
    ```sql
    SELECT name, pdb_id, status FROM v$pdbs;
    ```

## Paso 2: Cambiar entre CDB y PDB

1. Para trabajar dentro de un **PDB** específico (por ejemplo, **PDB1**):
    ```sql
    ALTER SESSION SET CONTAINER = PDB1;
    ```

2. Para regresar al **CDB** raíz:
    ```sql
    ALTER SESSION SET CONTAINER = CDB$ROOT;
    ```

## Paso 3: Crear un usuario y asignar permisos en CDB y PDB

1. Crear un usuario en el **CDB** y otorgarle permisos básicos:
    ```sql
    CREATE USER cdb_user IDENTIFIED BY password;
    GRANT CONNECT, RESOURCE TO cdb_user;
    ```

2. Crear un usuario en un **PDB** y otorgarle permisos básicos:
    ```sql
    CREATE USER pdb_user IDENTIFIED BY password;
    GRANT CONNECT, RESOURCE TO pdb_user;
    ```

## Paso 4: Ver los usuarios y sus permisos en CDB/PDB

1. Ver los usuarios dentro de un **PDB**:
    ```sql
    SELECT username FROM dba_users;
    ```

2. Ver los permisos de un usuario en un **PDB**:
    ```sql
    SELECT * FROM dba_role_privs WHERE grantee = 'PDB_USER';
    ```

3. Ver los roles de un usuario en el **CDB**:
    ```sql
    SELECT * FROM cdb_role_privs WHERE grantee = 'CDB_USER';
    ```

4. Ver los permisos del sistema de un usuario en el **CDB**:
    ```sql
    SELECT * FROM cdb_sys_privs WHERE grantee = 'CDB_USER';
    ```

## Paso 5: Eliminar usuarios en CDB y PDB

1. Para eliminar un usuario dentro de un **PDB**:
    ```sql
    DROP USER pdb_user CASCADE;
    ```

2. Para eliminar un usuario dentro del **CDB**:
    ```sql
    DROP USER cdb_user CASCADE;
    ```

## Ejercicio Resumido
1. Conéctate al **CDB** usando el usuario `sys`.
2. Consulta las **PDBs** disponibles con `SELECT name FROM v$pdbs`.
3. Cambia de contenedor entre el **CDB** y un **PDB** con `ALTER SESSION SET CONTAINER`.
4. Crea usuarios tanto en el **CDB** como en un **PDB** con `CREATE USER` y asigna permisos con `GRANT`.
5. Consulta los usuarios y permisos con las vistas `dba_users`, `dba_role_privs`, y `dba_sys_privs`.
6. Elimina usuarios en el **CDB** y en un **PDB** con `DROP USER`.

## Recursos Adicionales
- [Documentación Oficial de Oracle](https://docs.oracle.com/en/database/)

