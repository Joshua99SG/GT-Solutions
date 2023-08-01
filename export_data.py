import pandas as pd
import pymysql
    
import csv
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

def insert_data_from_csv(connection):
    with open('Data3.csv', 'r', newline='', encoding='ISO-8859-1') as csvfile:
        csvreader = csv.DictReader(csvfile)
        for row in csvreader:
            # Insertar datos en la tabla cliente
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO cliente (nombre_cliente, telefono, email, localidad, coordenadas, id_tipo_cliente, identificacion)
                                  VALUES (%s, %s, %s, %s, %s, %s, %s)''',
                               (row['CLIENTE'], row['N TELEFONO'], row['CORREO'],
                                row['LOCALIDAD'], row['COORDENADAS'], 3, row['CEDULA']))

                id_cliente = cursor.lastrowid
            # Insertar datos en la tabla contrato
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO contrato (numero_facturacion, TMU, debe_mensualidad, id_cliente, activo, moneda)
                                  VALUES (%s, %s, %s, %s, %s, %s)''',
                               (row['N CLIENTE FACT'], row['TMU'], 1, id_cliente, 1, 'colones'))

                id_contrato = cursor.lastrowid
            # Insertar datos en la tabla servicio
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO servicio (velocidad_contratada, sector_anclado, contra_ppoe, id_contrato)
                                  VALUES (%s, %s, %s, %s)''',
                               (re.findall(r'\d+',row['VELOCIDAD SOLICTADA'])[0], row['SECTOR ANCLADO'], row['CONTRA PPOE'], id_contrato))

                id_servicio = cursor.lastrowid
            # Insertar datos en la tabla equipo (hasta tres equipos)
            equipos = [(row['EQUIPO 1'], row['MAC ADDRESS1'], row['SERIE']),
                       (row['EQUIPO 2'], row['MAC ADDRESS2'], row['SERIE']),
                       (row['EQUIPO 3'], '', row['SERIE'])]
            for equipo in equipos:
                if equipo[0]:
                    with connection.cursor() as cursor:
                        cursor.execute('''INSERT INTO equipo (equipo, mac_address, serie, id_servicio)
                                          VALUES (%s, %s, %s, %s)''', (equipo[0], equipo[1], equipo[2], id_servicio))
            # Insertar datos en la tabla wifi
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO wifi (nombre_wifi, contra_wifi, id_servicio)
                                  VALUES (%s, %s, %s)''',
                               (row['WIFI NOMBRE'], row['WIFI CONTRA'], id_servicio))
        connection.commit()
        
        
        
def insert_data_from_csv2(connection):
    with open('Data4.csv', 'r', newline='', encoding='ISO-8859-1') as csvfile:
        csvreader = csv.DictReader(csvfile)
        for row in csvreader:
            # Insertar datos en la tabla cliente
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO cliente (nombre_cliente, telefono, email, localidad, coordenadas, id_tipo_cliente, identificacion)
                                  VALUES (%s, %s, %s, %s, %s, %s, %s)''',
                               (row['Cliente'], row['Phone'], row['EmailID'],
                                row['Sector'] + '|'+ row['Direccion'], row['Coordenadas'], 4, row['Identificacion']))

                id_cliente = cursor.lastrowid
            # Insertar datos en la tabla contrato
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO contrato (numero_contrato, numero_facturacion, TMU, debe_mensualidad, id_cliente, activo, mensualidad, moneda)
                                  VALUES (%s, %s, %s, %s, %s, %s, %s, %s)''',
                               (row['codigo de cliente'], row['CODIGO FACT'],row['TMU'], 1, id_cliente, 1, row['Mensualidad'], 'dolares'))

                id_contrato = cursor.lastrowid
            # Insertar datos en la tabla servicio
            with connection.cursor() as cursor:
                cursor.execute('''INSERT INTO servicio (velocidad_contratada, sector_anclado, contra_ppoe, id_contrato)
                                  VALUES (%s, %s, %s, %s)''',
                               (row['Capacidad Mbps'], row['Circuit Number'], row['contra_ppoe'], id_contrato))

                id_servicio = cursor.lastrowid
        connection.commit()
 
def main():
    connection = pymysql.connect(host='localhost', user='root', database='gt_solutions')
    insert_data_from_csv(connection)
    insert_data_from_csv2(connection)
    connection.close()

if __name__ == '__main__':
    main()
