import pandas as pd
import re

def import_data():
    df = pd.read_csv('Data3.csv')
    archivo = open("archivo3.txt", "w", encoding='utf-8')
    for index, row in df.iterrows():
        query = '''INSERT INTO `tblcliente` (`id_cliente`, `nombre_cliente`, `telefono`, `localidad`, `velocidad_contratada`, `numero_contrato`, `coordenadas`, `contrasena_ppoe`, `equipo_1`, `mac_address_1`, `equipo_2`, `mac_address_2`, `wifi_nombre`, `wifi_contrasena`, `sector_anclado`, `cedula`, `correo`, `id_tipo_cliente`,`TMU`, `numero_facturacion`, `equipo_3`, `serie`) VALUES (NULL,"{}","{}","{}",{},"{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}",3, {}, {}, "{}", "{}");'''
        nombre = row["CLIENTE"] if isinstance(row["CLIENTE"], str) else "NULL"
        telefono = row["TELEFONO"] if isinstance(row["TELEFONO"], str) else "NULL"
        localidad = row["LOCALIDAD"] if isinstance(row["LOCALIDAD"], str) else "NULL"
        velocidad = re.findall(r'\d+', row["VELOCIDAD SOLICTADA"])[0] if isinstance(row["VELOCIDAD SOLICTADA"], str) else 0
        contrato = row["USUARIO PPOE"] if isinstance(row["USUARIO PPOE"], str) else "NULL"
        contra = row["CONTRASENA PPOE"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        coordenadas = row["COORDENADAS"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        equipo1 = row["EQUIPO 1"] if isinstance(row["EQUIPO 1"], str) else "NULL"
        mac1 = row["MAC ADDRESS1"] if isinstance(row["MAC ADDRESS1"], str) else "NULL"
        equipo2 = row["EQUIPO 2"] if isinstance(row["EQUIPO 2"], str) else "NULL"
        mac2 = row["MAC ADDRESS2"] if isinstance(row["MAC ADDRESS2"], str) else "NULL"
        wifi = row["WIFI NOMBRE"] if isinstance(row["WIFI NOMBRE"], str) else "NULL"
        contrawifi = row["WIFI CONTRASENA"] if isinstance(row["WIFI CONTRASENA"], str) else "NULL"
        sector = row["SECTOR ANCLADO"] if isinstance(row["SECTOR ANCLADO"], str) else "NULL"
        cedula = row["CEDULA"] if isinstance(row["CEDULA"], str) else "NULL"
        correo = row["CORREO"] if isinstance(row["CORREO"], str) else "NULL"
        serie = row["SERIE"] if isinstance(row["SERIE"], str) else "NULL"
        equipo3 = row["EQUIPO 3"] if isinstance(row["EQUIPO 3"], str) else "NULL"
        tmu = re.findall(r'\d+', row["TMU"])[0] if isinstance(row["TMU"], str) else 0
        n_cliente = re.findall(r'\d+', row["N CLIENTE FACT"])[0] if isinstance(row["N CLIENTE FACT"], str) else 0
        query = query.format(nombre, telefono, localidad, velocidad, contrato, coordenadas, contra,equipo1, mac1, equipo2, mac2, wifi, contrawifi, sector, cedula, correo, tmu, n_cliente, equipo3, serie)
        query = query.replace('"NULL"', 'NULL')
        query = query.replace('\n', '')
        archivo.write(query+"\n")
    archivo.close()
    
import_data()
    
def import_data2():
    df = pd.read_csv('Data2.csv', encoding='ISO-8859-1')
    archivo = open("archivo2.txt", "w")
    for index, row in df.iterrows():
        query = '''
        INSERT INTO `tblcliente` 
        (`id_cliente`, `nombre_cliente`, `localidad`, `numero_contrato`, `telefono`, `velocidad_contratada`, `mensualidad`, 
        `id_tipo_cliente`) VALUES (NULL,"{}","{}","{}","{}","{}","{}",4);
        '''
        test = row["Capacidad Mbps"]
        nombre = row["Cliente"] if isinstance(row["Cliente"], str) else "NULL"
        telefono = row["Phone"] if isinstance(row["Phone"], str) else "NULL"
        localidad = row["Sector"] if isinstance(row["Sector"], str) else "NULL"
        velocidad = row["Capacidad Mbps"]
        contrato = row["codigo de cliente"] if isinstance(row["codigo de cliente"], str) else "NULL"
        mensualidad = re.findall(r'\d+', row["MENSUALIDAD"])[0] if isinstance(row["MENSUALIDAD"], str) else 0
        query = query.format(nombre, localidad, contrato, telefono, velocidad, mensualidad)
        query = query.replace('"NULL"', 'NULL')
        archivo.write(query+"\n")
    archivo.close()