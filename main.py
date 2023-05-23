import pandas as pd
import math
import re
import pywhatkit
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pyautogui as pg
import time
import webbrowser as web



def import_data():
    df = pd.read_csv('Data.csv')
    archivo = open("archivo.txt", "w")
    for index, row in df.iterrows():
        query = '''
        INSERT INTO `tblcliente` 
        (`id_cliente`, `nombre_cliente`, `telefono`, `localidad`, `velocidad_contratada`, `numero_contrato`, `coordenadas`, 
        `contrasena_ppoe`, `equipo_1`, `mac_address_1`, `equipo_2`, `mac_address_2`, `equipo_3`, `serie`, `wifi_nombre`, 
        `wifi_contrasena`, `sector_anclado`, `cedula`, `correo`, `id_tipo_cliente`) VALUES (NULL,"{}","{}","{}",{},"{}","{}","{}","{}","{}",
        "{}","{}","{}","{}","{}","{}","{}","{}","{}",3);
        '''
        nombre = row["NOMBRE CLIENTE"]
        telefono = row["TELEFONO"]
        localidad = row["LOCALIDAD"]
        velocidad = re.findall(r'\d+', row["VELOCIDAD CONTRATADA"])[0]
        contrato = row["NUMERO DE CONTRATO"]
        contra = row["CONTRASENA PPOE"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        coordenadas = row["COORDENADAS"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        equipo1 = row["EQUIPO 1"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        mac1 = row["MAC ADDRESS"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        equipo2 = row["EQUIPO 2"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        mac2 = row["MAC ADDRESS"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        equipo3 = row["EQUIPO 3"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        serie = row["SERIE"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        wifi = row["WIFI NOMBRE"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        contrawifi = row["WIFI CONTRASENA"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        sector = row["SECTOR ANCLADO"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        cedula = row["CEDULA"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        correo = row["CORREO"] if isinstance(row["CONTRASENA PPOE"], str) else "NULL"
        query = query.format(nombre, telefono, localidad, velocidad, contrato, coordenadas, contra,equipo1, mac1, equipo2, mac2, equipo3, serie, wifi, contrawifi, sector, cedula, correo)
        query = query.replace('"NULL"', 'NULL')
        archivo.write(query+"\n")
    archivo.close()
    
def send_message():
    # Ruta al ejecutable de ChromeDriver
    CHROME_DRIVER_PATH = './chromedriver'

    # Configurar opciones del navegador
    options = Options()
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')

    # Iniciar el controlador del navegador
    driver = webdriver.Chrome(executable_path=CHROME_DRIVER_PATH, options=options)

    # Lista de números de teléfono
    # Lista de números de teléfono
    phone_numbers = ['+50684582427', '+50683847592']

    # Mensaje a enviar
    message = '¡Hola! Este es un mensaje de prueba.'
    for phone_number in phone_numbers:
        # Abrir WhatsApp Web en el navegador
        driver.get('https://web.whatsapp.com/')

        # Esperar hasta que se escanee el código QR y se inicie sesión
        wait = WebDriverWait(driver, 20)
        wait.until(EC.presence_of_element_located((By.XPATH, '//span[@title="Rebe"]')))
        pywhatkit.sendwhatmsg(phone_number, message, 0, 9,tab_close=True)

    # Cerrar el controlador del navegador
    driver.quit()

def send():
    phone_numbers = ['+50684582427', '+50683847592']
    for phone_number in phone_numbers:
        pywhatkit.sendwhatmsg(phone_number, "Hola esto es un mensaje de prueba", wait_time=5, time_hour=0, time_min=58, tab_close=True)
        
def sendpy():
    phone_numbers = ['+50684582427', '+50683847592']
    first = True
    message = '¡Hola! Este es un mensaje de prueba.'
    
    for phone_number in phone_numbers:
        time.sleep(8)
        web.open("https://web.whatsapp.com/send?phone="+phone_number+"&text="+message)
        if first:
            time.sleep(8)
            first=False
        width, height = pg.size()
        pg.click(width/2, height/2)
        time.sleep(10)
        pg.press("enter")
        time.sleep(6)
        pg.hotkey("ctrl", "w")

sendpy()


