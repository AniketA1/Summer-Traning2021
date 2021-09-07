#!/usr/bin/python3

import cgi
import requests
import json
import xmltodict

print("content-type: text/html")
print()


a = cgi.FieldStorage()
text =a.getvalue("x")

user = "Aniket"
def get_vehicle_info(number):
    r = requests.get(f"http://www.regcheck.org.uk/api/reg.asmx/CheckIndia?RegistrationNumber={text}&username={user}")
    data = xmltodict.parse(r.content)
    jdata = json.dumps(data)
    df = json.loads(jdata)
    df1 = json.loads(df['Vehicle']['vehicleJson'])
    return df1


p = get_vehicle_info(text)

p = get_vehicle_info(text)

s="DESCRIPTION: "+str(p['Description'])+"\n"+"CAR COMPANY: "+str(p['CarMake']['CurrentTextValue'])+"\n"+"CAR MODEL: "+str(p['CarModel']['CurrentTextValue'])+"\n"+"FUEL TYPE: "+str(p['FuelType']['CurrentTextValue'])+"\n"+"ENGINE SIZE: "+str(p['EngineSize']['CurrentTextValue'])+"\n"+"NUMBER OF SEATS: "+str(p['NumberOfSeats']['CurrentTextValue'])+"\n"+"REGISTRATION YEAR: "+str(p['RegistrationYear'])+"\n"+"REGISTRATION DATE: "+str(p['RegistrationDate'])+"\n"+"VEHICLE IDENTIFICATION NUMBER: "+str(p['VechileIdentificationNumber'])+"\n"+"ENGINE NUMBER: "+str(p['EngineNumber'])+"\n"+"VEHICLE TYPE: "+str(p['VehicleType'])+"\n"+"LOCATION: "+str(p['Location'])
print(s)


