import 'package:flutter/material.dart';
import '../models/bus.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: BusListPage()));
}

class BusRepository {
  static List<Bus> getBuses() {
    return [
      Bus(
        fromCity: "Ariyalur",
        toCity: "Chengalpattu",
        busNumber: "TN3673",
        fromArrival: "09:30 pm",
        toArrival: "03 : 40 am",
        stops: ['Ariyalur', 'Tiruppur', 'Salem', 'Namakkal', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Chennai",
        busNumber: "TN852",
        fromArrival: "11:15 am",
        toArrival: "08:00 pm",
        stops: [
          'Ariyalur',
          'Dharmapuri',
          'Namakkal',
          'Virudhunagar',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Coimbatore",
        busNumber: "TN3690",
        fromArrival: "05:15 am",
        toArrival: "07:15 am",
        stops: ['Ariyalur', 'Vellore', 'Dharmapuri', 'Theni', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Cuddalore",
        busNumber: "TN629",
        fromArrival: "06:45 pm",
        toArrival: "05:45 pm",
        stops: [
          'Ariyalur',
          'Kanchipuram',
          'Nilgiris',
          'Ramanathapuram',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Dharmapuri",
        busNumber: "TN8459",
        fromArrival: "05:45 am",
        toArrival: "06:45 pm",
        stops: ['Ariyalur', 'Madurai', 'Sivaganga', 'Thanjavur', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Dindigul",
        busNumber: "TN1224",
        fromArrival: "05:15 am",
        toArrival: "09:30 am",
        stops: ['Ariyalur', 'Kanyakumari', 'Madurai', 'Theni', 'Dindigul'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Erode",
        busNumber: "TN6336",
        fromArrival: "12:45 pm",
        toArrival: "10:00 pm",
        stops: ['Ariyalur', 'Kanchipuram', 'Nilgiris', 'Vellore', 'Erode'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Kallakurichi",
        busNumber: "TN851",
        fromArrival: "07:45 pm",
        toArrival: "04:30 pm",
        stops: [
          'Ariyalur',
          'Krishnagiri',
          'Virudhunagar',
          'Chennai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Kanchipuram",
        busNumber: "TN106",
        fromArrival: "07:30 pm",
        toArrival: "06:15 am",
        stops: [
          'Ariyalur',
          'Dindigul',
          'Coimbatore',
          'Tiruvannamalai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Kanyakumari",
        busNumber: "TN6348",
        fromArrival: "10:45 am",
        toArrival: "10:15 pm",
        stops: [
          'Ariyalur',
          'Namakkal',
          'Tiruvannamalai',
          'Tiruchirappalli',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Karur",
        busNumber: "TN7981",
        fromArrival: "07:00 pm",
        toArrival: "10:00 pm",
        stops: [
          'Ariyalur',
          'Tiruvannamalai',
          'Kanchipuram',
          'Mayiladuthurai',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Krishnagiri",
        busNumber: "TN1956",
        fromArrival: "07:00 pm",
        toArrival: "02:45 pm",
        stops: ['Ariyalur', 'Tiruvarur', 'Karur', 'Tenkasi', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Madurai",
        busNumber: "TN1997",
        fromArrival: "04:15 pm",
        toArrival: "12:00 pm",
        stops: ['Ariyalur', 'Tiruvarur', 'Erode', 'Sivaganga', 'Madurai'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Nagapattinam",
        busNumber: "TN4796",
        fromArrival: "09:30 pm",
        toArrival: "11:30 am",
        stops: ['Ariyalur', 'Chennai', 'Dindigul', 'Vellore', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Namakkal",
        busNumber: "TN1463",
        fromArrival: "11:00 am",
        toArrival: "10:00 pm",
        stops: [
          'Ariyalur',
          'Nagapattinam',
          'Theni',
          'Virudhunagar',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Nilgiris",
        busNumber: "TN4056",
        fromArrival: "08:45 pm",
        toArrival: "06:30 am",
        stops: [
          'Ariyalur',
          'Tirunelveli',
          'Theni',
          'Tiruvannamalai',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Perambalur",
        busNumber: "TN999",
        fromArrival: "08:30 pm",
        toArrival: "06:00 am",
        stops: [
          'Ariyalur',
          'Vellore',
          'Mayiladuthurai',
          'Cuddalore',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Pudukkottai",
        busNumber: "TN3456",
        fromArrival: "12:15 pm",
        toArrival: "04:15 pm",
        stops: [
          'Ariyalur',
          'Mayiladuthurai',
          'Nilgiris',
          'Tirunelveli',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Ramanathapuram",
        busNumber: "TN3354",
        fromArrival: "12:15 pm",
        toArrival: "10:45 am",
        stops: [
          'Ariyalur',
          'Nagapattinam',
          'Madurai',
          'Tiruvarur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Ranipet",
        busNumber: "TN9282",
        fromArrival: "06:30 pm",
        toArrival: "05:15 pm",
        stops: ['Ariyalur', 'Theni', 'Madurai', 'Sivaganga', 'Ranipet'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Salem",
        busNumber: "TN8871",
        fromArrival: "09:45 am",
        toArrival: "04:45 pm",
        stops: ['Ariyalur', 'Coimbatore', 'Tiruppur', 'Tirunelveli', 'Salem'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Sivaganga",
        busNumber: "TN5072",
        fromArrival: "04:15 pm",
        toArrival: "07:00 am",
        stops: [
          'Ariyalur',
          'Thoothukudi',
          'Kanyakumari',
          'Chengalpattu',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tenkasi",
        busNumber: "TN3737",
        fromArrival: "09:30 am",
        toArrival: "07:30 am",
        stops: [
          'Ariyalur',
          'Mayiladuthurai',
          'Dindigul',
          'Kallakurichi',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Thanjavur",
        busNumber: "TN348",
        fromArrival: "03:00 pm",
        toArrival: "04:45 pm",
        stops: [
          'Ariyalur',
          'Nilgiris',
          'Karur',
          'Tiruchirappalli',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Theni",
        busNumber: "TN1343",
        fromArrival: "06:15 am",
        toArrival: "09:00 pm",
        stops: [
          'Ariyalur',
          'Tirunelveli',
          'Chengalpattu',
          'Virudhunagar',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Thoothukudi",
        busNumber: "TN4944",
        fromArrival: "07:45 am",
        toArrival: "03:15 pm",
        stops: ['Ariyalur', 'Vellore', 'Tiruvarur', 'Sivaganga', 'Thoothukudi'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tiruchirappalli",
        busNumber: "TN6785",
        fromArrival: "10:45 pm",
        toArrival: "06:15 am",
        stops: [
          'Ariyalur',
          'Vellore',
          'Pudukkottai',
          'Cuddalore',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tirunelveli",
        busNumber: "TN8612",
        fromArrival: "04:15 pm",
        toArrival: "05:30 am",
        stops: [
          'Ariyalur',
          'Madurai',
          'Tirupathur',
          'Viluppuram',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tirupathur",
        busNumber: "TN7868",
        fromArrival: "05:00 pm",
        toArrival: "02:00 pm",
        stops: [
          'Ariyalur',
          'Ramanathapuram',
          'Karur',
          'Kanyakumari',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tiruppur",
        busNumber: "TN3058",
        fromArrival: "04:15 pm",
        toArrival: "03:45 pm",
        stops: ['Ariyalur', 'Krishnagiri', 'Viluppuram', 'Karur', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tiruvallur",
        busNumber: "TN2594",
        fromArrival: "09:30 am",
        toArrival: "03:15 pm",
        stops: [
          'Ariyalur',
          'Tiruchirappalli',
          'Ranipet',
          'Virudhunagar',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tiruvannamalai",
        busNumber: "TN1160",
        fromArrival: "03:00 pm",
        toArrival: "06:45 pm",
        stops: [
          'Ariyalur',
          'Tiruppur',
          'Tenkasi',
          'Ramanathapuram',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Tiruvarur",
        busNumber: "TN8687",
        fromArrival: "02:30 pm",
        toArrival: "07:00 am",
        stops: [
          'Ariyalur',
          'Tiruchirappalli',
          'Vellore',
          'Dindigul',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Vellore",
        busNumber: "TN3052",
        fromArrival: "11:45 am",
        toArrival: "09:00 pm",
        stops: ['Ariyalur', 'Thanjavur', 'Sivaganga', 'Viluppuram', 'Vellore'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Viluppuram",
        busNumber: "TN9992",
        fromArrival: "09:15 am",
        toArrival: "03:00 pm",
        stops: [
          'Ariyalur',
          'Kanchipuram',
          'Sivaganga',
          'Chennai',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Virudhunagar",
        busNumber: "TN9938",
        fromArrival: "05:45 am",
        toArrival: "11:00 am",
        stops: ['Ariyalur', 'Madurai', 'Tiruvarur', 'Erode', 'Virudhunagar'],
      ),

      Bus(
        fromCity: "Ariyalur",
        toCity: "Mayiladuthurai",
        busNumber: "TN2351",
        fromArrival: "08:15 pm",
        toArrival: "06:15 am",
        stops: [
          'Ariyalur',
          'Kanyakumari',
          'Tiruchirappalli',
          'Thoothukudi',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Ariyalur",
        busNumber: "TN7691",
        fromArrival: "01:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Chengalpattu',
          'Ramanathapuram',
          'Vellore',
          'Nagapattinam',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Chennai",
        busNumber: "TN2726",
        fromArrival: "12:45 pm",
        toArrival: "06:30 pm",
        stops: [
          'Chengalpattu',
          'Pudukkottai',
          'Tenkasi',
          'Krishnagiri',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Coimbatore",
        busNumber: "TN7144",
        fromArrival: "07:00 am",
        toArrival: "09:00 pm",
        stops: [
          'Chengalpattu',
          'Tirupathur',
          'Dharmapuri',
          'Karur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Cuddalore",
        busNumber: "TN8310",
        fromArrival: "09:00 pm",
        toArrival: "03:15 pm",
        stops: ['Chengalpattu', 'Thanjavur', 'Tenkasi', 'Ranipet', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Dharmapuri",
        busNumber: "TN8847",
        fromArrival: "05:45 pm",
        toArrival: "05:30 am",
        stops: [
          'Chengalpattu',
          'Nilgiris',
          'Dindigul',
          'Perambalur',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Dindigul",
        busNumber: "TN551",
        fromArrival: "03:00 pm",
        toArrival: "09:45 am",
        stops: [
          'Chengalpattu',
          'Perambalur',
          'Virudhunagar',
          'Sivaganga',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Erode",
        busNumber: "TN4740",
        fromArrival: "03:15 pm",
        toArrival: "11:45 am",
        stops: ['Chengalpattu', 'Viluppuram', 'Tiruppur', 'Madurai', 'Erode'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Kallakurichi",
        busNumber: "TN5753",
        fromArrival: "03:45 pm",
        toArrival: "01:45 pm",
        stops: [
          'Chengalpattu',
          'Madurai',
          'Ariyalur',
          'Dharmapuri',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Kanchipuram",
        busNumber: "TN4536",
        fromArrival: "06:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Chengalpattu',
          'Nilgiris',
          'Cuddalore',
          'Ranipet',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Kanyakumari",
        busNumber: "TN1749",
        fromArrival: "04:00 pm",
        toArrival: "11:30 am",
        stops: [
          'Chengalpattu',
          'Tiruvarur',
          'Vellore',
          'Nagapattinam',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Karur",
        busNumber: "TN3344",
        fromArrival: "01:15 pm",
        toArrival: "09:45 pm",
        stops: ['Chengalpattu', 'Tenkasi', 'Salem', 'Dindigul', 'Karur'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Krishnagiri",
        busNumber: "TN8314",
        fromArrival: "09:15 am",
        toArrival: "06:00 pm",
        stops: ['Chengalpattu', 'Madurai', 'Theni', 'Erode', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Madurai",
        busNumber: "TN9556",
        fromArrival: "02:45 pm",
        toArrival: "11:45 am",
        stops: [
          'Chengalpattu',
          'Ramanathapuram',
          'Perambalur',
          'Tiruchirappalli',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Nagapattinam",
        busNumber: "TN2364",
        fromArrival: "09:00 am",
        toArrival: "06:15 pm",
        stops: [
          'Chengalpattu',
          'Namakkal',
          'Ariyalur',
          'Madurai',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Namakkal",
        busNumber: "TN4913",
        fromArrival: "04:15 pm",
        toArrival: "03:15 pm",
        stops: [
          'Chengalpattu',
          'Tiruchirappalli',
          'Tiruvarur',
          'Tiruvallur',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Nilgiris",
        busNumber: "TN3710",
        fromArrival: "08:00 am",
        toArrival: "07:00 pm",
        stops: ['Chengalpattu', 'Madurai', 'Virudhunagar', 'Erode', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Perambalur",
        busNumber: "TN8977",
        fromArrival: "01:30 pm",
        toArrival: "07:00 pm",
        stops: [
          'Chengalpattu',
          'Nagapattinam',
          'Vellore',
          'Krishnagiri',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Pudukkottai",
        busNumber: "TN6635",
        fromArrival: "09:45 am",
        toArrival: "01:45 pm",
        stops: [
          'Chengalpattu',
          'Coimbatore',
          'Tiruvallur',
          'Tiruppur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Ramanathapuram",
        busNumber: "TN7043",
        fromArrival: "10:00 pm",
        toArrival: "07:45 am",
        stops: [
          'Chengalpattu',
          'Cuddalore',
          'Sivaganga',
          'Ranipet',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Ranipet",
        busNumber: "TN3212",
        fromArrival: "08:00 am",
        toArrival: "11:15 am",
        stops: ['Chengalpattu', 'Dharmapuri', 'Tenkasi', 'Namakkal', 'Ranipet'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Salem",
        busNumber: "TN4111",
        fromArrival: "12:30 pm",
        toArrival: "02:45 pm",
        stops: [
          'Chengalpattu',
          'Viluppuram',
          'Tiruppur',
          'Tiruchirappalli',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Sivaganga",
        busNumber: "TN268",
        fromArrival: "10:00 am",
        toArrival: "02:30 pm",
        stops: [
          'Chengalpattu',
          'Tiruppur',
          'Thoothukudi',
          'Cuddalore',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tenkasi",
        busNumber: "TN1756",
        fromArrival: "03:30 pm",
        toArrival: "01:30 pm",
        stops: [
          'Chengalpattu',
          'Kanyakumari',
          'Viluppuram',
          'Tiruvannamalai',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Thanjavur",
        busNumber: "TN9964",
        fromArrival: "07:30 pm",
        toArrival: "06:45 am",
        stops: [
          'Chengalpattu',
          'Viluppuram',
          'Dharmapuri',
          'Erode',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Theni",
        busNumber: "TN8312",
        fromArrival: "11:30 am",
        toArrival: "04:00 pm",
        stops: ['Chengalpattu', 'Salem', 'Kanchipuram', 'Viluppuram', 'Theni'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Thoothukudi",
        busNumber: "TN7885",
        fromArrival: "04:00 pm",
        toArrival: "06:15 am",
        stops: [
          'Chengalpattu',
          'Ramanathapuram',
          'Tiruvarur',
          'Pudukkottai',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tiruchirappalli",
        busNumber: "TN3824",
        fromArrival: "05:30 am",
        toArrival: "04:00 pm",
        stops: [
          'Chengalpattu',
          'Karur',
          'Thanjavur',
          'Ariyalur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tirunelveli",
        busNumber: "TN9825",
        fromArrival: "09:45 pm",
        toArrival: "10:30 am",
        stops: [
          'Chengalpattu',
          'Nagapattinam',
          'Namakkal',
          'Madurai',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tirupathur",
        busNumber: "TN3939",
        fromArrival: "02:45 pm",
        toArrival: "05:45 pm",
        stops: [
          'Chengalpattu',
          'Namakkal',
          'Tiruppur',
          'Thoothukudi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tiruppur",
        busNumber: "TN2667",
        fromArrival: "03:00 pm",
        toArrival: "01:30 pm",
        stops: [
          'Chengalpattu',
          'Coimbatore',
          'Cuddalore',
          'Vellore',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tiruvallur",
        busNumber: "TN2217",
        fromArrival: "08:45 pm",
        toArrival: "07:30 am",
        stops: [
          'Chengalpattu',
          'Dharmapuri',
          'Mayiladuthurai',
          'Pudukkottai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tiruvannamalai",
        busNumber: "TN4993",
        fromArrival: "07:00 pm",
        toArrival: "05:30 am",
        stops: [
          'Chengalpattu',
          'Dindigul',
          'Coimbatore',
          'Dharmapuri',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Tiruvarur",
        busNumber: "TN2228",
        fromArrival: "06:45 pm",
        toArrival: "08:15 pm",
        stops: ['Chengalpattu', 'Chennai', 'Vellore', 'Thanjavur', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Vellore",
        busNumber: "TN857",
        fromArrival: "02:00 pm",
        toArrival: "08:00 am",
        stops: [
          'Chengalpattu',
          'Nagapattinam',
          'Tiruvarur',
          'Erode',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Viluppuram",
        busNumber: "TN2239",
        fromArrival: "09:00 am",
        toArrival: "07:45 am",
        stops: [
          'Chengalpattu',
          'Sivaganga',
          'Chennai',
          'Tirunelveli',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Virudhunagar",
        busNumber: "TN2310",
        fromArrival: "02:30 pm",
        toArrival: "01:30 pm",
        stops: [
          'Chengalpattu',
          'Nagapattinam',
          'Krishnagiri',
          'Sivaganga',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Chengalpattu",
        toCity: "Mayiladuthurai",
        busNumber: "TN9150",
        fromArrival: "10:45 pm",
        toArrival: "05:15 pm",
        stops: [
          'Chengalpattu',
          'Chennai',
          'Krishnagiri',
          'Nagapattinam',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Ariyalur",
        busNumber: "TN8765",
        fromArrival: "07:45 am",
        toArrival: "05:00 pm",
        stops: [
          'Chennai',
          'Tiruvallur',
          'Nagapattinam',
          'Namakkal',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Chengalpattu",
        busNumber: "TN9683",
        fromArrival: "12:30 pm",
        toArrival: "07:45 pm",
        stops: ['Chennai', 'Perambalur', 'Karur', 'Nilgiris', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Coimbatore",
        busNumber: "TN5866",
        fromArrival: "09:15 pm",
        toArrival: "10:00 am",
        stops: ['Chennai', 'Madurai', 'Theni', 'Nilgiris', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Cuddalore",
        busNumber: "TN4917",
        fromArrival: "05:30 pm",
        toArrival: "05:30 pm",
        stops: ['Chennai', 'Pudukkottai', 'Vellore', 'Dharmapuri', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Dharmapuri",
        busNumber: "TN3094",
        fromArrival: "05:45 am",
        toArrival: "06:15 am",
        stops: ['Chennai', 'Perambalur', 'Ariyalur', 'Ranipet', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Dindigul",
        busNumber: "TN5562",
        fromArrival: "05:15 pm",
        toArrival: "12:45 pm",
        stops: ['Chennai', 'Ranipet', 'Sivaganga', 'Tiruvarur', 'Dindigul'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Erode",
        busNumber: "TN7225",
        fromArrival: "08:30 pm",
        toArrival: "10:30 am",
        stops: ['Chennai', 'Theni', 'Viluppuram', 'Cuddalore', 'Erode'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Kallakurichi",
        busNumber: "TN8640",
        fromArrival: "02:00 pm",
        toArrival: "06:00 am",
        stops: [
          'Chennai',
          'Thanjavur',
          'Mayiladuthurai',
          'Namakkal',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Kanchipuram",
        busNumber: "TN7018",
        fromArrival: "05:15 pm",
        toArrival: "02:00 pm",
        stops: [
          'Chennai',
          'Tiruppur',
          'Virudhunagar',
          'Tirupathur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Kanyakumari",
        busNumber: "TN6141",
        fromArrival: "08:15 pm",
        toArrival: "08:00 pm",
        stops: [
          'Chennai',
          'Thanjavur',
          'Perambalur',
          'Tiruvallur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Karur",
        busNumber: "TN4773",
        fromArrival: "03:15 pm",
        toArrival: "02:45 pm",
        stops: ['Chennai', 'Dharmapuri', 'Namakkal', 'Krishnagiri', 'Karur'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Krishnagiri",
        busNumber: "TN6157",
        fromArrival: "08:00 am",
        toArrival: "09:30 pm",
        stops: [
          'Chennai',
          'Mayiladuthurai',
          'Ramanathapuram',
          'Ariyalur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Madurai",
        busNumber: "TN5178",
        fromArrival: "07:00 am",
        toArrival: "12:30 pm",
        stops: ['Chennai', 'Salem', 'Vellore', 'Sivaganga', 'Madurai'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Nagapattinam",
        busNumber: "TN5427",
        fromArrival: "09:45 am",
        toArrival: "11:30 am",
        stops: [
          'Chennai',
          'Krishnagiri',
          'Mayiladuthurai',
          'Vellore',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Namakkal",
        busNumber: "TN9414",
        fromArrival: "07:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Chennai',
          'Ariyalur',
          'Mayiladuthurai',
          'Viluppuram',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Nilgiris",
        busNumber: "TN4547",
        fromArrival: "01:30 pm",
        toArrival: "11:00 am",
        stops: [
          'Chennai',
          'Ranipet',
          'Krishnagiri',
          'Chengalpattu',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Perambalur",
        busNumber: "TN6648",
        fromArrival: "05:45 pm",
        toArrival: "09:15 pm",
        stops: [
          'Chennai',
          'Krishnagiri',
          'Nagapattinam',
          'Pudukkottai',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Pudukkottai",
        busNumber: "TN6511",
        fromArrival: "12:45 pm",
        toArrival: "02:30 pm",
        stops: ['Chennai', 'Tiruvarur', 'Virudhunagar', 'Theni', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Ramanathapuram",
        busNumber: "TN9271",
        fromArrival: "12:00 pm",
        toArrival: "02:15 pm",
        stops: [
          'Chennai',
          'Thoothukudi',
          'Tiruchirappalli',
          'Coimbatore',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Ranipet",
        busNumber: "TN5976",
        fromArrival: "01:30 pm",
        toArrival: "11:30 am",
        stops: ['Chennai', 'Theni', 'Nagapattinam', 'Erode', 'Ranipet'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Salem",
        busNumber: "TN7738",
        fromArrival: "07:15 am",
        toArrival: "06:45 pm",
        stops: ['Chennai', 'Karur', 'Ramanathapuram', 'Thoothukudi', 'Salem'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Sivaganga",
        busNumber: "TN1154",
        fromArrival: "06:15 am",
        toArrival: "12:45 pm",
        stops: [
          'Chennai',
          'Kanchipuram',
          'Dindigul',
          'Kanyakumari',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tenkasi",
        busNumber: "TN6755",
        fromArrival: "08:30 am",
        toArrival: "11:30 am",
        stops: ['Chennai', 'Kallakurichi', 'Theni', 'Tirunelveli', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Thanjavur",
        busNumber: "TN6161",
        fromArrival: "07:15 am",
        toArrival: "07:45 am",
        stops: [
          'Chennai',
          'Virudhunagar',
          'Tiruvallur',
          'Vellore',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Theni",
        busNumber: "TN6530",
        fromArrival: "05:00 pm",
        toArrival: "04:30 pm",
        stops: [
          'Chennai',
          'Thoothukudi',
          'Tirunelveli',
          'Tiruvannamalai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Thoothukudi",
        busNumber: "TN9089",
        fromArrival: "08:15 pm",
        toArrival: "07:45 pm",
        stops: ['Chennai', 'Vellore', 'Tiruppur', 'Kanchipuram', 'Thoothukudi'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tiruchirappalli",
        busNumber: "TN1894",
        fromArrival: "11:45 am",
        toArrival: "08:30 am",
        stops: [
          'Chennai',
          'Dharmapuri',
          'Erode',
          'Mayiladuthurai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tirunelveli",
        busNumber: "TN8743",
        fromArrival: "05:45 am",
        toArrival: "05:00 am",
        stops: [
          'Chennai',
          'Tirupathur',
          'Krishnagiri',
          'Coimbatore',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tirupathur",
        busNumber: "TN2163",
        fromArrival: "10:30 am",
        toArrival: "06:00 pm",
        stops: [
          'Chennai',
          'Nilgiris',
          'Salem',
          'Tiruchirappalli',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tiruppur",
        busNumber: "TN7227",
        fromArrival: "04:15 pm",
        toArrival: "04:45 pm",
        stops: [
          'Chennai',
          'Viluppuram',
          'Tiruvannamalai',
          'Ariyalur',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tiruvallur",
        busNumber: "TN3459",
        fromArrival: "09:45 am",
        toArrival: "08:15 pm",
        stops: [
          'Chennai',
          'Tiruchirappalli',
          'Viluppuram',
          'Mayiladuthurai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tiruvannamalai",
        busNumber: "TN1028",
        fromArrival: "11:45 am",
        toArrival: "08:30 pm",
        stops: [
          'Chennai',
          'Vellore',
          'Mayiladuthurai',
          'Tenkasi',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Tiruvarur",
        busNumber: "TN1112",
        fromArrival: "04:00 pm",
        toArrival: "02:15 pm",
        stops: [
          'Chennai',
          'Perambalur',
          'Tiruchirappalli',
          'Kallakurichi',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Vellore",
        busNumber: "TN1424",
        fromArrival: "05:00 am",
        toArrival: "01:45 pm",
        stops: [
          'Chennai',
          'Tiruvannamalai',
          'Kallakurichi',
          'Tenkasi',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Viluppuram",
        busNumber: "TN5728",
        fromArrival: "05:45 pm",
        toArrival: "06:30 am",
        stops: ['Chennai', 'Madurai', 'Theni', 'Krishnagiri', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Virudhunagar",
        busNumber: "TN7816",
        fromArrival: "08:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Chennai',
          'Chengalpattu',
          'Tenkasi',
          'Tiruchirappalli',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Chennai",
        toCity: "Mayiladuthurai",
        busNumber: "TN9880",
        fromArrival: "04:15 pm",
        toArrival: "12:30 pm",
        stops: [
          'Chennai',
          'Erode',
          'Virudhunagar',
          'Tiruchirappalli',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Ariyalur",
        busNumber: "TN4859",
        fromArrival: "05:00 pm",
        toArrival: "11:15 am",
        stops: [
          'Coimbatore',
          'Namakkal',
          'Tiruvallur',
          'Thoothukudi',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Chengalpattu",
        busNumber: "TN6926",
        fromArrival: "06:00 pm",
        toArrival: "08:30 pm",
        stops: [
          'Coimbatore',
          'Namakkal',
          'Chennai',
          'Nilgiris',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Chennai",
        busNumber: "TN7586",
        fromArrival: "03:00 pm",
        toArrival: "11:30 am",
        stops: [
          'Coimbatore',
          'Tirupathur',
          'Karur',
          'Tiruvannamalai',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Cuddalore",
        busNumber: "TN9848",
        fromArrival: "08:30 am",
        toArrival: "08:00 pm",
        stops: ['Coimbatore', 'Dindigul', 'Ranipet', 'Salem', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Dharmapuri",
        busNumber: "TN1034",
        fromArrival: "11:45 am",
        toArrival: "01:00 pm",
        stops: [
          'Coimbatore',
          'Ranipet',
          'Vellore',
          'Tiruvannamalai',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Dindigul",
        busNumber: "TN6967",
        fromArrival: "07:30 am",
        toArrival: "09:45 am",
        stops: ['Coimbatore', 'Tirunelveli', 'Erode', 'Sivaganga', 'Dindigul'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Erode",
        busNumber: "TN165",
        fromArrival: "09:00 am",
        toArrival: "02:00 pm",
        stops: [
          'Coimbatore',
          'Thanjavur',
          'Mayiladuthurai',
          'Tirupathur',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Kallakurichi",
        busNumber: "TN5597",
        fromArrival: "10:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Coimbatore',
          'Madurai',
          'Pudukkottai',
          'Tirunelveli',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Kanchipuram",
        busNumber: "TN9920",
        fromArrival: "08:15 am",
        toArrival: "06:15 am",
        stops: [
          'Coimbatore',
          'Vellore',
          'Tiruvannamalai',
          'Ramanathapuram',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Kanyakumari",
        busNumber: "TN8754",
        fromArrival: "04:30 pm",
        toArrival: "09:30 pm",
        stops: [
          'Coimbatore',
          'Erode',
          'Mayiladuthurai',
          'Tiruvallur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Karur",
        busNumber: "TN6982",
        fromArrival: "06:15 pm",
        toArrival: "06:15 am",
        stops: ['Coimbatore', 'Tenkasi', 'Vellore', 'Chengalpattu', 'Karur'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Krishnagiri",
        busNumber: "TN9556",
        fromArrival: "04:45 pm",
        toArrival: "06:45 am",
        stops: [
          'Coimbatore',
          'Vellore',
          'Tiruvallur',
          'Tiruvannamalai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Madurai",
        busNumber: "TN1621",
        fromArrival: "05:15 pm",
        toArrival: "11:00 am",
        stops: [
          'Coimbatore',
          'Dharmapuri',
          'Ariyalur',
          'Chengalpattu',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Nagapattinam",
        busNumber: "TN9519",
        fromArrival: "11:15 am",
        toArrival: "11:30 am",
        stops: [
          'Coimbatore',
          'Madurai',
          'Dindigul',
          'Namakkal',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Namakkal",
        busNumber: "TN8369",
        fromArrival: "07:30 am",
        toArrival: "06:00 am",
        stops: [
          'Coimbatore',
          'Tiruchirappalli',
          'Ramanathapuram',
          'Krishnagiri',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Nilgiris",
        busNumber: "TN7285",
        fromArrival: "03:00 pm",
        toArrival: "09:45 pm",
        stops: [
          'Coimbatore',
          'Pudukkottai',
          'Krishnagiri',
          'Madurai',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Perambalur",
        busNumber: "TN2617",
        fromArrival: "01:00 pm",
        toArrival: "10:45 am",
        stops: [
          'Coimbatore',
          'Mayiladuthurai',
          'Tiruvallur',
          'Viluppuram',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Pudukkottai",
        busNumber: "TN7188",
        fromArrival: "12:45 pm",
        toArrival: "12:30 pm",
        stops: [
          'Coimbatore',
          'Ramanathapuram',
          'Chennai',
          'Tiruchirappalli',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Ramanathapuram",
        busNumber: "TN9967",
        fromArrival: "11:30 am",
        toArrival: "04:15 pm",
        stops: [
          'Coimbatore',
          'Thanjavur',
          'Tiruppur',
          'Nagapattinam',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Ranipet",
        busNumber: "TN4116",
        fromArrival: "09:15 pm",
        toArrival: "04:30 pm",
        stops: [
          'Coimbatore',
          'Pudukkottai',
          'Ramanathapuram',
          'Cuddalore',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Salem",
        busNumber: "TN6481",
        fromArrival: "09:30 pm",
        toArrival: "10:45 am",
        stops: [
          'Coimbatore',
          'Kanyakumari',
          'Kanchipuram',
          'Ramanathapuram',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Sivaganga",
        busNumber: "TN8283",
        fromArrival: "11:45 am",
        toArrival: "01:45 pm",
        stops: ['Coimbatore', 'Tenkasi', 'Perambalur', 'Theni', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tenkasi",
        busNumber: "TN8073",
        fromArrival: "07:30 pm",
        toArrival: "05:45 pm",
        stops: [
          'Coimbatore',
          'Chengalpattu',
          'Sivaganga',
          'Dharmapuri',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Thanjavur",
        busNumber: "TN6469",
        fromArrival: "02:45 pm",
        toArrival: "07:45 pm",
        stops: [
          'Coimbatore',
          'Theni',
          'Thoothukudi',
          'Dharmapuri',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Theni",
        busNumber: "TN6493",
        fromArrival: "01:15 pm",
        toArrival: "05:45 pm",
        stops: ['Coimbatore', 'Madurai', 'Karur', 'Thanjavur', 'Theni'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Thoothukudi",
        busNumber: "TN1280",
        fromArrival: "10:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Coimbatore',
          'Madurai',
          'Tiruppur',
          'Perambalur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tiruchirappalli",
        busNumber: "TN8485",
        fromArrival: "09:00 pm",
        toArrival: "07:30 am",
        stops: [
          'Coimbatore',
          'Tiruvannamalai',
          'Ramanathapuram',
          'Tiruvarur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tirunelveli",
        busNumber: "TN2781",
        fromArrival: "04:30 pm",
        toArrival: "01:15 pm",
        stops: [
          'Coimbatore',
          'Chennai',
          'Nagapattinam',
          'Chengalpattu',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tirupathur",
        busNumber: "TN5838",
        fromArrival: "05:45 pm",
        toArrival: "02:45 pm",
        stops: [
          'Coimbatore',
          'Thanjavur',
          'Salem',
          'Tiruvannamalai',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tiruppur",
        busNumber: "TN967",
        fromArrival: "08:30 pm",
        toArrival: "05:15 am",
        stops: ['Coimbatore', 'Erode', 'Tirupathur', 'Ranipet', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tiruvallur",
        busNumber: "TN7116",
        fromArrival: "09:45 am",
        toArrival: "06:00 am",
        stops: [
          'Coimbatore',
          'Krishnagiri',
          'Kanchipuram',
          'Ranipet',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tiruvannamalai",
        busNumber: "TN7384",
        fromArrival: "03:30 pm",
        toArrival: "08:00 am",
        stops: [
          'Coimbatore',
          'Pudukkottai',
          'Tiruchirappalli',
          'Perambalur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Tiruvarur",
        busNumber: "TN8483",
        fromArrival: "06:00 pm",
        toArrival: "05:15 am",
        stops: [
          'Coimbatore',
          'Mayiladuthurai',
          'Tiruvallur',
          'Dharmapuri',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Vellore",
        busNumber: "TN2051",
        fromArrival: "09:00 pm",
        toArrival: "03:15 pm",
        stops: [
          'Coimbatore',
          'Tirunelveli',
          'Erode',
          'Kallakurichi',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Viluppuram",
        busNumber: "TN4536",
        fromArrival: "05:30 am",
        toArrival: "07:45 pm",
        stops: ['Coimbatore', 'Tenkasi', 'Krishnagiri', 'Salem', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Virudhunagar",
        busNumber: "TN8377",
        fromArrival: "08:30 pm",
        toArrival: "05:45 am",
        stops: [
          'Coimbatore',
          'Ranipet',
          'Tiruvannamalai',
          'Tirunelveli',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Coimbatore",
        toCity: "Mayiladuthurai",
        busNumber: "TN6915",
        fromArrival: "11:00 am",
        toArrival: "06:15 pm",
        stops: [
          'Coimbatore',
          'Tirupathur',
          'Namakkal',
          'Cuddalore',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Ariyalur",
        busNumber: "TN5029",
        fromArrival: "09:30 pm",
        toArrival: "02:00 pm",
        stops: ['Cuddalore', 'Tiruppur', 'Ranipet', 'Dindigul', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Chengalpattu",
        busNumber: "TN6419",
        fromArrival: "08:30 am",
        toArrival: "08:30 pm",
        stops: ['Cuddalore', 'Sivaganga', 'Madurai', 'Theni', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Chennai",
        busNumber: "TN3262",
        fromArrival: "06:00 am",
        toArrival: "03:15 pm",
        stops: ['Cuddalore', 'Erode', 'Pudukkottai', 'Sivaganga', 'Chennai'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Coimbatore",
        busNumber: "TN3417",
        fromArrival: "10:45 pm",
        toArrival: "06:00 am",
        stops: [
          'Cuddalore',
          'Tiruvarur',
          'Viluppuram',
          'Dindigul',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Dharmapuri",
        busNumber: "TN4643",
        fromArrival: "05:00 pm",
        toArrival: "10:45 pm",
        stops: ['Cuddalore', 'Nilgiris', 'Madurai', 'Chennai', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Dindigul",
        busNumber: "TN3974",
        fromArrival: "08:15 pm",
        toArrival: "06:00 pm",
        stops: ['Cuddalore', 'Sivaganga', 'Vellore', 'Pudukkottai', 'Dindigul'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Erode",
        busNumber: "TN7715",
        fromArrival: "12:30 pm",
        toArrival: "12:15 pm",
        stops: [
          'Cuddalore',
          'Tiruchirappalli',
          'Thoothukudi',
          'Tiruppur',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Kallakurichi",
        busNumber: "TN5713",
        fromArrival: "02:30 pm",
        toArrival: "01:30 pm",
        stops: [
          'Cuddalore',
          'Tiruchirappalli',
          'Tirunelveli',
          'Mayiladuthurai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Kanchipuram",
        busNumber: "TN4370",
        fromArrival: "11:15 am",
        toArrival: "04:00 pm",
        stops: [
          'Cuddalore',
          'Tiruvannamalai',
          'Kanyakumari',
          'Perambalur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Kanyakumari",
        busNumber: "TN8864",
        fromArrival: "07:45 pm",
        toArrival: "11:15 am",
        stops: ['Cuddalore', 'Ariyalur', 'Karur', 'Tiruppur', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Karur",
        busNumber: "TN6281",
        fromArrival: "08:45 pm",
        toArrival: "07:00 am",
        stops: ['Cuddalore', 'Ranipet', 'Kallakurichi', 'Coimbatore', 'Karur'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Krishnagiri",
        busNumber: "TN3576",
        fromArrival: "12:45 pm",
        toArrival: "09:15 am",
        stops: [
          'Cuddalore',
          'Nagapattinam',
          'Erode',
          'Sivaganga',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Madurai",
        busNumber: "TN9597",
        fromArrival: "11:45 am",
        toArrival: "07:45 am",
        stops: ['Cuddalore', 'Nilgiris', 'Pudukkottai', 'Tenkasi', 'Madurai'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Nagapattinam",
        busNumber: "TN3682",
        fromArrival: "09:30 pm",
        toArrival: "10:00 am",
        stops: ['Cuddalore', 'Theni', 'Salem', 'Coimbatore', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Namakkal",
        busNumber: "TN7841",
        fromArrival: "05:30 pm",
        toArrival: "11:30 am",
        stops: [
          'Cuddalore',
          'Sivaganga',
          'Tirunelveli',
          'Mayiladuthurai',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Nilgiris",
        busNumber: "TN9573",
        fromArrival: "05:00 am",
        toArrival: "01:15 pm",
        stops: ['Cuddalore', 'Karur', 'Kanchipuram', 'Tiruvarur', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Perambalur",
        busNumber: "TN2985",
        fromArrival: "08:30 pm",
        toArrival: "05:45 am",
        stops: [
          'Cuddalore',
          'Tenkasi',
          'Tirunelveli',
          'Chengalpattu',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Pudukkottai",
        busNumber: "TN3464",
        fromArrival: "05:45 pm",
        toArrival: "09:45 pm",
        stops: ['Cuddalore', 'Thanjavur', 'Ariyalur', 'Madurai', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Ramanathapuram",
        busNumber: "TN4985",
        fromArrival: "01:00 pm",
        toArrival: "07:45 am",
        stops: [
          'Cuddalore',
          'Viluppuram',
          'Tiruvallur',
          'Tiruvarur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Ranipet",
        busNumber: "TN5230",
        fromArrival: "05:45 pm",
        toArrival: "09:00 am",
        stops: ['Cuddalore', 'Theni', 'Kanyakumari', 'Ariyalur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Salem",
        busNumber: "TN4963",
        fromArrival: "02:45 pm",
        toArrival: "12:15 pm",
        stops: ['Cuddalore', 'Thanjavur', 'Dindigul', 'Kallakurichi', 'Salem'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Sivaganga",
        busNumber: "TN4338",
        fromArrival: "08:15 am",
        toArrival: "09:00 am",
        stops: ['Cuddalore', 'Chennai', 'Ariyalur', 'Coimbatore', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tenkasi",
        busNumber: "TN2321",
        fromArrival: "07:00 am",
        toArrival: "11:00 am",
        stops: ['Cuddalore', 'Erode', 'Ariyalur', 'Kanyakumari', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Thanjavur",
        busNumber: "TN7651",
        fromArrival: "10:45 am",
        toArrival: "07:15 am",
        stops: [
          'Cuddalore',
          'Tenkasi',
          'Kallakurichi',
          'Tiruvarur',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Theni",
        busNumber: "TN631",
        fromArrival: "06:30 am",
        toArrival: "06:00 pm",
        stops: ['Cuddalore', 'Nilgiris', 'Karur', 'Dindigul', 'Theni'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Thoothukudi",
        busNumber: "TN653",
        fromArrival: "07:45 pm",
        toArrival: "07:30 pm",
        stops: [
          'Cuddalore',
          'Pudukkottai',
          'Tirunelveli',
          'Tiruchirappalli',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tiruchirappalli",
        busNumber: "TN1148",
        fromArrival: "01:15 pm",
        toArrival: "06:45 pm",
        stops: [
          'Cuddalore',
          'Tenkasi',
          'Tirunelveli',
          'Dharmapuri',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tirunelveli",
        busNumber: "TN9842",
        fromArrival: "08:15 pm",
        toArrival: "06:15 pm",
        stops: [
          'Cuddalore',
          'Tiruppur',
          'Krishnagiri',
          'Sivaganga',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tirupathur",
        busNumber: "TN7760",
        fromArrival: "10:30 am",
        toArrival: "05:30 am",
        stops: ['Cuddalore', 'Vellore', 'Tiruvarur', 'Ariyalur', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tiruppur",
        busNumber: "TN2519",
        fromArrival: "04:30 pm",
        toArrival: "08:15 pm",
        stops: ['Cuddalore', 'Theni', 'Sivaganga', 'Salem', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tiruvallur",
        busNumber: "TN7818",
        fromArrival: "07:00 pm",
        toArrival: "07:00 am",
        stops: [
          'Cuddalore',
          'Tirunelveli',
          'Karur',
          'Krishnagiri',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tiruvannamalai",
        busNumber: "TN3720",
        fromArrival: "07:30 pm",
        toArrival: "06:30 am",
        stops: [
          'Cuddalore',
          'Viluppuram',
          'Dharmapuri',
          'Pudukkottai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Tiruvarur",
        busNumber: "TN5517",
        fromArrival: "09:15 am",
        toArrival: "07:45 am",
        stops: ['Cuddalore', 'Karur', 'Thanjavur', 'Ranipet', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Vellore",
        busNumber: "TN2157",
        fromArrival: "06:15 pm",
        toArrival: "09:30 am",
        stops: [
          'Cuddalore',
          'Coimbatore',
          'Thanjavur',
          'Krishnagiri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Viluppuram",
        busNumber: "TN1714",
        fromArrival: "06:00 pm",
        toArrival: "05:30 pm",
        stops: ['Cuddalore', 'Ariyalur', 'Perambalur', 'Erode', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Virudhunagar",
        busNumber: "TN8514",
        fromArrival: "08:00 am",
        toArrival: "07:15 am",
        stops: [
          'Cuddalore',
          'Dindigul',
          'Tiruchirappalli',
          'Tenkasi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Cuddalore",
        toCity: "Mayiladuthurai",
        busNumber: "TN1697",
        fromArrival: "05:15 am",
        toArrival: "11:00 am",
        stops: [
          'Cuddalore',
          'Tiruppur',
          'Thoothukudi',
          'Theni',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Ariyalur",
        busNumber: "TN8066",
        fromArrival: "04:45 pm",
        toArrival: "12:30 pm",
        stops: ['Dharmapuri', 'Theni', 'Kanyakumari', 'Vellore', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Chengalpattu",
        busNumber: "TN5214",
        fromArrival: "04:00 pm",
        toArrival: "05:45 pm",
        stops: [
          'Dharmapuri',
          'Kanchipuram',
          'Tiruchirappalli',
          'Sivaganga',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Chennai",
        busNumber: "TN8257",
        fromArrival: "07:00 am",
        toArrival: "06:30 am",
        stops: ['Dharmapuri', 'Coimbatore', 'Chengalpattu', 'Erode', 'Chennai'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Coimbatore",
        busNumber: "TN8048",
        fromArrival: "01:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Dharmapuri',
          'Tirunelveli',
          'Mayiladuthurai',
          'Theni',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Cuddalore",
        busNumber: "TN8264",
        fromArrival: "05:45 pm",
        toArrival: "02:30 pm",
        stops: [
          'Dharmapuri',
          'Thoothukudi',
          'Ariyalur',
          'Namakkal',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Dindigul",
        busNumber: "TN2496",
        fromArrival: "07:30 pm",
        toArrival: "10:30 am",
        stops: [
          'Dharmapuri',
          'Tiruvallur',
          'Nagapattinam',
          'Perambalur',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Erode",
        busNumber: "TN9750",
        fromArrival: "02:00 pm",
        toArrival: "07:45 am",
        stops: ['Dharmapuri', 'Coimbatore', 'Viluppuram', 'Vellore', 'Erode'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Kallakurichi",
        busNumber: "TN2141",
        fromArrival: "10:30 pm",
        toArrival: "03:30 pm",
        stops: [
          'Dharmapuri',
          'Cuddalore',
          'Virudhunagar',
          'Thoothukudi',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Kanchipuram",
        busNumber: "TN6299",
        fromArrival: "06:45 am",
        toArrival: "05:15 pm",
        stops: ['Dharmapuri', 'Namakkal', 'Vellore', 'Dindigul', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Kanyakumari",
        busNumber: "TN2693",
        fromArrival: "03:30 pm",
        toArrival: "06:30 am",
        stops: [
          'Dharmapuri',
          'Sivaganga',
          'Kanchipuram',
          'Vellore',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Karur",
        busNumber: "TN1048",
        fromArrival: "09:00 am",
        toArrival: "09:30 pm",
        stops: ['Dharmapuri', 'Tiruppur', 'Ranipet', 'Ariyalur', 'Karur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Krishnagiri",
        busNumber: "TN4417",
        fromArrival: "07:45 pm",
        toArrival: "08:45 am",
        stops: [
          'Dharmapuri',
          'Tiruvarur',
          'Ariyalur',
          'Nagapattinam',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Madurai",
        busNumber: "TN1510",
        fromArrival: "08:15 pm",
        toArrival: "02:30 pm",
        stops: [
          'Dharmapuri',
          'Coimbatore',
          'Krishnagiri',
          'Mayiladuthurai',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Nagapattinam",
        busNumber: "TN9185",
        fromArrival: "08:30 am",
        toArrival: "08:45 pm",
        stops: [
          'Dharmapuri',
          'Tirupathur',
          'Theni',
          'Ramanathapuram',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Namakkal",
        busNumber: "TN6513",
        fromArrival: "09:45 pm",
        toArrival: "09:45 am",
        stops: [
          'Dharmapuri',
          'Mayiladuthurai',
          'Chennai',
          'Tirupathur',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Nilgiris",
        busNumber: "TN1589",
        fromArrival: "06:30 am",
        toArrival: "06:30 am",
        stops: [
          'Dharmapuri',
          'Virudhunagar',
          'Tiruchirappalli',
          'Chennai',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Perambalur",
        busNumber: "TN608",
        fromArrival: "08:45 am",
        toArrival: "06:15 pm",
        stops: ['Dharmapuri', 'Coimbatore', 'Theni', 'Tiruvarur', 'Perambalur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Pudukkottai",
        busNumber: "TN8764",
        fromArrival: "03:15 pm",
        toArrival: "05:45 am",
        stops: ['Dharmapuri', 'Thoothukudi', 'Karur', 'Vellore', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Ramanathapuram",
        busNumber: "TN6762",
        fromArrival: "04:00 pm",
        toArrival: "02:30 pm",
        stops: [
          'Dharmapuri',
          'Cuddalore',
          'Tiruchirappalli',
          'Nagapattinam',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Ranipet",
        busNumber: "TN5578",
        fromArrival: "09:30 am",
        toArrival: "06:00 am",
        stops: ['Dharmapuri', 'Madurai', 'Tiruppur', 'Tiruvarur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Salem",
        busNumber: "TN3814",
        fromArrival: "08:30 pm",
        toArrival: "01:45 pm",
        stops: ['Dharmapuri', 'Theni', 'Tiruvarur', 'Ariyalur', 'Salem'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Sivaganga",
        busNumber: "TN2127",
        fromArrival: "08:30 am",
        toArrival: "05:30 am",
        stops: [
          'Dharmapuri',
          'Kanyakumari',
          'Thanjavur',
          'Kallakurichi',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tenkasi",
        busNumber: "TN4557",
        fromArrival: "03:00 pm",
        toArrival: "06:00 am",
        stops: [
          'Dharmapuri',
          'Tiruppur',
          'Tiruchirappalli',
          'Kanyakumari',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Thanjavur",
        busNumber: "TN8643",
        fromArrival: "09:00 am",
        toArrival: "05:15 pm",
        stops: ['Dharmapuri', 'Salem', 'Virudhunagar', 'Erode', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Theni",
        busNumber: "TN3898",
        fromArrival: "10:15 pm",
        toArrival: "10:15 am",
        stops: [
          'Dharmapuri',
          'Tenkasi',
          'Tirupathur',
          'Tiruvannamalai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Thoothukudi",
        busNumber: "TN3719",
        fromArrival: "05:45 pm",
        toArrival: "09:45 am",
        stops: [
          'Dharmapuri',
          'Coimbatore',
          'Pudukkottai',
          'Viluppuram',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tiruchirappalli",
        busNumber: "TN451",
        fromArrival: "08:00 am",
        toArrival: "05:30 pm",
        stops: [
          'Dharmapuri',
          'Tiruppur',
          'Erode',
          'Tiruvannamalai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tirunelveli",
        busNumber: "TN5971",
        fromArrival: "03:15 pm",
        toArrival: "02:45 pm",
        stops: [
          'Dharmapuri',
          'Pudukkottai',
          'Sivaganga',
          'Vellore',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tirupathur",
        busNumber: "TN3087",
        fromArrival: "02:45 pm",
        toArrival: "08:45 am",
        stops: [
          'Dharmapuri',
          'Viluppuram',
          'Tiruvannamalai',
          'Kallakurichi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tiruppur",
        busNumber: "TN5211",
        fromArrival: "09:00 am",
        toArrival: "12:45 pm",
        stops: ['Dharmapuri', 'Thanjavur', 'Ariyalur', 'Namakkal', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tiruvallur",
        busNumber: "TN989",
        fromArrival: "06:15 am",
        toArrival: "09:45 am",
        stops: [
          'Dharmapuri',
          'Tenkasi',
          'Tirupathur',
          'Coimbatore',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tiruvannamalai",
        busNumber: "TN783",
        fromArrival: "01:00 pm",
        toArrival: "02:15 pm",
        stops: [
          'Dharmapuri',
          'Salem',
          'Krishnagiri',
          'Mayiladuthurai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Tiruvarur",
        busNumber: "TN8843",
        fromArrival: "09:00 pm",
        toArrival: "07:45 pm",
        stops: ['Dharmapuri', 'Ranipet', 'Tirupathur', 'Tiruppur', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Vellore",
        busNumber: "TN5727",
        fromArrival: "08:45 pm",
        toArrival: "04:45 pm",
        stops: [
          'Dharmapuri',
          'Tiruppur',
          'Ramanathapuram',
          'Kallakurichi',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Viluppuram",
        busNumber: "TN3467",
        fromArrival: "08:15 pm",
        toArrival: "08:00 pm",
        stops: ['Dharmapuri', 'Theni', 'Madurai', 'Nagapattinam', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Virudhunagar",
        busNumber: "TN3091",
        fromArrival: "05:15 pm",
        toArrival: "07:15 am",
        stops: [
          'Dharmapuri',
          'Dindigul',
          'Cuddalore',
          'Krishnagiri',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Dharmapuri",
        toCity: "Mayiladuthurai",
        busNumber: "TN5037",
        fromArrival: "09:15 pm",
        toArrival: "08:30 pm",
        stops: [
          'Dharmapuri',
          'Dindigul',
          'Ariyalur',
          'Tirunelveli',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Ariyalur",
        busNumber: "TN9176",
        fromArrival: "10:00 pm",
        toArrival: "09:30 pm",
        stops: [
          'Dindigul',
          'Ramanathapuram',
          'Viluppuram',
          'Nagapattinam',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Chengalpattu",
        busNumber: "TN1137",
        fromArrival: "03:45 pm",
        toArrival: "05:30 am",
        stops: ['Dindigul', 'Pudukkottai', 'Ranipet', 'Karur', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Chennai",
        busNumber: "TN7388",
        fromArrival: "01:00 pm",
        toArrival: "09:00 am",
        stops: ['Dindigul', 'Vellore', 'Viluppuram', 'Theni', 'Chennai'],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Coimbatore",
        busNumber: "TN7549",
        fromArrival: "08:30 am",
        toArrival: "03:00 pm",
        stops: [
          'Dindigul',
          'Virudhunagar',
          'Tirunelveli',
          'Nilgiris',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Cuddalore",
        busNumber: "TN7286",
        fromArrival: "03:15 pm",
        toArrival: "08:30 pm",
        stops: [
          'Dindigul',
          'Tirunelveli',
          'Ranipet',
          'Perambalur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Dharmapuri",
        busNumber: "TN9757",
        fromArrival: "12:45 pm",
        toArrival: "09:30 pm",
        stops: [
          'Dindigul',
          'Chengalpattu',
          'Tenkasi',
          'Krishnagiri',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Erode",
        busNumber: "TN2695",
        fromArrival: "05:00 am",
        toArrival: "09:30 pm",
        stops: [
          'Dindigul',
          'Perambalur',
          'Tiruchirappalli',
          'Nilgiris',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Kallakurichi",
        busNumber: "TN1867",
        fromArrival: "07:00 am",
        toArrival: "02:15 pm",
        stops: [
          'Dindigul',
          'Namakkal',
          'Viluppuram',
          'Ariyalur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Kanchipuram",
        busNumber: "TN949",
        fromArrival: "04:45 pm",
        toArrival: "09:45 pm",
        stops: [
          'Dindigul',
          'Sivaganga',
          'Tiruvarur',
          'Thanjavur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Kanyakumari",
        busNumber: "TN4756",
        fromArrival: "09:00 pm",
        toArrival: "09:00 am",
        stops: [
          'Dindigul',
          'Cuddalore',
          'Thoothukudi',
          'Tiruchirappalli',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Karur",
        busNumber: "TN2346",
        fromArrival: "05:45 pm",
        toArrival: "03:30 pm",
        stops: ['Dindigul', 'Ranipet', 'Theni', 'Tiruppur', 'Karur'],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Krishnagiri",
        busNumber: "TN7135",
        fromArrival: "09:45 pm",
        toArrival: "02:00 pm",
        stops: [
          'Dindigul',
          'Nagapattinam',
          'Thanjavur',
          'Mayiladuthurai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Madurai",
        busNumber: "TN967",
        fromArrival: "06:30 pm",
        toArrival: "11:00 am",
        stops: ['Dindigul', 'Krishnagiri', 'Viluppuram', 'Vellore', 'Madurai'],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Nagapattinam",
        busNumber: "TN1455",
        fromArrival: "09:00 am",
        toArrival: "09:30 am",
        stops: [
          'Dindigul',
          'Pudukkottai',
          'Kanchipuram',
          'Ramanathapuram',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Namakkal",
        busNumber: "TN1887",
        fromArrival: "11:30 am",
        toArrival: "11:30 am",
        stops: [
          'Dindigul',
          'Tiruvallur',
          'Mayiladuthurai',
          'Chengalpattu',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Nilgiris",
        busNumber: "TN1454",
        fromArrival: "11:15 am",
        toArrival: "07:00 am",
        stops: [
          'Dindigul',
          'Tiruvallur',
          'Pudukkottai',
          'Thoothukudi',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Perambalur",
        busNumber: "TN2688",
        fromArrival: "09:15 pm",
        toArrival: "10:45 pm",
        stops: [
          'Dindigul',
          'Namakkal',
          'Thanjavur',
          'Coimbatore',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Pudukkottai",
        busNumber: "TN447",
        fromArrival: "10:00 am",
        toArrival: "06:30 pm",
        stops: [
          'Dindigul',
          'Nagapattinam',
          'Nilgiris',
          'Vellore',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Ramanathapuram",
        busNumber: "TN238",
        fromArrival: "04:45 pm",
        toArrival: "10:00 am",
        stops: [
          'Dindigul',
          'Madurai',
          'Erode',
          'Virudhunagar',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Ranipet",
        busNumber: "TN8814",
        fromArrival: "09:00 pm",
        toArrival: "09:00 am",
        stops: [
          'Dindigul',
          'Tiruchirappalli',
          'Chengalpattu',
          'Pudukkottai',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Salem",
        busNumber: "TN9628",
        fromArrival: "05:30 pm",
        toArrival: "12:45 pm",
        stops: [
          'Dindigul',
          'Namakkal',
          'Ramanathapuram',
          'Kallakurichi',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Sivaganga",
        busNumber: "TN287",
        fromArrival: "07:30 pm",
        toArrival: "03:15 pm",
        stops: [
          'Dindigul',
          'Pudukkottai',
          'Dharmapuri',
          'Chengalpattu',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tenkasi",
        busNumber: "TN9046",
        fromArrival: "12:15 pm",
        toArrival: "08:45 pm",
        stops: [
          'Dindigul',
          'Krishnagiri',
          'Pudukkottai',
          'Kanyakumari',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Thanjavur",
        busNumber: "TN2539",
        fromArrival: "03:45 pm",
        toArrival: "03:45 pm",
        stops: ['Dindigul', 'Cuddalore', 'Erode', 'Ariyalur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Theni",
        busNumber: "TN6731",
        fromArrival: "04:00 pm",
        toArrival: "12:00 pm",
        stops: [
          'Dindigul',
          'Kanyakumari',
          'Kallakurichi',
          'Cuddalore',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Thoothukudi",
        busNumber: "TN6725",
        fromArrival: "07:45 am",
        toArrival: "10:30 am",
        stops: [
          'Dindigul',
          'Madurai',
          'Coimbatore',
          'Nagapattinam',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tiruchirappalli",
        busNumber: "TN7161",
        fromArrival: "06:00 pm",
        toArrival: "05:45 am",
        stops: [
          'Dindigul',
          'Tiruvarur',
          'Kanyakumari',
          'Tiruppur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tirunelveli",
        busNumber: "TN2642",
        fromArrival: "10:00 pm",
        toArrival: "03:15 pm",
        stops: [
          'Dindigul',
          'Tiruchirappalli',
          'Namakkal',
          'Theni',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tirupathur",
        busNumber: "TN7365",
        fromArrival: "08:15 pm",
        toArrival: "07:15 am",
        stops: [
          'Dindigul',
          'Madurai',
          'Tiruchirappalli',
          'Coimbatore',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tiruppur",
        busNumber: "TN9316",
        fromArrival: "10:00 pm",
        toArrival: "09:45 am",
        stops: [
          'Dindigul',
          'Nagapattinam',
          'Tenkasi',
          'Tirunelveli',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tiruvallur",
        busNumber: "TN9858",
        fromArrival: "09:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Dindigul',
          'Chengalpattu',
          'Ariyalur',
          'Cuddalore',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tiruvannamalai",
        busNumber: "TN6434",
        fromArrival: "06:30 pm",
        toArrival: "05:30 pm",
        stops: [
          'Dindigul',
          'Chengalpattu',
          'Madurai',
          'Krishnagiri',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Tiruvarur",
        busNumber: "TN4211",
        fromArrival: "12:30 pm",
        toArrival: "05:00 pm",
        stops: [
          'Dindigul',
          'Perambalur',
          'Tiruchirappalli',
          'Vellore',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Vellore",
        busNumber: "TN4586",
        fromArrival: "07:30 am",
        toArrival: "11:00 am",
        stops: [
          'Dindigul',
          'Tiruppur',
          'Tiruvannamalai',
          'Thoothukudi',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Viluppuram",
        busNumber: "TN3767",
        fromArrival: "12:00 pm",
        toArrival: "12:15 pm",
        stops: [
          'Dindigul',
          'Namakkal',
          'Krishnagiri',
          'Pudukkottai',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Virudhunagar",
        busNumber: "TN5240",
        fromArrival: "09:45 am",
        toArrival: "07:15 pm",
        stops: [
          'Dindigul',
          'Tiruppur',
          'Ramanathapuram',
          'Tiruvannamalai',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Dindigul",
        toCity: "Mayiladuthurai",
        busNumber: "TN2180",
        fromArrival: "09:00 pm",
        toArrival: "10:15 am",
        stops: [
          'Dindigul',
          'Tiruchirappalli',
          'Salem',
          'Ariyalur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Ariyalur",
        busNumber: "TN6674",
        fromArrival: "05:45 am",
        toArrival: "05:30 am",
        stops: ['Erode', 'Tirunelveli', 'Dharmapuri', 'Sivaganga', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Chengalpattu",
        busNumber: "TN138",
        fromArrival: "02:15 pm",
        toArrival: "12:45 pm",
        stops: [
          'Erode',
          'Ariyalur',
          'Tiruppur',
          'Nagapattinam',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Chennai",
        busNumber: "TN9982",
        fromArrival: "06:45 pm",
        toArrival: "12:45 pm",
        stops: ['Erode', 'Cuddalore', 'Perambalur', 'Ariyalur', 'Chennai'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Coimbatore",
        busNumber: "TN6513",
        fromArrival: "12:45 pm",
        toArrival: "09:30 am",
        stops: [
          'Erode',
          'Krishnagiri',
          'Tirupathur',
          'Mayiladuthurai',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Cuddalore",
        busNumber: "TN8798",
        fromArrival: "03:15 pm",
        toArrival: "06:00 pm",
        stops: ['Erode', 'Tiruppur', 'Krishnagiri', 'Nilgiris', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Dharmapuri",
        busNumber: "TN8611",
        fromArrival: "08:15 am",
        toArrival: "04:45 pm",
        stops: ['Erode', 'Karur', 'Cuddalore', 'Krishnagiri', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Dindigul",
        busNumber: "TN8440",
        fromArrival: "08:00 pm",
        toArrival: "05:00 pm",
        stops: ['Erode', 'Theni', 'Salem', 'Nilgiris', 'Dindigul'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Kallakurichi",
        busNumber: "TN5735",
        fromArrival: "01:15 pm",
        toArrival: "08:45 am",
        stops: [
          'Erode',
          'Mayiladuthurai',
          'Vellore',
          'Ranipet',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Kanchipuram",
        busNumber: "TN8959",
        fromArrival: "08:15 am",
        toArrival: "11:00 am",
        stops: [
          'Erode',
          'Perambalur',
          'Mayiladuthurai',
          'Vellore',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Kanyakumari",
        busNumber: "TN9623",
        fromArrival: "11:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Erode',
          'Pudukkottai',
          'Tirupathur',
          'Tiruvannamalai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Karur",
        busNumber: "TN5591",
        fromArrival: "02:30 pm",
        toArrival: "11:00 am",
        stops: ['Erode', 'Vellore', 'Kanyakumari', 'Tirupathur', 'Karur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Krishnagiri",
        busNumber: "TN1230",
        fromArrival: "08:45 pm",
        toArrival: "08:15 am",
        stops: ['Erode', 'Ariyalur', 'Chennai', 'Salem', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Madurai",
        busNumber: "TN6520",
        fromArrival: "08:00 am",
        toArrival: "06:15 am",
        stops: ['Erode', 'Coimbatore', 'Karur', 'Namakkal', 'Madurai'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Nagapattinam",
        busNumber: "TN4593",
        fromArrival: "01:15 pm",
        toArrival: "05:45 pm",
        stops: ['Erode', 'Sivaganga', 'Madurai', 'Chennai', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Namakkal",
        busNumber: "TN6571",
        fromArrival: "11:15 am",
        toArrival: "05:00 am",
        stops: [
          'Erode',
          'Nagapattinam',
          'Tiruvannamalai',
          'Pudukkottai',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Nilgiris",
        busNumber: "TN8289",
        fromArrival: "08:30 am",
        toArrival: "03:00 pm",
        stops: ['Erode', 'Tiruvallur', 'Coimbatore', 'Karur', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Perambalur",
        busNumber: "TN6958",
        fromArrival: "03:30 pm",
        toArrival: "10:15 am",
        stops: ['Erode', 'Chengalpattu', 'Salem', 'Nilgiris', 'Perambalur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Pudukkottai",
        busNumber: "TN7177",
        fromArrival: "07:30 pm",
        toArrival: "03:45 pm",
        stops: [
          'Erode',
          'Thanjavur',
          'Tiruvarur',
          'Virudhunagar',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Ramanathapuram",
        busNumber: "TN6084",
        fromArrival: "12:45 pm",
        toArrival: "08:15 pm",
        stops: ['Erode', 'Chennai', 'Perambalur', 'Madurai', 'Ramanathapuram'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Ranipet",
        busNumber: "TN5058",
        fromArrival: "05:00 am",
        toArrival: "08:30 am",
        stops: [
          'Erode',
          'Tirunelveli',
          'Tirupathur',
          'Nagapattinam',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Salem",
        busNumber: "TN1959",
        fromArrival: "10:30 am",
        toArrival: "12:15 pm",
        stops: ['Erode', 'Dharmapuri', 'Tiruvarur', 'Kanchipuram', 'Salem'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Sivaganga",
        busNumber: "TN8062",
        fromArrival: "05:45 pm",
        toArrival: "09:15 pm",
        stops: ['Erode', 'Tenkasi', 'Nagapattinam', 'Pudukkottai', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tenkasi",
        busNumber: "TN2832",
        fromArrival: "06:15 pm",
        toArrival: "10:15 pm",
        stops: ['Erode', 'Tirunelveli', 'Ranipet', 'Dharmapuri', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Thanjavur",
        busNumber: "TN3912",
        fromArrival: "05:15 am",
        toArrival: "08:30 pm",
        stops: ['Erode', 'Ariyalur', 'Virudhunagar', 'Tiruvarur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Theni",
        busNumber: "TN2326",
        fromArrival: "05:45 am",
        toArrival: "08:45 am",
        stops: ['Erode', 'Viluppuram', 'Sivaganga', 'Vellore', 'Theni'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Thoothukudi",
        busNumber: "TN5587",
        fromArrival: "02:00 pm",
        toArrival: "06:30 am",
        stops: [
          'Erode',
          'Theni',
          'Tiruchirappalli',
          'Perambalur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tiruchirappalli",
        busNumber: "TN5782",
        fromArrival: "01:15 pm",
        toArrival: "05:45 pm",
        stops: [
          'Erode',
          'Thanjavur',
          'Ramanathapuram',
          'Sivaganga',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tirunelveli",
        busNumber: "TN6521",
        fromArrival: "02:30 pm",
        toArrival: "04:45 pm",
        stops: ['Erode', 'Thoothukudi', 'Theni', 'Perambalur', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tirupathur",
        busNumber: "TN1166",
        fromArrival: "08:45 am",
        toArrival: "05:45 am",
        stops: ['Erode', 'Cuddalore', 'Ranipet', 'Nilgiris', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tiruppur",
        busNumber: "TN8571",
        fromArrival: "03:30 pm",
        toArrival: "10:30 pm",
        stops: ['Erode', 'Ramanathapuram', 'Thanjavur', 'Theni', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tiruvallur",
        busNumber: "TN6374",
        fromArrival: "11:30 am",
        toArrival: "05:00 pm",
        stops: [
          'Erode',
          'Kanyakumari',
          'Sivaganga',
          'Coimbatore',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tiruvannamalai",
        busNumber: "TN3817",
        fromArrival: "06:00 am",
        toArrival: "02:00 pm",
        stops: [
          'Erode',
          'Madurai',
          'Vellore',
          'Chengalpattu',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Tiruvarur",
        busNumber: "TN4283",
        fromArrival: "11:15 am",
        toArrival: "06:30 am",
        stops: ['Erode', 'Tiruvallur', 'Tenkasi', 'Tirunelveli', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Vellore",
        busNumber: "TN4294",
        fromArrival: "11:00 am",
        toArrival: "10:45 am",
        stops: ['Erode', 'Theni', 'Virudhunagar', 'Ramanathapuram', 'Vellore'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Viluppuram",
        busNumber: "TN6462",
        fromArrival: "04:00 pm",
        toArrival: "07:00 am",
        stops: ['Erode', 'Tiruvannamalai', 'Tiruvallur', 'Theni', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Virudhunagar",
        busNumber: "TN8018",
        fromArrival: "06:15 am",
        toArrival: "07:30 am",
        stops: [
          'Erode',
          'Tiruvannamalai',
          'Kanchipuram',
          'Ranipet',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Erode",
        toCity: "Mayiladuthurai",
        busNumber: "TN7038",
        fromArrival: "06:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Erode',
          'Namakkal',
          'Tirupathur',
          'Tiruchirappalli',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Ariyalur",
        busNumber: "TN3453",
        fromArrival: "06:30 am",
        toArrival: "07:00 pm",
        stops: [
          'Kallakurichi',
          'Krishnagiri',
          'Virudhunagar',
          'Chennai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Chengalpattu",
        busNumber: "TN5760",
        fromArrival: "06:45 pm",
        toArrival: "09:15 pm",
        stops: ['Kallakurichi', 'Chennai', 'Ranipet', 'Erode', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Chennai",
        busNumber: "TN4465",
        fromArrival: "10:45 pm",
        toArrival: "12:45 pm",
        stops: [
          'Kallakurichi',
          'Kanchipuram',
          'Tiruvallur',
          'Tenkasi',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Coimbatore",
        busNumber: "TN6812",
        fromArrival: "06:15 pm",
        toArrival: "05:30 am",
        stops: [
          'Kallakurichi',
          'Tiruvarur',
          'Tiruppur',
          'Tirupathur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Cuddalore",
        busNumber: "TN1767",
        fromArrival: "09:15 am",
        toArrival: "03:30 pm",
        stops: [
          'Kallakurichi',
          'Viluppuram',
          'Madurai',
          'Tiruchirappalli',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Dharmapuri",
        busNumber: "TN2856",
        fromArrival: "06:45 pm",
        toArrival: "03:45 pm",
        stops: [
          'Kallakurichi',
          'Krishnagiri',
          'Virudhunagar',
          'Pudukkottai',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Dindigul",
        busNumber: "TN3485",
        fromArrival: "08:00 am",
        toArrival: "11:45 am",
        stops: [
          'Kallakurichi',
          'Chennai',
          'Viluppuram',
          'Tiruvarur',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Erode",
        busNumber: "TN4144",
        fromArrival: "03:45 pm",
        toArrival: "08:15 am",
        stops: [
          'Kallakurichi',
          'Perambalur',
          'Tirupathur',
          'Krishnagiri',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Kanchipuram",
        busNumber: "TN9512",
        fromArrival: "06:30 pm",
        toArrival: "05:00 pm",
        stops: [
          'Kallakurichi',
          'Salem',
          'Mayiladuthurai',
          'Tiruvallur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Kanyakumari",
        busNumber: "TN8260",
        fromArrival: "01:30 pm",
        toArrival: "07:15 am",
        stops: [
          'Kallakurichi',
          'Tirupathur',
          'Perambalur',
          'Erode',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Karur",
        busNumber: "TN3425",
        fromArrival: "07:45 pm",
        toArrival: "02:30 pm",
        stops: ['Kallakurichi', 'Ranipet', 'Cuddalore', 'Coimbatore', 'Karur'],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Krishnagiri",
        busNumber: "TN5914",
        fromArrival: "09:00 am",
        toArrival: "01:30 pm",
        stops: ['Kallakurichi', 'Tenkasi', 'Vellore', 'Ranipet', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Madurai",
        busNumber: "TN1744",
        fromArrival: "08:30 pm",
        toArrival: "10:45 am",
        stops: [
          'Kallakurichi',
          'Sivaganga',
          'Namakkal',
          'Virudhunagar',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Nagapattinam",
        busNumber: "TN111",
        fromArrival: "05:00 am",
        toArrival: "04:00 pm",
        stops: [
          'Kallakurichi',
          'Tiruchirappalli',
          'Thoothukudi',
          'Tiruvannamalai',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Namakkal",
        busNumber: "TN9182",
        fromArrival: "03:45 pm",
        toArrival: "06:45 pm",
        stops: [
          'Kallakurichi',
          'Salem',
          'Nagapattinam',
          'Thoothukudi',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Nilgiris",
        busNumber: "TN9247",
        fromArrival: "12:30 pm",
        toArrival: "04:45 pm",
        stops: [
          'Kallakurichi',
          'Viluppuram',
          'Kanyakumari',
          'Tiruvallur',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Perambalur",
        busNumber: "TN2838",
        fromArrival: "02:30 pm",
        toArrival: "08:15 pm",
        stops: [
          'Kallakurichi',
          'Kanyakumari',
          'Tiruvannamalai',
          'Tiruvallur',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Pudukkottai",
        busNumber: "TN5877",
        fromArrival: "02:15 pm",
        toArrival: "02:30 pm",
        stops: [
          'Kallakurichi',
          'Ranipet',
          'Sivaganga',
          'Chengalpattu',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Ramanathapuram",
        busNumber: "TN2428",
        fromArrival: "05:00 pm",
        toArrival: "06:15 am",
        stops: [
          'Kallakurichi',
          'Tirupathur',
          'Tiruvannamalai',
          'Tiruchirappalli',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Ranipet",
        busNumber: "TN6815",
        fromArrival: "11:00 am",
        toArrival: "04:00 pm",
        stops: [
          'Kallakurichi',
          'Virudhunagar',
          'Kanchipuram',
          'Tiruvarur',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Salem",
        busNumber: "TN3449",
        fromArrival: "02:45 pm",
        toArrival: "09:45 pm",
        stops: [
          'Kallakurichi',
          'Tiruppur',
          'Tiruvannamalai',
          'Dindigul',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Sivaganga",
        busNumber: "TN3075",
        fromArrival: "07:15 pm",
        toArrival: "05:00 am",
        stops: [
          'Kallakurichi',
          'Thanjavur',
          'Dindigul',
          'Tirunelveli',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tenkasi",
        busNumber: "TN3566",
        fromArrival: "06:45 am",
        toArrival: "07:45 pm",
        stops: [
          'Kallakurichi',
          'Tiruvallur',
          'Dindigul',
          'Chengalpattu',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Thanjavur",
        busNumber: "TN7482",
        fromArrival: "02:30 pm",
        toArrival: "03:00 pm",
        stops: [
          'Kallakurichi',
          'Sivaganga',
          'Tirupathur',
          'Pudukkottai',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Theni",
        busNumber: "TN7144",
        fromArrival: "06:15 am",
        toArrival: "08:00 pm",
        stops: [
          'Kallakurichi',
          'Chengalpattu',
          'Thoothukudi',
          'Thanjavur',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Thoothukudi",
        busNumber: "TN5252",
        fromArrival: "01:00 pm",
        toArrival: "02:30 pm",
        stops: [
          'Kallakurichi',
          'Krishnagiri',
          'Pudukkottai',
          'Ariyalur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tiruchirappalli",
        busNumber: "TN1375",
        fromArrival: "03:15 pm",
        toArrival: "11:45 am",
        stops: [
          'Kallakurichi',
          'Ariyalur',
          'Kanyakumari',
          'Namakkal',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tirunelveli",
        busNumber: "TN8540",
        fromArrival: "09:45 pm",
        toArrival: "07:00 pm",
        stops: [
          'Kallakurichi',
          'Kanchipuram',
          'Virudhunagar',
          'Cuddalore',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tirupathur",
        busNumber: "TN2327",
        fromArrival: "07:00 am",
        toArrival: "01:15 pm",
        stops: [
          'Kallakurichi',
          'Thanjavur',
          'Dindigul',
          'Kanyakumari',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tiruppur",
        busNumber: "TN5158",
        fromArrival: "10:15 pm",
        toArrival: "05:15 pm",
        stops: [
          'Kallakurichi',
          'Mayiladuthurai',
          'Thoothukudi',
          'Kanyakumari',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tiruvallur",
        busNumber: "TN7358",
        fromArrival: "01:45 pm",
        toArrival: "06:15 am",
        stops: [
          'Kallakurichi',
          'Dindigul',
          'Ariyalur',
          'Tiruvarur',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tiruvannamalai",
        busNumber: "TN6653",
        fromArrival: "05:15 pm",
        toArrival: "10:00 am",
        stops: [
          'Kallakurichi',
          'Tiruchirappalli',
          'Nagapattinam',
          'Theni',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Tiruvarur",
        busNumber: "TN1628",
        fromArrival: "05:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Kallakurichi',
          'Tirupathur',
          'Namakkal',
          'Kanchipuram',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Vellore",
        busNumber: "TN2388",
        fromArrival: "06:30 am",
        toArrival: "12:15 pm",
        stops: ['Kallakurichi', 'Tirupathur', 'Erode', 'Ariyalur', 'Vellore'],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Viluppuram",
        busNumber: "TN3886",
        fromArrival: "08:45 am",
        toArrival: "08:45 pm",
        stops: [
          'Kallakurichi',
          'Cuddalore',
          'Ariyalur',
          'Ramanathapuram',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Virudhunagar",
        busNumber: "TN7140",
        fromArrival: "09:30 am",
        toArrival: "07:30 am",
        stops: [
          'Kallakurichi',
          'Mayiladuthurai',
          'Karur',
          'Tenkasi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Kallakurichi",
        toCity: "Mayiladuthurai",
        busNumber: "TN4685",
        fromArrival: "04:15 pm",
        toArrival: "08:00 am",
        stops: [
          'Kallakurichi',
          'Thanjavur',
          'Virudhunagar',
          'Tiruvarur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Ariyalur",
        busNumber: "TN7382",
        fromArrival: "07:30 am",
        toArrival: "08:00 am",
        stops: ['Kanchipuram', 'Vellore', 'Viluppuram', 'Namakkal', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Chengalpattu",
        busNumber: "TN712",
        fromArrival: "08:15 am",
        toArrival: "04:30 pm",
        stops: [
          'Kanchipuram',
          'Perambalur',
          'Tiruvarur',
          'Viluppuram',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Chennai",
        busNumber: "TN339",
        fromArrival: "07:15 am",
        toArrival: "10:45 am",
        stops: [
          'Kanchipuram',
          'Ariyalur',
          'Kallakurichi',
          'Viluppuram',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Coimbatore",
        busNumber: "TN2091",
        fromArrival: "01:00 pm",
        toArrival: "05:00 pm",
        stops: [
          'Kanchipuram',
          'Mayiladuthurai',
          'Dindigul',
          'Dharmapuri',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Cuddalore",
        busNumber: "TN8867",
        fromArrival: "01:15 pm",
        toArrival: "07:30 pm",
        stops: [
          'Kanchipuram',
          'Perambalur',
          'Pudukkottai',
          'Thanjavur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Dharmapuri",
        busNumber: "TN9949",
        fromArrival: "07:00 am",
        toArrival: "08:45 am",
        stops: ['Kanchipuram', 'Tiruppur', 'Nilgiris', 'Erode', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Dindigul",
        busNumber: "TN777",
        fromArrival: "09:15 pm",
        toArrival: "01:30 pm",
        stops: [
          'Kanchipuram',
          'Cuddalore',
          'Pudukkottai',
          'Tiruppur',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Erode",
        busNumber: "TN1610",
        fromArrival: "03:00 pm",
        toArrival: "06:00 am",
        stops: [
          'Kanchipuram',
          'Thanjavur',
          'Ranipet',
          'Tiruvannamalai',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Kallakurichi",
        busNumber: "TN5133",
        fromArrival: "06:45 am",
        toArrival: "04:15 pm",
        stops: [
          'Kanchipuram',
          'Ramanathapuram',
          'Tiruchirappalli',
          'Erode',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Kanyakumari",
        busNumber: "TN9680",
        fromArrival: "08:30 am",
        toArrival: "10:15 pm",
        stops: [
          'Kanchipuram',
          'Tiruvallur',
          'Kallakurichi',
          'Chengalpattu',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Karur",
        busNumber: "TN5495",
        fromArrival: "02:00 pm",
        toArrival: "08:00 pm",
        stops: ['Kanchipuram', 'Tenkasi', 'Chennai', 'Tiruppur', 'Karur'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Krishnagiri",
        busNumber: "TN3321",
        fromArrival: "07:00 am",
        toArrival: "09:00 pm",
        stops: [
          'Kanchipuram',
          'Tirunelveli',
          'Kallakurichi',
          'Nagapattinam',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Madurai",
        busNumber: "TN8541",
        fromArrival: "05:15 am",
        toArrival: "09:30 am",
        stops: [
          'Kanchipuram',
          'Nagapattinam',
          'Virudhunagar',
          'Cuddalore',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Nagapattinam",
        busNumber: "TN6280",
        fromArrival: "04:00 pm",
        toArrival: "10:15 pm",
        stops: [
          'Kanchipuram',
          'Tirunelveli',
          'Namakkal',
          'Tiruvallur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Namakkal",
        busNumber: "TN123",
        fromArrival: "08:00 pm",
        toArrival: "04:30 pm",
        stops: ['Kanchipuram', 'Cuddalore', 'Nilgiris', 'Salem', 'Namakkal'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Nilgiris",
        busNumber: "TN9028",
        fromArrival: "08:30 pm",
        toArrival: "05:00 pm",
        stops: ['Kanchipuram', 'Tirupathur', 'Salem', 'Chennai', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Perambalur",
        busNumber: "TN1963",
        fromArrival: "07:00 pm",
        toArrival: "07:45 am",
        stops: [
          'Kanchipuram',
          'Tiruvallur',
          'Tenkasi',
          'Chengalpattu',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Pudukkottai",
        busNumber: "TN9590",
        fromArrival: "09:45 am",
        toArrival: "03:00 pm",
        stops: [
          'Kanchipuram',
          'Tenkasi',
          'Tiruvallur',
          'Thoothukudi',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Ramanathapuram",
        busNumber: "TN974",
        fromArrival: "06:30 pm",
        toArrival: "07:15 am",
        stops: [
          'Kanchipuram',
          'Tiruvannamalai',
          'Madurai',
          'Kanyakumari',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Ranipet",
        busNumber: "TN2266",
        fromArrival: "08:45 pm",
        toArrival: "11:00 am",
        stops: [
          'Kanchipuram',
          'Perambalur',
          'Ariyalur',
          'Viluppuram',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Salem",
        busNumber: "TN6040",
        fromArrival: "06:15 pm",
        toArrival: "08:30 pm",
        stops: ['Kanchipuram', 'Karur', 'Nilgiris', 'Krishnagiri', 'Salem'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Sivaganga",
        busNumber: "TN8559",
        fromArrival: "06:30 am",
        toArrival: "07:45 pm",
        stops: ['Kanchipuram', 'Chennai', 'Salem', 'Kallakurichi', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tenkasi",
        busNumber: "TN1642",
        fromArrival: "12:00 pm",
        toArrival: "10:45 pm",
        stops: ['Kanchipuram', 'Nagapattinam', 'Karur', 'Theni', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Thanjavur",
        busNumber: "TN1328",
        fromArrival: "05:30 am",
        toArrival: "03:15 pm",
        stops: [
          'Kanchipuram',
          'Ramanathapuram',
          'Chennai',
          'Karur',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Theni",
        busNumber: "TN8615",
        fromArrival: "08:30 pm",
        toArrival: "04:15 pm",
        stops: [
          'Kanchipuram',
          'Kanyakumari',
          'Tirupathur',
          'Dharmapuri',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Thoothukudi",
        busNumber: "TN8438",
        fromArrival: "12:30 pm",
        toArrival: "12:30 pm",
        stops: ['Kanchipuram', 'Nilgiris', 'Ariyalur', 'Salem', 'Thoothukudi'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tiruchirappalli",
        busNumber: "TN3384",
        fromArrival: "05:00 am",
        toArrival: "03:15 pm",
        stops: [
          'Kanchipuram',
          'Kanyakumari',
          'Tiruvannamalai',
          'Theni',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tirunelveli",
        busNumber: "TN467",
        fromArrival: "07:15 am",
        toArrival: "08:30 am",
        stops: ['Kanchipuram', 'Salem', 'Vellore', 'Ranipet', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tirupathur",
        busNumber: "TN8015",
        fromArrival: "06:45 am",
        toArrival: "12:15 pm",
        stops: [
          'Kanchipuram',
          'Erode',
          'Tiruvannamalai',
          'Tenkasi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tiruppur",
        busNumber: "TN4361",
        fromArrival: "09:00 am",
        toArrival: "05:30 am",
        stops: [
          'Kanchipuram',
          'Coimbatore',
          'Theni',
          'Virudhunagar',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tiruvallur",
        busNumber: "TN4670",
        fromArrival: "12:00 pm",
        toArrival: "10:00 am",
        stops: ['Kanchipuram', 'Erode', 'Namakkal', 'Dindigul', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tiruvannamalai",
        busNumber: "TN2264",
        fromArrival: "04:45 pm",
        toArrival: "05:00 pm",
        stops: [
          'Kanchipuram',
          'Tiruchirappalli',
          'Tirupathur',
          'Pudukkottai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Tiruvarur",
        busNumber: "TN6613",
        fromArrival: "07:30 pm",
        toArrival: "08:30 pm",
        stops: [
          'Kanchipuram',
          'Vellore',
          'Ariyalur',
          'Viluppuram',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Vellore",
        busNumber: "TN377",
        fromArrival: "02:30 pm",
        toArrival: "04:45 pm",
        stops: [
          'Kanchipuram',
          'Coimbatore',
          'Chennai',
          'Ramanathapuram',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Viluppuram",
        busNumber: "TN3123",
        fromArrival: "05:30 pm",
        toArrival: "01:15 pm",
        stops: [
          'Kanchipuram',
          'Kallakurichi',
          'Ranipet',
          'Coimbatore',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Virudhunagar",
        busNumber: "TN8281",
        fromArrival: "05:00 am",
        toArrival: "10:15 pm",
        stops: [
          'Kanchipuram',
          'Cuddalore',
          'Chengalpattu',
          'Thoothukudi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Kanchipuram",
        toCity: "Mayiladuthurai",
        busNumber: "TN6331",
        fromArrival: "08:15 am",
        toArrival: "04:15 pm",
        stops: [
          'Kanchipuram',
          'Karur',
          'Chengalpattu',
          'Tenkasi',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Ariyalur",
        busNumber: "TN671",
        fromArrival: "08:15 am",
        toArrival: "09:00 am",
        stops: [
          'Kanyakumari',
          'Tirunelveli',
          'Pudukkottai',
          'Mayiladuthurai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Chengalpattu",
        busNumber: "TN7214",
        fromArrival: "06:15 pm",
        toArrival: "10:15 pm",
        stops: [
          'Kanyakumari',
          'Tiruvannamalai',
          'Dharmapuri',
          'Perambalur',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Chennai",
        busNumber: "TN9018",
        fromArrival: "04:30 pm",
        toArrival: "10:30 pm",
        stops: ['Kanyakumari', 'Viluppuram', 'Karur', 'Kanchipuram', 'Chennai'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Coimbatore",
        busNumber: "TN1648",
        fromArrival: "11:15 am",
        toArrival: "01:45 pm",
        stops: ['Kanyakumari', 'Vellore', 'Madurai', 'Theni', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Cuddalore",
        busNumber: "TN8531",
        fromArrival: "07:45 pm",
        toArrival: "09:30 pm",
        stops: [
          'Kanyakumari',
          'Tiruvallur',
          'Nilgiris',
          'Kallakurichi',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Dharmapuri",
        busNumber: "TN6360",
        fromArrival: "10:00 pm",
        toArrival: "09:30 pm",
        stops: [
          'Kanyakumari',
          'Kanchipuram',
          'Pudukkottai',
          'Nilgiris',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Dindigul",
        busNumber: "TN5043",
        fromArrival: "07:00 am",
        toArrival: "03:45 pm",
        stops: ['Kanyakumari', 'Salem', 'Karur', 'Tirunelveli', 'Dindigul'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Erode",
        busNumber: "TN5615",
        fromArrival: "07:15 pm",
        toArrival: "11:45 am",
        stops: ['Kanyakumari', 'Tiruvallur', 'Ranipet', 'Kanchipuram', 'Erode'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Kallakurichi",
        busNumber: "TN4237",
        fromArrival: "12:15 pm",
        toArrival: "10:45 pm",
        stops: [
          'Kanyakumari',
          'Ramanathapuram',
          'Pudukkottai',
          'Viluppuram',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Kanchipuram",
        busNumber: "TN2449",
        fromArrival: "01:15 pm",
        toArrival: "05:15 am",
        stops: [
          'Kanyakumari',
          'Chengalpattu',
          'Ramanathapuram',
          'Nilgiris',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Karur",
        busNumber: "TN4458",
        fromArrival: "10:45 am",
        toArrival: "07:00 am",
        stops: [
          'Kanyakumari',
          'Dharmapuri',
          'Mayiladuthurai',
          'Salem',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Krishnagiri",
        busNumber: "TN693",
        fromArrival: "09:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Kanyakumari',
          'Madurai',
          'Mayiladuthurai',
          'Vellore',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Madurai",
        busNumber: "TN3045",
        fromArrival: "03:45 pm",
        toArrival: "03:45 pm",
        stops: ['Kanyakumari', 'Tirupathur', 'Salem', 'Theni', 'Madurai'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Nagapattinam",
        busNumber: "TN6139",
        fromArrival: "12:30 pm",
        toArrival: "05:15 am",
        stops: [
          'Kanyakumari',
          'Tiruvallur',
          'Mayiladuthurai',
          'Thoothukudi',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Namakkal",
        busNumber: "TN3021",
        fromArrival: "10:30 pm",
        toArrival: "08:45 pm",
        stops: [
          'Kanyakumari',
          'Nagapattinam',
          'Vellore',
          'Tiruchirappalli',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Nilgiris",
        busNumber: "TN1069",
        fromArrival: "03:00 pm",
        toArrival: "08:00 am",
        stops: [
          'Kanyakumari',
          'Vellore',
          'Perambalur',
          'Mayiladuthurai',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Perambalur",
        busNumber: "TN4028",
        fromArrival: "07:30 am",
        toArrival: "02:45 pm",
        stops: ['Kanyakumari', 'Vellore', 'Chennai', 'Theni', 'Perambalur'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Pudukkottai",
        busNumber: "TN5678",
        fromArrival: "12:00 pm",
        toArrival: "08:45 am",
        stops: [
          'Kanyakumari',
          'Dharmapuri',
          'Virudhunagar',
          'Ramanathapuram',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Ramanathapuram",
        busNumber: "TN9367",
        fromArrival: "11:15 am",
        toArrival: "05:45 pm",
        stops: [
          'Kanyakumari',
          'Tiruvarur',
          'Coimbatore',
          'Pudukkottai',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Ranipet",
        busNumber: "TN3390",
        fromArrival: "06:45 am",
        toArrival: "06:15 pm",
        stops: ['Kanyakumari', 'Salem', 'Vellore', 'Erode', 'Ranipet'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Salem",
        busNumber: "TN1597",
        fromArrival: "06:30 am",
        toArrival: "11:30 am",
        stops: [
          'Kanyakumari',
          'Kallakurichi',
          'Karur',
          'Mayiladuthurai',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Sivaganga",
        busNumber: "TN7212",
        fromArrival: "07:15 am",
        toArrival: "10:00 am",
        stops: [
          'Kanyakumari',
          'Salem',
          'Virudhunagar',
          'Perambalur',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tenkasi",
        busNumber: "TN9934",
        fromArrival: "05:00 pm",
        toArrival: "10:15 am",
        stops: ['Kanyakumari', 'Salem', 'Tirunelveli', 'Sivaganga', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Thanjavur",
        busNumber: "TN9383",
        fromArrival: "10:45 pm",
        toArrival: "03:00 pm",
        stops: [
          'Kanyakumari',
          'Tirunelveli',
          'Krishnagiri',
          'Erode',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Theni",
        busNumber: "TN9911",
        fromArrival: "10:45 am",
        toArrival: "06:00 am",
        stops: ['Kanyakumari', 'Madurai', 'Virudhunagar', 'Chennai', 'Theni'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Thoothukudi",
        busNumber: "TN5714",
        fromArrival: "07:45 pm",
        toArrival: "05:45 pm",
        stops: [
          'Kanyakumari',
          'Ramanathapuram',
          'Ariyalur',
          'Salem',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tiruchirappalli",
        busNumber: "TN6862",
        fromArrival: "07:00 am",
        toArrival: "10:45 pm",
        stops: [
          'Kanyakumari',
          'Cuddalore',
          'Viluppuram',
          'Sivaganga',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tirunelveli",
        busNumber: "TN7654",
        fromArrival: "11:30 am",
        toArrival: "08:15 pm",
        stops: [
          'Kanyakumari',
          'Mayiladuthurai',
          'Virudhunagar',
          'Tiruppur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tirupathur",
        busNumber: "TN7032",
        fromArrival: "06:30 pm",
        toArrival: "01:00 pm",
        stops: [
          'Kanyakumari',
          'Viluppuram',
          'Kallakurichi',
          'Nilgiris',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tiruppur",
        busNumber: "TN9954",
        fromArrival: "01:45 pm",
        toArrival: "03:45 pm",
        stops: ['Kanyakumari', 'Tirunelveli', 'Ranipet', 'Chennai', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tiruvallur",
        busNumber: "TN8477",
        fromArrival: "10:00 am",
        toArrival: "08:45 pm",
        stops: [
          'Kanyakumari',
          'Tenkasi',
          'Viluppuram',
          'Tirunelveli',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tiruvannamalai",
        busNumber: "TN1682",
        fromArrival: "07:15 am",
        toArrival: "01:15 pm",
        stops: [
          'Kanyakumari',
          'Krishnagiri',
          'Tiruppur',
          'Mayiladuthurai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Tiruvarur",
        busNumber: "TN3350",
        fromArrival: "10:15 am",
        toArrival: "10:00 am",
        stops: [
          'Kanyakumari',
          'Madurai',
          'Thoothukudi',
          'Sivaganga',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Vellore",
        busNumber: "TN6995",
        fromArrival: "07:45 pm",
        toArrival: "08:45 pm",
        stops: ['Kanyakumari', 'Erode', 'Ariyalur', 'Ranipet', 'Vellore'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Viluppuram",
        busNumber: "TN7658",
        fromArrival: "09:00 pm",
        toArrival: "07:45 am",
        stops: ['Kanyakumari', 'Vellore', 'Perambalur', 'Theni', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Virudhunagar",
        busNumber: "TN6616",
        fromArrival: "05:15 pm",
        toArrival: "04:45 pm",
        stops: [
          'Kanyakumari',
          'Tenkasi',
          'Sivaganga',
          'Kallakurichi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Kanyakumari",
        toCity: "Mayiladuthurai",
        busNumber: "TN2916",
        fromArrival: "04:15 pm",
        toArrival: "10:15 am",
        stops: [
          'Kanyakumari',
          'Thanjavur',
          'Tirupathur',
          'Tiruvallur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Ariyalur",
        busNumber: "TN4411",
        fromArrival: "07:30 am",
        toArrival: "04:45 pm",
        stops: ['Karur', 'Namakkal', 'Krishnagiri', 'Theni', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Chengalpattu",
        busNumber: "TN7750",
        fromArrival: "09:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Karur',
          'Cuddalore',
          'Tiruvannamalai',
          'Vellore',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Chennai",
        busNumber: "TN3638",
        fromArrival: "07:15 am",
        toArrival: "02:30 pm",
        stops: [
          'Karur',
          'Tirunelveli',
          'Mayiladuthurai',
          'Ramanathapuram',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Coimbatore",
        busNumber: "TN4043",
        fromArrival: "08:15 am",
        toArrival: "11:00 am",
        stops: ['Karur', 'Perambalur', 'Pudukkottai', 'Madurai', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Cuddalore",
        busNumber: "TN3281",
        fromArrival: "08:15 pm",
        toArrival: "09:30 pm",
        stops: ['Karur', 'Madurai', 'Viluppuram', 'Tiruvallur', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Dharmapuri",
        busNumber: "TN3427",
        fromArrival: "03:00 pm",
        toArrival: "11:30 am",
        stops: [
          'Karur',
          'Tiruchirappalli',
          'Sivaganga',
          'Tiruppur',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Dindigul",
        busNumber: "TN7621",
        fromArrival: "09:30 am",
        toArrival: "04:00 pm",
        stops: ['Karur', 'Kanyakumari', 'Chengalpattu', 'Tenkasi', 'Dindigul'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Erode",
        busNumber: "TN3346",
        fromArrival: "02:30 pm",
        toArrival: "05:00 pm",
        stops: ['Karur', 'Cuddalore', 'Thanjavur', 'Nagapattinam', 'Erode'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Kallakurichi",
        busNumber: "TN701",
        fromArrival: "08:45 pm",
        toArrival: "01:00 pm",
        stops: [
          'Karur',
          'Tiruvarur',
          'Tirunelveli',
          'Tiruppur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Kanchipuram",
        busNumber: "TN4540",
        fromArrival: "05:00 am",
        toArrival: "02:00 pm",
        stops: ['Karur', 'Nilgiris', 'Tenkasi', 'Chennai', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Kanyakumari",
        busNumber: "TN169",
        fromArrival: "06:45 pm",
        toArrival: "08:00 am",
        stops: [
          'Karur',
          'Tiruchirappalli',
          'Dharmapuri',
          'Erode',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Krishnagiri",
        busNumber: "TN2172",
        fromArrival: "07:00 pm",
        toArrival: "05:15 am",
        stops: [
          'Karur',
          'Tirunelveli',
          'Dharmapuri',
          'Nilgiris',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Madurai",
        busNumber: "TN5250",
        fromArrival: "09:00 pm",
        toArrival: "08:30 pm",
        stops: [
          'Karur',
          'Tiruvallur',
          'Tiruvannamalai',
          'Kanyakumari',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Nagapattinam",
        busNumber: "TN9096",
        fromArrival: "07:15 am",
        toArrival: "10:00 am",
        stops: [
          'Karur',
          'Sivaganga',
          'Tirunelveli',
          'Ariyalur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Namakkal",
        busNumber: "TN7546",
        fromArrival: "10:45 am",
        toArrival: "06:15 am",
        stops: [
          'Karur',
          'Mayiladuthurai',
          'Dharmapuri',
          'Tiruppur',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Nilgiris",
        busNumber: "TN8729",
        fromArrival: "09:45 pm",
        toArrival: "12:00 pm",
        stops: ['Karur', 'Ramanathapuram', 'Nagapattinam', 'Theni', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Perambalur",
        busNumber: "TN9472",
        fromArrival: "07:15 pm",
        toArrival: "08:30 am",
        stops: ['Karur', 'Cuddalore', 'Dharmapuri', 'Namakkal', 'Perambalur'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Pudukkottai",
        busNumber: "TN4587",
        fromArrival: "04:30 pm",
        toArrival: "05:45 pm",
        stops: ['Karur', 'Virudhunagar', 'Theni', 'Kanchipuram', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Ramanathapuram",
        busNumber: "TN9128",
        fromArrival: "10:30 am",
        toArrival: "06:00 pm",
        stops: [
          'Karur',
          'Kanyakumari',
          'Tenkasi',
          'Thoothukudi',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Ranipet",
        busNumber: "TN4695",
        fromArrival: "07:30 pm",
        toArrival: "12:30 pm",
        stops: ['Karur', 'Theni', 'Erode', 'Chennai', 'Ranipet'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Salem",
        busNumber: "TN3097",
        fromArrival: "11:00 am",
        toArrival: "06:30 pm",
        stops: [
          'Karur',
          'Ramanathapuram',
          'Tiruchirappalli',
          'Nagapattinam',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Sivaganga",
        busNumber: "TN8084",
        fromArrival: "03:30 pm",
        toArrival: "08:15 am",
        stops: ['Karur', 'Tirupathur', 'Thoothukudi', 'Theni', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tenkasi",
        busNumber: "TN7287",
        fromArrival: "10:00 pm",
        toArrival: "05:30 am",
        stops: ['Karur', 'Thanjavur', 'Tirunelveli', 'Vellore', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Thanjavur",
        busNumber: "TN6646",
        fromArrival: "12:00 pm",
        toArrival: "08:15 am",
        stops: ['Karur', 'Perambalur', 'Kanyakumari', 'Ariyalur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Theni",
        busNumber: "TN439",
        fromArrival: "10:15 am",
        toArrival: "10:30 am",
        stops: [
          'Karur',
          'Ramanathapuram',
          'Chengalpattu',
          'Tiruchirappalli',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Thoothukudi",
        busNumber: "TN7173",
        fromArrival: "07:15 pm",
        toArrival: "08:30 am",
        stops: [
          'Karur',
          'Nagapattinam',
          'Tiruvallur',
          'Krishnagiri',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tiruchirappalli",
        busNumber: "TN4260",
        fromArrival: "10:15 pm",
        toArrival: "08:00 pm",
        stops: [
          'Karur',
          'Madurai',
          'Tiruvallur',
          'Mayiladuthurai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tirunelveli",
        busNumber: "TN2347",
        fromArrival: "06:15 am",
        toArrival: "08:00 pm",
        stops: ['Karur', 'Namakkal', 'Ranipet', 'Kallakurichi', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tirupathur",
        busNumber: "TN7290",
        fromArrival: "10:15 am",
        toArrival: "08:15 am",
        stops: [
          'Karur',
          'Pudukkottai',
          'Tirunelveli',
          'Sivaganga',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tiruppur",
        busNumber: "TN306",
        fromArrival: "07:45 am",
        toArrival: "07:45 am",
        stops: ['Karur', 'Theni', 'Namakkal', 'Thoothukudi', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tiruvallur",
        busNumber: "TN995",
        fromArrival: "03:30 pm",
        toArrival: "06:45 pm",
        stops: ['Karur', 'Salem', 'Thoothukudi', 'Tenkasi', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tiruvannamalai",
        busNumber: "TN1041",
        fromArrival: "09:00 pm",
        toArrival: "11:30 am",
        stops: [
          'Karur',
          'Dindigul',
          'Namakkal',
          'Ramanathapuram',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Tiruvarur",
        busNumber: "TN7170",
        fromArrival: "06:00 pm",
        toArrival: "09:30 am",
        stops: [
          'Karur',
          'Tiruvannamalai',
          'Cuddalore',
          'Kallakurichi',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Vellore",
        busNumber: "TN1977",
        fromArrival: "12:15 pm",
        toArrival: "08:15 am",
        stops: ['Karur', 'Ranipet', 'Tenkasi', 'Madurai', 'Vellore'],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Viluppuram",
        busNumber: "TN2629",
        fromArrival: "10:30 pm",
        toArrival: "05:15 pm",
        stops: [
          'Karur',
          'Kallakurichi',
          'Tiruchirappalli',
          'Virudhunagar',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Virudhunagar",
        busNumber: "TN1320",
        fromArrival: "06:15 pm",
        toArrival: "05:00 am",
        stops: [
          'Karur',
          'Kallakurichi',
          'Tenkasi',
          'Sivaganga',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Karur",
        toCity: "Mayiladuthurai",
        busNumber: "TN229",
        fromArrival: "09:30 am",
        toArrival: "05:45 pm",
        stops: [
          'Karur',
          'Kanyakumari',
          'Nilgiris',
          'Thanjavur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Ariyalur",
        busNumber: "TN8872",
        fromArrival: "07:45 pm",
        toArrival: "08:45 pm",
        stops: [
          'Krishnagiri',
          'Kallakurichi',
          'Virudhunagar',
          'Tiruchirappalli',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Chengalpattu",
        busNumber: "TN442",
        fromArrival: "10:45 pm",
        toArrival: "06:00 am",
        stops: [
          'Krishnagiri',
          'Perambalur',
          'Tiruvannamalai',
          'Sivaganga',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Chennai",
        busNumber: "TN8893",
        fromArrival: "12:00 pm",
        toArrival: "04:15 pm",
        stops: ['Krishnagiri', 'Pudukkottai', 'Tenkasi', 'Karur', 'Chennai'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Coimbatore",
        busNumber: "TN7083",
        fromArrival: "11:30 am",
        toArrival: "07:00 pm",
        stops: [
          'Krishnagiri',
          'Kallakurichi',
          'Sivaganga',
          'Tiruvallur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Cuddalore",
        busNumber: "TN1425",
        fromArrival: "02:00 pm",
        toArrival: "07:00 pm",
        stops: [
          'Krishnagiri',
          'Ariyalur',
          'Perambalur',
          'Tiruvarur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Dharmapuri",
        busNumber: "TN9538",
        fromArrival: "01:30 pm",
        toArrival: "06:30 am",
        stops: [
          'Krishnagiri',
          'Nagapattinam',
          'Thoothukudi',
          'Ranipet',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Dindigul",
        busNumber: "TN3664",
        fromArrival: "10:15 am",
        toArrival: "10:00 pm",
        stops: [
          'Krishnagiri',
          'Tiruvannamalai',
          'Thoothukudi',
          'Nagapattinam',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Erode",
        busNumber: "TN9338",
        fromArrival: "05:15 pm",
        toArrival: "06:45 am",
        stops: ['Krishnagiri', 'Dharmapuri', 'Thanjavur', 'Tiruppur', 'Erode'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Kallakurichi",
        busNumber: "TN5316",
        fromArrival: "04:45 pm",
        toArrival: "07:45 pm",
        stops: ['Krishnagiri', 'Karur', 'Salem', 'Ariyalur', 'Kallakurichi'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Kanchipuram",
        busNumber: "TN5481",
        fromArrival: "10:15 pm",
        toArrival: "10:30 pm",
        stops: [
          'Krishnagiri',
          'Erode',
          'Salem',
          'Ramanathapuram',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Kanyakumari",
        busNumber: "TN7610",
        fromArrival: "06:45 pm",
        toArrival: "09:00 pm",
        stops: [
          'Krishnagiri',
          'Tiruvarur',
          'Karur',
          'Sivaganga',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Karur",
        busNumber: "TN3089",
        fromArrival: "08:45 am",
        toArrival: "06:30 am",
        stops: [
          'Krishnagiri',
          'Chennai',
          'Mayiladuthurai',
          'Dindigul',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Madurai",
        busNumber: "TN2186",
        fromArrival: "10:00 am",
        toArrival: "06:30 pm",
        stops: [
          'Krishnagiri',
          'Tiruchirappalli',
          'Cuddalore',
          'Tiruvallur',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Nagapattinam",
        busNumber: "TN4822",
        fromArrival: "09:45 am",
        toArrival: "07:15 am",
        stops: [
          'Krishnagiri',
          'Tiruvarur',
          'Tiruppur',
          'Thanjavur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Namakkal",
        busNumber: "TN8982",
        fromArrival: "06:00 pm",
        toArrival: "01:00 pm",
        stops: [
          'Krishnagiri',
          'Ramanathapuram',
          'Cuddalore',
          'Tiruvarur',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Nilgiris",
        busNumber: "TN706",
        fromArrival: "07:45 am",
        toArrival: "06:30 am",
        stops: ['Krishnagiri', 'Karur', 'Salem', 'Erode', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Perambalur",
        busNumber: "TN6440",
        fromArrival: "04:15 pm",
        toArrival: "07:00 am",
        stops: [
          'Krishnagiri',
          'Nilgiris',
          'Sivaganga',
          'Chengalpattu',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Pudukkottai",
        busNumber: "TN4170",
        fromArrival: "06:45 am",
        toArrival: "06:30 am",
        stops: [
          'Krishnagiri',
          'Kallakurichi',
          'Dindigul',
          'Kanchipuram',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Ramanathapuram",
        busNumber: "TN5223",
        fromArrival: "10:00 am",
        toArrival: "02:00 pm",
        stops: [
          'Krishnagiri',
          'Pudukkottai',
          'Sivaganga',
          'Chennai',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Ranipet",
        busNumber: "TN8995",
        fromArrival: "10:45 pm",
        toArrival: "04:15 pm",
        stops: ['Krishnagiri', 'Tiruvarur', 'Dharmapuri', 'Salem', 'Ranipet'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Salem",
        busNumber: "TN3153",
        fromArrival: "05:15 am",
        toArrival: "09:00 pm",
        stops: ['Krishnagiri', 'Perambalur', 'Ariyalur', 'Cuddalore', 'Salem'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Sivaganga",
        busNumber: "TN2677",
        fromArrival: "09:45 pm",
        toArrival: "08:15 am",
        stops: [
          'Krishnagiri',
          'Namakkal',
          'Pudukkottai',
          'Tirupathur',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tenkasi",
        busNumber: "TN4382",
        fromArrival: "01:00 pm",
        toArrival: "03:45 pm",
        stops: ['Krishnagiri', 'Karur', 'Kanchipuram', 'Viluppuram', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Thanjavur",
        busNumber: "TN1276",
        fromArrival: "08:45 am",
        toArrival: "05:15 pm",
        stops: ['Krishnagiri', 'Kanchipuram', 'Dindigul', 'Salem', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Theni",
        busNumber: "TN9718",
        fromArrival: "06:15 pm",
        toArrival: "05:30 pm",
        stops: [
          'Krishnagiri',
          'Karur',
          'Tiruvannamalai',
          'Dharmapuri',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Thoothukudi",
        busNumber: "TN6488",
        fromArrival: "05:30 pm",
        toArrival: "06:30 am",
        stops: [
          'Krishnagiri',
          'Coimbatore',
          'Kanyakumari',
          'Tiruchirappalli',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tiruchirappalli",
        busNumber: "TN8420",
        fromArrival: "03:45 pm",
        toArrival: "09:00 pm",
        stops: [
          'Krishnagiri',
          'Karur',
          'Tiruvallur',
          'Virudhunagar',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tirunelveli",
        busNumber: "TN8124",
        fromArrival: "05:30 pm",
        toArrival: "10:45 pm",
        stops: [
          'Krishnagiri',
          'Vellore',
          'Chengalpattu',
          'Salem',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tirupathur",
        busNumber: "TN3538",
        fromArrival: "08:00 pm",
        toArrival: "06:00 pm",
        stops: [
          'Krishnagiri',
          'Namakkal',
          'Cuddalore',
          'Dindigul',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tiruppur",
        busNumber: "TN1467",
        fromArrival: "11:45 am",
        toArrival: "09:00 pm",
        stops: [
          'Krishnagiri',
          'Tiruvannamalai',
          'Chengalpattu',
          'Chennai',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tiruvallur",
        busNumber: "TN3831",
        fromArrival: "12:00 pm",
        toArrival: "06:00 pm",
        stops: [
          'Krishnagiri',
          'Nilgiris',
          'Chennai',
          'Ramanathapuram',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tiruvannamalai",
        busNumber: "TN1954",
        fromArrival: "07:00 pm",
        toArrival: "07:30 am",
        stops: [
          'Krishnagiri',
          'Kanchipuram',
          'Vellore',
          'Tiruvarur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Tiruvarur",
        busNumber: "TN9428",
        fromArrival: "10:45 pm",
        toArrival: "11:30 am",
        stops: [
          'Krishnagiri',
          'Chengalpattu',
          'Ranipet',
          'Perambalur',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Vellore",
        busNumber: "TN3694",
        fromArrival: "06:15 am",
        toArrival: "06:15 am",
        stops: ['Krishnagiri', 'Coimbatore', 'Tirunelveli', 'Karur', 'Vellore'],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Viluppuram",
        busNumber: "TN2496",
        fromArrival: "04:15 pm",
        toArrival: "05:30 am",
        stops: [
          'Krishnagiri',
          'Chennai',
          'Mayiladuthurai',
          'Vellore',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Virudhunagar",
        busNumber: "TN8945",
        fromArrival: "10:15 am",
        toArrival: "09:45 pm",
        stops: [
          'Krishnagiri',
          'Tiruvallur',
          'Ranipet',
          'Ariyalur',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Krishnagiri",
        toCity: "Mayiladuthurai",
        busNumber: "TN9554",
        fromArrival: "02:00 pm",
        toArrival: "06:30 pm",
        stops: [
          'Krishnagiri',
          'Ramanathapuram',
          'Dharmapuri',
          'Nagapattinam',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Ariyalur",
        busNumber: "TN2316",
        fromArrival: "05:00 am",
        toArrival: "12:30 pm",
        stops: ['Madurai', 'Tenkasi', 'Pudukkottai', 'Karur', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Chengalpattu",
        busNumber: "TN7473",
        fromArrival: "02:00 pm",
        toArrival: "05:15 am",
        stops: [
          'Madurai',
          'Vellore',
          'Kanchipuram',
          'Coimbatore',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Chennai",
        busNumber: "TN5975",
        fromArrival: "07:00 am",
        toArrival: "11:30 am",
        stops: [
          'Madurai',
          'Krishnagiri',
          'Viluppuram',
          'Nagapattinam',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Coimbatore",
        busNumber: "TN8048",
        fromArrival: "09:45 pm",
        toArrival: "01:45 pm",
        stops: [
          'Madurai',
          'Sivaganga',
          'Tirupathur',
          'Virudhunagar',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Cuddalore",
        busNumber: "TN9442",
        fromArrival: "05:45 am",
        toArrival: "08:45 pm",
        stops: ['Madurai', 'Erode', 'Tiruchirappalli', 'Vellore', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Dharmapuri",
        busNumber: "TN3332",
        fromArrival: "01:45 pm",
        toArrival: "05:00 am",
        stops: ['Madurai', 'Perambalur', 'Ranipet', 'Karur', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Dindigul",
        busNumber: "TN2782",
        fromArrival: "07:15 pm",
        toArrival: "07:00 am",
        stops: ['Madurai', 'Chengalpattu', 'Chennai', 'Coimbatore', 'Dindigul'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Erode",
        busNumber: "TN8199",
        fromArrival: "09:15 am",
        toArrival: "07:15 pm",
        stops: ['Madurai', 'Tiruvannamalai', 'Sivaganga', 'Thanjavur', 'Erode'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Kallakurichi",
        busNumber: "TN6412",
        fromArrival: "06:00 pm",
        toArrival: "06:00 am",
        stops: [
          'Madurai',
          'Krishnagiri',
          'Kanyakumari',
          'Chennai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Kanchipuram",
        busNumber: "TN5471",
        fromArrival: "10:45 am",
        toArrival: "10:45 pm",
        stops: [
          'Madurai',
          'Tirunelveli',
          'Chengalpattu',
          'Ramanathapuram',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Kanyakumari",
        busNumber: "TN3997",
        fromArrival: "09:45 am",
        toArrival: "03:30 pm",
        stops: [
          'Madurai',
          'Erode',
          'Tiruvannamalai',
          'Tiruppur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Karur",
        busNumber: "TN7088",
        fromArrival: "07:30 pm",
        toArrival: "03:00 pm",
        stops: ['Madurai', 'Krishnagiri', 'Vellore', 'Tirunelveli', 'Karur'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Krishnagiri",
        busNumber: "TN9985",
        fromArrival: "10:00 am",
        toArrival: "09:15 pm",
        stops: ['Madurai', 'Pudukkottai', 'Salem', 'Cuddalore', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Nagapattinam",
        busNumber: "TN9193",
        fromArrival: "09:15 pm",
        toArrival: "04:00 pm",
        stops: [
          'Madurai',
          'Nilgiris',
          'Tiruvannamalai',
          'Pudukkottai',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Namakkal",
        busNumber: "TN3132",
        fromArrival: "09:30 am",
        toArrival: "01:45 pm",
        stops: ['Madurai', 'Tiruvarur', 'Chengalpattu', 'Tenkasi', 'Namakkal'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Nilgiris",
        busNumber: "TN1921",
        fromArrival: "05:45 am",
        toArrival: "09:30 am",
        stops: [
          'Madurai',
          'Namakkal',
          'Ariyalur',
          'Mayiladuthurai',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Perambalur",
        busNumber: "TN5616",
        fromArrival: "04:00 pm",
        toArrival: "08:45 pm",
        stops: ['Madurai', 'Theni', 'Ariyalur', 'Nagapattinam', 'Perambalur'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Pudukkottai",
        busNumber: "TN239",
        fromArrival: "09:00 am",
        toArrival: "05:45 am",
        stops: [
          'Madurai',
          'Kanyakumari',
          'Tiruvarur',
          'Kallakurichi',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Ramanathapuram",
        busNumber: "TN9832",
        fromArrival: "05:45 pm",
        toArrival: "08:00 am",
        stops: [
          'Madurai',
          'Mayiladuthurai',
          'Ranipet',
          'Tiruvallur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Ranipet",
        busNumber: "TN2266",
        fromArrival: "09:45 am",
        toArrival: "03:30 pm",
        stops: [
          'Madurai',
          'Thoothukudi',
          'Tiruppur',
          'Mayiladuthurai',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Salem",
        busNumber: "TN1073",
        fromArrival: "05:30 pm",
        toArrival: "06:45 pm",
        stops: ['Madurai', 'Ranipet', 'Dindigul', 'Vellore', 'Salem'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Sivaganga",
        busNumber: "TN7456",
        fromArrival: "08:15 am",
        toArrival: "10:00 pm",
        stops: ['Madurai', 'Chennai', 'Salem', 'Ariyalur', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tenkasi",
        busNumber: "TN989",
        fromArrival: "05:00 pm",
        toArrival: "07:45 am",
        stops: [
          'Madurai',
          'Tiruvarur',
          'Dharmapuri',
          'Nagapattinam',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Thanjavur",
        busNumber: "TN707",
        fromArrival: "10:45 pm",
        toArrival: "09:45 pm",
        stops: [
          'Madurai',
          'Nilgiris',
          'Tirunelveli',
          'Tiruchirappalli',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Theni",
        busNumber: "TN6651",
        fromArrival: "09:30 pm",
        toArrival: "08:30 pm",
        stops: ['Madurai', 'Sivaganga', 'Kanchipuram', 'Tiruvarur', 'Theni'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Thoothukudi",
        busNumber: "TN5665",
        fromArrival: "10:45 am",
        toArrival: "04:30 pm",
        stops: ['Madurai', 'Tenkasi', 'Erode', 'Salem', 'Thoothukudi'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tiruchirappalli",
        busNumber: "TN9219",
        fromArrival: "09:30 pm",
        toArrival: "07:15 pm",
        stops: ['Madurai', 'Ariyalur', 'Namakkal', 'Erode', 'Tiruchirappalli'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tirunelveli",
        busNumber: "TN2820",
        fromArrival: "10:15 pm",
        toArrival: "10:30 pm",
        stops: ['Madurai', 'Pudukkottai', 'Salem', 'Viluppuram', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tirupathur",
        busNumber: "TN3892",
        fromArrival: "02:30 pm",
        toArrival: "04:15 pm",
        stops: ['Madurai', 'Tiruvallur', 'Chengalpattu', 'Salem', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tiruppur",
        busNumber: "TN3658",
        fromArrival: "10:00 pm",
        toArrival: "03:30 pm",
        stops: [
          'Madurai',
          'Kanchipuram',
          'Virudhunagar',
          'Kanyakumari',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tiruvallur",
        busNumber: "TN1641",
        fromArrival: "06:30 pm",
        toArrival: "05:15 pm",
        stops: [
          'Madurai',
          'Tenkasi',
          'Krishnagiri',
          'Thoothukudi',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tiruvannamalai",
        busNumber: "TN8486",
        fromArrival: "10:00 am",
        toArrival: "10:00 am",
        stops: [
          'Madurai',
          'Erode',
          'Mayiladuthurai',
          'Ariyalur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Tiruvarur",
        busNumber: "TN8339",
        fromArrival: "11:30 am",
        toArrival: "01:15 pm",
        stops: ['Madurai', 'Karur', 'Tiruvallur', 'Viluppuram', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Vellore",
        busNumber: "TN358",
        fromArrival: "09:00 pm",
        toArrival: "01:15 pm",
        stops: ['Madurai', 'Namakkal', 'Perambalur', 'Viluppuram', 'Vellore'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Viluppuram",
        busNumber: "TN4515",
        fromArrival: "09:15 pm",
        toArrival: "08:00 am",
        stops: ['Madurai', 'Erode', 'Thanjavur', 'Dharmapuri', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Virudhunagar",
        busNumber: "TN138",
        fromArrival: "09:45 pm",
        toArrival: "05:30 pm",
        stops: [
          'Madurai',
          'Kallakurichi',
          'Dharmapuri',
          'Tiruvallur',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Madurai",
        toCity: "Mayiladuthurai",
        busNumber: "TN1593",
        fromArrival: "09:15 pm",
        toArrival: "12:15 pm",
        stops: [
          'Madurai',
          'Nagapattinam',
          'Tenkasi',
          'Ranipet',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Ariyalur",
        busNumber: "TN6056",
        fromArrival: "01:30 pm",
        toArrival: "05:15 pm",
        stops: [
          'Nagapattinam',
          'Karur',
          'Viluppuram',
          'Dharmapuri',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Chengalpattu",
        busNumber: "TN3912",
        fromArrival: "10:45 am",
        toArrival: "05:15 am",
        stops: [
          'Nagapattinam',
          'Tirunelveli',
          'Ariyalur',
          'Madurai',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Chennai",
        busNumber: "TN4768",
        fromArrival: "05:30 pm",
        toArrival: "05:30 pm",
        stops: [
          'Nagapattinam',
          'Ramanathapuram',
          'Kanchipuram',
          'Coimbatore',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Coimbatore",
        busNumber: "TN9763",
        fromArrival: "05:45 am",
        toArrival: "02:00 pm",
        stops: [
          'Nagapattinam',
          'Vellore',
          'Virudhunagar',
          'Tiruchirappalli',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Cuddalore",
        busNumber: "TN456",
        fromArrival: "11:15 am",
        toArrival: "07:00 pm",
        stops: [
          'Nagapattinam',
          'Tiruvarur',
          'Namakkal',
          'Kanyakumari',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Dharmapuri",
        busNumber: "TN5617",
        fromArrival: "06:30 am",
        toArrival: "06:45 pm",
        stops: [
          'Nagapattinam',
          'Tirunelveli',
          'Sivaganga',
          'Dindigul',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Dindigul",
        busNumber: "TN3467",
        fromArrival: "02:45 pm",
        toArrival: "04:45 pm",
        stops: [
          'Nagapattinam',
          'Krishnagiri',
          'Madurai',
          'Tiruppur',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Erode",
        busNumber: "TN4443",
        fromArrival: "11:30 am",
        toArrival: "07:00 pm",
        stops: ['Nagapattinam', 'Kanchipuram', 'Salem', 'Ariyalur', 'Erode'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Kallakurichi",
        busNumber: "TN4275",
        fromArrival: "04:15 pm",
        toArrival: "10:30 am",
        stops: [
          'Nagapattinam',
          'Sivaganga',
          'Tiruppur',
          'Tiruvallur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Kanchipuram",
        busNumber: "TN3040",
        fromArrival: "07:00 am",
        toArrival: "10:00 am",
        stops: ['Nagapattinam', 'Ariyalur', 'Vellore', 'Salem', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Kanyakumari",
        busNumber: "TN9921",
        fromArrival: "08:00 pm",
        toArrival: "01:30 pm",
        stops: [
          'Nagapattinam',
          'Ariyalur',
          'Thoothukudi',
          'Tirupathur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Karur",
        busNumber: "TN2780",
        fromArrival: "07:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Nagapattinam',
          'Dharmapuri',
          'Erode',
          'Tiruvannamalai',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Krishnagiri",
        busNumber: "TN1167",
        fromArrival: "07:30 pm",
        toArrival: "08:30 am",
        stops: [
          'Nagapattinam',
          'Chennai',
          'Dharmapuri',
          'Ranipet',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Madurai",
        busNumber: "TN2330",
        fromArrival: "12:00 pm",
        toArrival: "03:00 pm",
        stops: ['Nagapattinam', 'Salem', 'Dindigul', 'Tiruppur', 'Madurai'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Namakkal",
        busNumber: "TN2397",
        fromArrival: "12:00 pm",
        toArrival: "04:15 pm",
        stops: [
          'Nagapattinam',
          'Vellore',
          'Tiruvallur',
          'Chengalpattu',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Nilgiris",
        busNumber: "TN6314",
        fromArrival: "05:00 pm",
        toArrival: "03:15 pm",
        stops: [
          'Nagapattinam',
          'Erode',
          'Kanchipuram',
          'Kanyakumari',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Perambalur",
        busNumber: "TN619",
        fromArrival: "08:15 pm",
        toArrival: "03:15 pm",
        stops: [
          'Nagapattinam',
          'Namakkal',
          'Ranipet',
          'Thanjavur',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Pudukkottai",
        busNumber: "TN7443",
        fromArrival: "10:30 am",
        toArrival: "05:15 am",
        stops: [
          'Nagapattinam',
          'Dindigul',
          'Madurai',
          'Cuddalore',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Ramanathapuram",
        busNumber: "TN5596",
        fromArrival: "04:15 pm",
        toArrival: "10:45 am",
        stops: [
          'Nagapattinam',
          'Mayiladuthurai',
          'Pudukkottai',
          'Perambalur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Ranipet",
        busNumber: "TN9237",
        fromArrival: "11:15 am",
        toArrival: "11:00 am",
        stops: ['Nagapattinam', 'Tenkasi', 'Kallakurichi', 'Karur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Salem",
        busNumber: "TN4893",
        fromArrival: "09:00 pm",
        toArrival: "09:30 pm",
        stops: ['Nagapattinam', 'Ranipet', 'Madurai', 'Kallakurichi', 'Salem'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Sivaganga",
        busNumber: "TN3813",
        fromArrival: "09:45 pm",
        toArrival: "03:15 pm",
        stops: [
          'Nagapattinam',
          'Madurai',
          'Coimbatore',
          'Namakkal',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tenkasi",
        busNumber: "TN5738",
        fromArrival: "04:00 pm",
        toArrival: "09:15 pm",
        stops: ['Nagapattinam', 'Namakkal', 'Tiruppur', 'Erode', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Thanjavur",
        busNumber: "TN2425",
        fromArrival: "09:00 pm",
        toArrival: "06:45 pm",
        stops: [
          'Nagapattinam',
          'Sivaganga',
          'Tiruchirappalli',
          'Dindigul',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Theni",
        busNumber: "TN2168",
        fromArrival: "05:45 am",
        toArrival: "08:45 am",
        stops: [
          'Nagapattinam',
          'Kanchipuram',
          'Ramanathapuram',
          'Erode',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Thoothukudi",
        busNumber: "TN5253",
        fromArrival: "09:00 am",
        toArrival: "07:15 am",
        stops: [
          'Nagapattinam',
          'Sivaganga',
          'Mayiladuthurai',
          'Salem',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tiruchirappalli",
        busNumber: "TN9270",
        fromArrival: "11:15 am",
        toArrival: "07:30 am",
        stops: [
          'Nagapattinam',
          'Mayiladuthurai',
          'Thanjavur',
          'Cuddalore',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tirunelveli",
        busNumber: "TN3641",
        fromArrival: "08:15 pm",
        toArrival: "08:15 pm",
        stops: [
          'Nagapattinam',
          'Virudhunagar',
          'Perambalur',
          'Vellore',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tirupathur",
        busNumber: "TN7629",
        fromArrival: "08:45 am",
        toArrival: "11:45 am",
        stops: [
          'Nagapattinam',
          'Tiruchirappalli',
          'Tiruvannamalai',
          'Perambalur',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tiruppur",
        busNumber: "TN8326",
        fromArrival: "04:00 pm",
        toArrival: "04:15 pm",
        stops: [
          'Nagapattinam',
          'Coimbatore',
          'Madurai',
          'Tirupathur',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tiruvallur",
        busNumber: "TN502",
        fromArrival: "03:45 pm",
        toArrival: "12:00 pm",
        stops: [
          'Nagapattinam',
          'Tiruchirappalli',
          'Tiruppur',
          'Nilgiris',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tiruvannamalai",
        busNumber: "TN3850",
        fromArrival: "10:15 pm",
        toArrival: "01:30 pm",
        stops: [
          'Nagapattinam',
          'Coimbatore',
          'Virudhunagar',
          'Dharmapuri',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Tiruvarur",
        busNumber: "TN2356",
        fromArrival: "10:15 am",
        toArrival: "07:45 am",
        stops: [
          'Nagapattinam',
          'Karur',
          'Pudukkottai',
          'Dharmapuri',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Vellore",
        busNumber: "TN5576",
        fromArrival: "05:00 pm",
        toArrival: "11:00 am",
        stops: [
          'Nagapattinam',
          'Pudukkottai',
          'Kanchipuram',
          'Dharmapuri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Viluppuram",
        busNumber: "TN315",
        fromArrival: "10:30 am",
        toArrival: "06:15 pm",
        stops: [
          'Nagapattinam',
          'Kallakurichi',
          'Thoothukudi',
          'Salem',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Virudhunagar",
        busNumber: "TN3880",
        fromArrival: "06:00 pm",
        toArrival: "06:45 pm",
        stops: [
          'Nagapattinam',
          'Tiruppur',
          'Tirupathur',
          'Mayiladuthurai',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Nagapattinam",
        toCity: "Mayiladuthurai",
        busNumber: "TN3454",
        fromArrival: "10:15 am",
        toArrival: "10:45 pm",
        stops: [
          'Nagapattinam',
          'Kanyakumari',
          'Tiruvarur',
          'Perambalur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Ariyalur",
        busNumber: "TN7238",
        fromArrival: "02:45 pm",
        toArrival: "05:45 am",
        stops: [
          'Namakkal',
          'Tiruppur',
          'Coimbatore',
          'Kallakurichi',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Chengalpattu",
        busNumber: "TN9011",
        fromArrival: "01:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Namakkal',
          'Cuddalore',
          'Kallakurichi',
          'Tirunelveli',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Chennai",
        busNumber: "TN4848",
        fromArrival: "08:30 am",
        toArrival: "02:15 pm",
        stops: ['Namakkal', 'Sivaganga', 'Thanjavur', 'Thoothukudi', 'Chennai'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Coimbatore",
        busNumber: "TN3099",
        fromArrival: "02:30 pm",
        toArrival: "07:00 pm",
        stops: [
          'Namakkal',
          'Pudukkottai',
          'Tenkasi',
          'Krishnagiri',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Cuddalore",
        busNumber: "TN3927",
        fromArrival: "01:30 pm",
        toArrival: "01:30 pm",
        stops: [
          'Namakkal',
          'Pudukkottai',
          'Coimbatore',
          'Chengalpattu',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Dharmapuri",
        busNumber: "TN947",
        fromArrival: "08:45 pm",
        toArrival: "11:00 am",
        stops: [
          'Namakkal',
          'Dindigul',
          'Viluppuram',
          'Krishnagiri',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Dindigul",
        busNumber: "TN7678",
        fromArrival: "09:45 am",
        toArrival: "03:30 pm",
        stops: [
          'Namakkal',
          'Pudukkottai',
          'Ranipet',
          'Thoothukudi',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Erode",
        busNumber: "TN5679",
        fromArrival: "10:30 pm",
        toArrival: "06:45 am",
        stops: [
          'Namakkal',
          'Tirunelveli',
          'Virudhunagar',
          'Coimbatore',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Kallakurichi",
        busNumber: "TN9764",
        fromArrival: "06:15 am",
        toArrival: "08:45 am",
        stops: ['Namakkal', 'Coimbatore', 'Karur', 'Erode', 'Kallakurichi'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Kanchipuram",
        busNumber: "TN8275",
        fromArrival: "03:45 pm",
        toArrival: "01:15 pm",
        stops: [
          'Namakkal',
          'Tiruchirappalli',
          'Dindigul',
          'Ariyalur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Kanyakumari",
        busNumber: "TN4654",
        fromArrival: "12:45 pm",
        toArrival: "09:45 am",
        stops: [
          'Namakkal',
          'Tirupathur',
          'Pudukkottai',
          'Ariyalur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Karur",
        busNumber: "TN556",
        fromArrival: "07:15 pm",
        toArrival: "01:00 pm",
        stops: [
          'Namakkal',
          'Virudhunagar',
          'Thoothukudi',
          'Kanchipuram',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Krishnagiri",
        busNumber: "TN2842",
        fromArrival: "09:45 pm",
        toArrival: "08:00 am",
        stops: [
          'Namakkal',
          'Cuddalore',
          'Coimbatore',
          'Tiruppur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Madurai",
        busNumber: "TN7493",
        fromArrival: "02:45 pm",
        toArrival: "08:30 am",
        stops: ['Namakkal', 'Salem', 'Pudukkottai', 'Perambalur', 'Madurai'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Nagapattinam",
        busNumber: "TN6341",
        fromArrival: "05:15 pm",
        toArrival: "07:15 pm",
        stops: ['Namakkal', 'Chennai', 'Tiruvarur', 'Madurai', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Nilgiris",
        busNumber: "TN6458",
        fromArrival: "05:00 am",
        toArrival: "09:00 am",
        stops: ['Namakkal', 'Ariyalur', 'Dharmapuri', 'Sivaganga', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Perambalur",
        busNumber: "TN9828",
        fromArrival: "11:00 am",
        toArrival: "11:15 am",
        stops: ['Namakkal', 'Theni', 'Tenkasi', 'Karur', 'Perambalur'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Pudukkottai",
        busNumber: "TN5855",
        fromArrival: "03:45 pm",
        toArrival: "06:30 pm",
        stops: ['Namakkal', 'Dharmapuri', 'Salem', 'Ranipet', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Ramanathapuram",
        busNumber: "TN3153",
        fromArrival: "11:45 am",
        toArrival: "07:45 am",
        stops: [
          'Namakkal',
          'Coimbatore',
          'Kanchipuram',
          'Mayiladuthurai',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Ranipet",
        busNumber: "TN8650",
        fromArrival: "10:30 am",
        toArrival: "06:45 pm",
        stops: [
          'Namakkal',
          'Ramanathapuram',
          'Tiruchirappalli',
          'Theni',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Salem",
        busNumber: "TN435",
        fromArrival: "03:00 pm",
        toArrival: "04:30 pm",
        stops: [
          'Namakkal',
          'Madurai',
          'Tiruchirappalli',
          'Viluppuram',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Sivaganga",
        busNumber: "TN8831",
        fromArrival: "03:00 pm",
        toArrival: "09:15 pm",
        stops: ['Namakkal', 'Tiruvallur', 'Karur', 'Ranipet', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tenkasi",
        busNumber: "TN7987",
        fromArrival: "05:30 pm",
        toArrival: "01:15 pm",
        stops: ['Namakkal', 'Thanjavur', 'Madurai', 'Nagapattinam', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Thanjavur",
        busNumber: "TN3496",
        fromArrival: "06:00 pm",
        toArrival: "12:00 pm",
        stops: ['Namakkal', 'Theni', 'Ariyalur', 'Karur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Theni",
        busNumber: "TN6183",
        fromArrival: "05:15 am",
        toArrival: "09:45 am",
        stops: [
          'Namakkal',
          'Coimbatore',
          'Tirupathur',
          'Mayiladuthurai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Thoothukudi",
        busNumber: "TN9279",
        fromArrival: "12:00 pm",
        toArrival: "05:15 am",
        stops: [
          'Namakkal',
          'Krishnagiri',
          'Tenkasi',
          'Thanjavur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tiruchirappalli",
        busNumber: "TN8057",
        fromArrival: "10:00 pm",
        toArrival: "10:15 am",
        stops: [
          'Namakkal',
          'Virudhunagar',
          'Tenkasi',
          'Vellore',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tirunelveli",
        busNumber: "TN5128",
        fromArrival: "05:30 pm",
        toArrival: "12:15 pm",
        stops: ['Namakkal', 'Theni', 'Ariyalur', 'Thanjavur', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tirupathur",
        busNumber: "TN3771",
        fromArrival: "09:45 am",
        toArrival: "10:15 am",
        stops: [
          'Namakkal',
          'Nilgiris',
          'Sivaganga',
          'Tiruchirappalli',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tiruppur",
        busNumber: "TN7272",
        fromArrival: "08:30 pm",
        toArrival: "08:15 pm",
        stops: [
          'Namakkal',
          'Tiruvarur',
          'Salem',
          'Tiruchirappalli',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tiruvallur",
        busNumber: "TN5458",
        fromArrival: "08:45 am",
        toArrival: "03:00 pm",
        stops: ['Namakkal', 'Krishnagiri', 'Chennai', 'Vellore', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tiruvannamalai",
        busNumber: "TN674",
        fromArrival: "07:15 pm",
        toArrival: "03:15 pm",
        stops: [
          'Namakkal',
          'Perambalur',
          'Tiruchirappalli',
          'Kanchipuram',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Tiruvarur",
        busNumber: "TN7121",
        fromArrival: "01:00 pm",
        toArrival: "10:30 pm",
        stops: [
          'Namakkal',
          'Kallakurichi',
          'Chengalpattu',
          'Ranipet',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Vellore",
        busNumber: "TN784",
        fromArrival: "07:30 am",
        toArrival: "06:00 pm",
        stops: ['Namakkal', 'Dindigul', 'Cuddalore', 'Ranipet', 'Vellore'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Viluppuram",
        busNumber: "TN6224",
        fromArrival: "10:45 pm",
        toArrival: "06:15 am",
        stops: ['Namakkal', 'Vellore', 'Karur', 'Chengalpattu', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Virudhunagar",
        busNumber: "TN932",
        fromArrival: "06:15 pm",
        toArrival: "09:00 pm",
        stops: [
          'Namakkal',
          'Theni',
          'Dharmapuri',
          'Kallakurichi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Namakkal",
        toCity: "Mayiladuthurai",
        busNumber: "TN4783",
        fromArrival: "08:00 am",
        toArrival: "10:00 am",
        stops: [
          'Namakkal',
          'Ramanathapuram',
          'Cuddalore',
          'Coimbatore',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Ariyalur",
        busNumber: "TN2290",
        fromArrival: "11:30 am",
        toArrival: "10:30 am",
        stops: [
          'Nilgiris',
          'Viluppuram',
          'Dindigul',
          'Virudhunagar',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Chengalpattu",
        busNumber: "TN8961",
        fromArrival: "08:00 pm",
        toArrival: "09:45 pm",
        stops: [
          'Nilgiris',
          'Ramanathapuram',
          'Salem',
          'Nagapattinam',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Chennai",
        busNumber: "TN4791",
        fromArrival: "08:15 pm",
        toArrival: "07:45 am",
        stops: ['Nilgiris', 'Erode', 'Tirunelveli', 'Chengalpattu', 'Chennai'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Coimbatore",
        busNumber: "TN1289",
        fromArrival: "08:30 am",
        toArrival: "07:45 am",
        stops: [
          'Nilgiris',
          'Ramanathapuram',
          'Tirunelveli',
          'Tiruppur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Cuddalore",
        busNumber: "TN764",
        fromArrival: "11:30 am",
        toArrival: "10:00 am",
        stops: ['Nilgiris', 'Coimbatore', 'Karur', 'Erode', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Dharmapuri",
        busNumber: "TN6568",
        fromArrival: "09:00 am",
        toArrival: "07:45 pm",
        stops: [
          'Nilgiris',
          'Nagapattinam',
          'Namakkal',
          'Madurai',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Dindigul",
        busNumber: "TN7092",
        fromArrival: "07:30 am",
        toArrival: "07:00 pm",
        stops: [
          'Nilgiris',
          'Nagapattinam',
          'Mayiladuthurai',
          'Tenkasi',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Erode",
        busNumber: "TN4754",
        fromArrival: "04:00 pm",
        toArrival: "05:45 am",
        stops: ['Nilgiris', 'Cuddalore', 'Ranipet', 'Mayiladuthurai', 'Erode'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Kallakurichi",
        busNumber: "TN1999",
        fromArrival: "12:45 pm",
        toArrival: "06:15 pm",
        stops: [
          'Nilgiris',
          'Namakkal',
          'Viluppuram',
          'Chennai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Kanchipuram",
        busNumber: "TN6365",
        fromArrival: "06:00 am",
        toArrival: "08:30 am",
        stops: [
          'Nilgiris',
          'Tenkasi',
          'Chengalpattu',
          'Kanyakumari',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Kanyakumari",
        busNumber: "TN3495",
        fromArrival: "08:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Nilgiris',
          'Krishnagiri',
          'Tirupathur',
          'Vellore',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Karur",
        busNumber: "TN2261",
        fromArrival: "08:15 am",
        toArrival: "09:30 pm",
        stops: ['Nilgiris', 'Salem', 'Ariyalur', 'Tenkasi', 'Karur'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Krishnagiri",
        busNumber: "TN7256",
        fromArrival: "12:15 pm",
        toArrival: "11:45 am",
        stops: [
          'Nilgiris',
          'Pudukkottai',
          'Sivaganga',
          'Chennai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Madurai",
        busNumber: "TN4593",
        fromArrival: "11:00 am",
        toArrival: "10:00 am",
        stops: ['Nilgiris', 'Chengalpattu', 'Ranipet', 'Erode', 'Madurai'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Nagapattinam",
        busNumber: "TN8190",
        fromArrival: "09:00 pm",
        toArrival: "01:00 pm",
        stops: [
          'Nilgiris',
          'Kanyakumari',
          'Viluppuram',
          'Tiruchirappalli',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Namakkal",
        busNumber: "TN9092",
        fromArrival: "09:00 pm",
        toArrival: "05:45 am",
        stops: [
          'Nilgiris',
          'Ranipet',
          'Tiruvallur',
          'Virudhunagar',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Perambalur",
        busNumber: "TN4593",
        fromArrival: "10:15 pm",
        toArrival: "08:15 pm",
        stops: [
          'Nilgiris',
          'Thanjavur',
          'Kanchipuram',
          'Sivaganga',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Pudukkottai",
        busNumber: "TN6170",
        fromArrival: "10:00 am",
        toArrival: "09:00 am",
        stops: [
          'Nilgiris',
          'Thanjavur',
          'Chengalpattu',
          'Ramanathapuram',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Ramanathapuram",
        busNumber: "TN4379",
        fromArrival: "07:00 pm",
        toArrival: "08:45 pm",
        stops: [
          'Nilgiris',
          'Virudhunagar',
          'Dharmapuri',
          'Vellore',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Ranipet",
        busNumber: "TN3314",
        fromArrival: "09:45 pm",
        toArrival: "11:45 am",
        stops: [
          'Nilgiris',
          'Tiruchirappalli',
          'Kanyakumari',
          'Kanchipuram',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Salem",
        busNumber: "TN1975",
        fromArrival: "08:45 pm",
        toArrival: "03:45 pm",
        stops: [
          'Nilgiris',
          'Kallakurichi',
          'Tiruvannamalai',
          'Ariyalur',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Sivaganga",
        busNumber: "TN8097",
        fromArrival: "10:30 pm",
        toArrival: "08:30 am",
        stops: [
          'Nilgiris',
          'Vellore',
          'Kanchipuram',
          'Kanyakumari',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tenkasi",
        busNumber: "TN5958",
        fromArrival: "02:45 pm",
        toArrival: "10:30 pm",
        stops: ['Nilgiris', 'Madurai', 'Pudukkottai', 'Cuddalore', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Thanjavur",
        busNumber: "TN2217",
        fromArrival: "10:30 pm",
        toArrival: "07:30 am",
        stops: ['Nilgiris', 'Tirunelveli', 'Ranipet', 'Dindigul', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Theni",
        busNumber: "TN3527",
        fromArrival: "04:30 pm",
        toArrival: "05:30 am",
        stops: [
          'Nilgiris',
          'Namakkal',
          'Virudhunagar',
          'Tiruvannamalai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Thoothukudi",
        busNumber: "TN5153",
        fromArrival: "08:45 pm",
        toArrival: "05:45 pm",
        stops: ['Nilgiris', 'Namakkal', 'Chennai', 'Ranipet', 'Thoothukudi'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tiruchirappalli",
        busNumber: "TN9492",
        fromArrival: "05:00 pm",
        toArrival: "05:45 am",
        stops: [
          'Nilgiris',
          'Kanyakumari',
          'Viluppuram',
          'Virudhunagar',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tirunelveli",
        busNumber: "TN8243",
        fromArrival: "10:30 am",
        toArrival: "02:45 pm",
        stops: ['Nilgiris', 'Ranipet', 'Salem', 'Theni', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tirupathur",
        busNumber: "TN5714",
        fromArrival: "10:00 pm",
        toArrival: "06:15 pm",
        stops: ['Nilgiris', 'Erode', 'Ariyalur', 'Ranipet', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tiruppur",
        busNumber: "TN6279",
        fromArrival: "02:30 pm",
        toArrival: "07:45 am",
        stops: [
          'Nilgiris',
          'Tiruvallur',
          'Tiruvannamalai',
          'Viluppuram',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tiruvallur",
        busNumber: "TN3116",
        fromArrival: "06:15 pm",
        toArrival: "08:45 pm",
        stops: [
          'Nilgiris',
          'Viluppuram',
          'Perambalur',
          'Pudukkottai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tiruvannamalai",
        busNumber: "TN1820",
        fromArrival: "11:15 am",
        toArrival: "06:45 am",
        stops: [
          'Nilgiris',
          'Tirunelveli',
          'Thoothukudi',
          'Tirupathur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Tiruvarur",
        busNumber: "TN5612",
        fromArrival: "06:30 am",
        toArrival: "09:00 am",
        stops: [
          'Nilgiris',
          'Tiruvannamalai',
          'Coimbatore',
          'Erode',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Vellore",
        busNumber: "TN9446",
        fromArrival: "08:45 am",
        toArrival: "08:15 pm",
        stops: [
          'Nilgiris',
          'Thanjavur',
          'Ramanathapuram',
          'Cuddalore',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Viluppuram",
        busNumber: "TN3656",
        fromArrival: "08:00 pm",
        toArrival: "03:00 pm",
        stops: [
          'Nilgiris',
          'Chennai',
          'Tiruchirappalli',
          'Theni',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Virudhunagar",
        busNumber: "TN231",
        fromArrival: "12:00 pm",
        toArrival: "10:00 pm",
        stops: [
          'Nilgiris',
          'Tiruppur',
          'Kanyakumari',
          'Madurai',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Nilgiris",
        toCity: "Mayiladuthurai",
        busNumber: "TN6347",
        fromArrival: "01:45 pm",
        toArrival: "06:30 pm",
        stops: [
          'Nilgiris',
          'Coimbatore',
          'Tiruvallur',
          'Tiruvannamalai',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Ariyalur",
        busNumber: "TN1343",
        fromArrival: "11:00 am",
        toArrival: "04:45 pm",
        stops: [
          'Perambalur',
          'Chennai',
          'Tirupathur',
          'Kanchipuram',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Chengalpattu",
        busNumber: "TN6160",
        fromArrival: "08:45 pm",
        toArrival: "06:30 am",
        stops: [
          'Perambalur',
          'Ariyalur',
          'Viluppuram',
          'Tiruchirappalli',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Chennai",
        busNumber: "TN2225",
        fromArrival: "08:15 pm",
        toArrival: "08:45 pm",
        stops: ['Perambalur', 'Dharmapuri', 'Theni', 'Erode', 'Chennai'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Coimbatore",
        busNumber: "TN5262",
        fromArrival: "06:30 pm",
        toArrival: "01:15 pm",
        stops: [
          'Perambalur',
          'Ramanathapuram',
          'Salem',
          'Nagapattinam',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Cuddalore",
        busNumber: "TN5991",
        fromArrival: "02:30 pm",
        toArrival: "08:45 am",
        stops: [
          'Perambalur',
          'Mayiladuthurai',
          'Tiruvallur',
          'Nilgiris',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Dharmapuri",
        busNumber: "TN1827",
        fromArrival: "11:45 am",
        toArrival: "10:45 am",
        stops: [
          'Perambalur',
          'Nilgiris',
          'Tiruvallur',
          'Namakkal',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Dindigul",
        busNumber: "TN4740",
        fromArrival: "05:00 pm",
        toArrival: "01:30 pm",
        stops: ['Perambalur', 'Viluppuram', 'Vellore', 'Theni', 'Dindigul'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Erode",
        busNumber: "TN6187",
        fromArrival: "07:15 pm",
        toArrival: "12:45 pm",
        stops: [
          'Perambalur',
          'Dindigul',
          'Kallakurichi',
          'Thoothukudi',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Kallakurichi",
        busNumber: "TN9238",
        fromArrival: "02:45 pm",
        toArrival: "07:30 am",
        stops: ['Perambalur', 'Ariyalur', 'Vellore', 'Ranipet', 'Kallakurichi'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Kanchipuram",
        busNumber: "TN8930",
        fromArrival: "08:00 pm",
        toArrival: "07:15 pm",
        stops: [
          'Perambalur',
          'Ariyalur',
          'Dindigul',
          'Mayiladuthurai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Kanyakumari",
        busNumber: "TN2245",
        fromArrival: "08:30 pm",
        toArrival: "05:00 pm",
        stops: [
          'Perambalur',
          'Ranipet',
          'Tiruvannamalai',
          'Kanchipuram',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Karur",
        busNumber: "TN1741",
        fromArrival: "12:45 pm",
        toArrival: "03:45 pm",
        stops: ['Perambalur', 'Dindigul', 'Erode', 'Namakkal', 'Karur'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Krishnagiri",
        busNumber: "TN5328",
        fromArrival: "06:00 am",
        toArrival: "11:45 am",
        stops: [
          'Perambalur',
          'Pudukkottai',
          'Tirupathur',
          'Nagapattinam',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Madurai",
        busNumber: "TN7439",
        fromArrival: "05:00 pm",
        toArrival: "09:00 am",
        stops: [
          'Perambalur',
          'Vellore',
          'Ramanathapuram',
          'Chengalpattu',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Nagapattinam",
        busNumber: "TN7813",
        fromArrival: "01:00 pm",
        toArrival: "09:15 am",
        stops: [
          'Perambalur',
          'Tiruppur',
          'Thanjavur',
          'Tiruvallur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Namakkal",
        busNumber: "TN6192",
        fromArrival: "10:45 am",
        toArrival: "06:00 pm",
        stops: ['Perambalur', 'Kanyakumari', 'Viluppuram', 'Salem', 'Namakkal'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Nilgiris",
        busNumber: "TN1697",
        fromArrival: "05:30 am",
        toArrival: "09:45 am",
        stops: ['Perambalur', 'Ariyalur', 'Tiruppur', 'Dharmapuri', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Pudukkottai",
        busNumber: "TN7832",
        fromArrival: "07:30 am",
        toArrival: "02:15 pm",
        stops: [
          'Perambalur',
          'Chengalpattu',
          'Viluppuram',
          'Tiruppur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Ramanathapuram",
        busNumber: "TN9034",
        fromArrival: "06:45 am",
        toArrival: "03:45 pm",
        stops: [
          'Perambalur',
          'Theni',
          'Tiruppur',
          'Dindigul',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Ranipet",
        busNumber: "TN3474",
        fromArrival: "08:00 am",
        toArrival: "09:45 pm",
        stops: ['Perambalur', 'Vellore', 'Tirupathur', 'Dindigul', 'Ranipet'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Salem",
        busNumber: "TN5593",
        fromArrival: "08:15 am",
        toArrival: "10:00 pm",
        stops: ['Perambalur', 'Tirupathur', 'Madurai', 'Kallakurichi', 'Salem'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Sivaganga",
        busNumber: "TN1148",
        fromArrival: "08:30 am",
        toArrival: "04:45 pm",
        stops: ['Perambalur', 'Tiruvallur', 'Madurai', 'Namakkal', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tenkasi",
        busNumber: "TN2161",
        fromArrival: "07:15 am",
        toArrival: "05:45 pm",
        stops: ['Perambalur', 'Theni', 'Kanchipuram', 'Cuddalore', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Thanjavur",
        busNumber: "TN9126",
        fromArrival: "05:15 pm",
        toArrival: "07:00 am",
        stops: ['Perambalur', 'Dindigul', 'Nagapattinam', 'Karur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Theni",
        busNumber: "TN4835",
        fromArrival: "10:30 am",
        toArrival: "07:45 pm",
        stops: [
          'Perambalur',
          'Virudhunagar',
          'Tirunelveli',
          'Nagapattinam',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Thoothukudi",
        busNumber: "TN6762",
        fromArrival: "06:15 pm",
        toArrival: "03:30 pm",
        stops: [
          'Perambalur',
          'Nagapattinam',
          'Tirupathur',
          'Tiruvarur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tiruchirappalli",
        busNumber: "TN6244",
        fromArrival: "09:00 pm",
        toArrival: "12:45 pm",
        stops: [
          'Perambalur',
          'Madurai',
          'Tiruvallur',
          'Chennai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tirunelveli",
        busNumber: "TN8662",
        fromArrival: "01:00 pm",
        toArrival: "05:30 am",
        stops: ['Perambalur', 'Ranipet', 'Madurai', 'Namakkal', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tirupathur",
        busNumber: "TN1433",
        fromArrival: "10:45 pm",
        toArrival: "07:15 pm",
        stops: [
          'Perambalur',
          'Tiruppur',
          'Tiruvannamalai',
          'Tenkasi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tiruppur",
        busNumber: "TN7884",
        fromArrival: "05:15 pm",
        toArrival: "10:45 pm",
        stops: ['Perambalur', 'Vellore', 'Madurai', 'Chengalpattu', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tiruvallur",
        busNumber: "TN4955",
        fromArrival: "07:30 am",
        toArrival: "06:45 pm",
        stops: [
          'Perambalur',
          'Cuddalore',
          'Tiruchirappalli',
          'Mayiladuthurai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tiruvannamalai",
        busNumber: "TN5557",
        fromArrival: "10:00 pm",
        toArrival: "07:45 pm",
        stops: [
          'Perambalur',
          'Mayiladuthurai',
          'Salem',
          'Madurai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Tiruvarur",
        busNumber: "TN8110",
        fromArrival: "09:15 pm",
        toArrival: "05:00 am",
        stops: ['Perambalur', 'Ranipet', 'Tenkasi', 'Salem', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Vellore",
        busNumber: "TN5368",
        fromArrival: "08:00 pm",
        toArrival: "09:30 pm",
        stops: [
          'Perambalur',
          'Tirupathur',
          'Tirunelveli',
          'Dharmapuri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Viluppuram",
        busNumber: "TN1488",
        fromArrival: "10:15 pm",
        toArrival: "11:45 am",
        stops: [
          'Perambalur',
          'Tiruchirappalli',
          'Pudukkottai',
          'Tiruvallur',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Virudhunagar",
        busNumber: "TN1515",
        fromArrival: "10:45 am",
        toArrival: "02:45 pm",
        stops: [
          'Perambalur',
          'Nagapattinam',
          'Thanjavur',
          'Coimbatore',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Perambalur",
        toCity: "Mayiladuthurai",
        busNumber: "TN3943",
        fromArrival: "09:15 am",
        toArrival: "10:30 am",
        stops: [
          'Perambalur',
          'Tiruchirappalli',
          'Tiruvallur',
          'Kallakurichi',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Ariyalur",
        busNumber: "TN6547",
        fromArrival: "01:00 pm",
        toArrival: "04:30 pm",
        stops: [
          'Pudukkottai',
          'Ramanathapuram',
          'Mayiladuthurai',
          'Salem',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Chengalpattu",
        busNumber: "TN3567",
        fromArrival: "03:45 pm",
        toArrival: "02:45 pm",
        stops: [
          'Pudukkottai',
          'Chennai',
          'Mayiladuthurai',
          'Dindigul',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Chennai",
        busNumber: "TN6549",
        fromArrival: "05:00 am",
        toArrival: "10:15 am",
        stops: [
          'Pudukkottai',
          'Karur',
          'Chengalpattu',
          'Tirupathur',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Coimbatore",
        busNumber: "TN8758",
        fromArrival: "05:30 am",
        toArrival: "08:30 am",
        stops: [
          'Pudukkottai',
          'Tirupathur',
          'Cuddalore',
          'Dharmapuri',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Cuddalore",
        busNumber: "TN3641",
        fromArrival: "08:45 am",
        toArrival: "08:15 am",
        stops: ['Pudukkottai', 'Karur', 'Erode', 'Ranipet', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Dharmapuri",
        busNumber: "TN8736",
        fromArrival: "09:00 am",
        toArrival: "01:00 pm",
        stops: [
          'Pudukkottai',
          'Perambalur',
          'Nagapattinam',
          'Ranipet',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Dindigul",
        busNumber: "TN6251",
        fromArrival: "11:45 am",
        toArrival: "10:30 am",
        stops: [
          'Pudukkottai',
          'Madurai',
          'Nagapattinam',
          'Coimbatore',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Erode",
        busNumber: "TN9980",
        fromArrival: "08:00 am",
        toArrival: "05:15 am",
        stops: ['Pudukkottai', 'Salem', 'Tiruvarur', 'Coimbatore', 'Erode'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Kallakurichi",
        busNumber: "TN2366",
        fromArrival: "12:45 pm",
        toArrival: "04:30 pm",
        stops: [
          'Pudukkottai',
          'Namakkal',
          'Chengalpattu',
          'Thanjavur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Kanchipuram",
        busNumber: "TN9444",
        fromArrival: "08:00 pm",
        toArrival: "10:15 pm",
        stops: [
          'Pudukkottai',
          'Namakkal',
          'Chengalpattu',
          'Dindigul',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Kanyakumari",
        busNumber: "TN5990",
        fromArrival: "06:45 pm",
        toArrival: "06:15 am",
        stops: [
          'Pudukkottai',
          'Tiruvarur',
          'Tirupathur',
          'Chennai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Karur",
        busNumber: "TN317",
        fromArrival: "11:45 am",
        toArrival: "08:45 pm",
        stops: [
          'Pudukkottai',
          'Kallakurichi',
          'Nagapattinam',
          'Namakkal',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Krishnagiri",
        busNumber: "TN7015",
        fromArrival: "08:00 pm",
        toArrival: "03:15 pm",
        stops: ['Pudukkottai', 'Cuddalore', 'Salem', 'Tiruppur', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Madurai",
        busNumber: "TN1476",
        fromArrival: "10:30 am",
        toArrival: "10:15 pm",
        stops: ['Pudukkottai', 'Namakkal', 'Kanyakumari', 'Salem', 'Madurai'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Nagapattinam",
        busNumber: "TN2881",
        fromArrival: "09:30 am",
        toArrival: "10:00 pm",
        stops: ['Pudukkottai', 'Tenkasi', 'Madurai', 'Erode', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Namakkal",
        busNumber: "TN6779",
        fromArrival: "03:00 pm",
        toArrival: "08:30 am",
        stops: [
          'Pudukkottai',
          'Mayiladuthurai',
          'Ariyalur',
          'Chengalpattu',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Nilgiris",
        busNumber: "TN3432",
        fromArrival: "08:45 am",
        toArrival: "08:15 am",
        stops: [
          'Pudukkottai',
          'Ariyalur',
          'Thanjavur',
          'Tirupathur',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Perambalur",
        busNumber: "TN9164",
        fromArrival: "10:15 am",
        toArrival: "07:30 am",
        stops: [
          'Pudukkottai',
          'Thanjavur',
          'Tiruchirappalli',
          'Salem',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Ramanathapuram",
        busNumber: "TN8329",
        fromArrival: "08:00 pm",
        toArrival: "10:45 pm",
        stops: [
          'Pudukkottai',
          'Ariyalur',
          'Krishnagiri',
          'Nagapattinam',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Ranipet",
        busNumber: "TN547",
        fromArrival: "07:30 am",
        toArrival: "10:15 am",
        stops: [
          'Pudukkottai',
          'Thoothukudi',
          'Dharmapuri',
          'Kanyakumari',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Salem",
        busNumber: "TN978",
        fromArrival: "06:45 am",
        toArrival: "07:00 pm",
        stops: [
          'Pudukkottai',
          'Tiruvarur',
          'Thanjavur',
          'Virudhunagar',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Sivaganga",
        busNumber: "TN4193",
        fromArrival: "04:15 pm",
        toArrival: "02:45 pm",
        stops: ['Pudukkottai', 'Theni', 'Tirupathur', 'Tenkasi', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tenkasi",
        busNumber: "TN2683",
        fromArrival: "12:45 pm",
        toArrival: "03:45 pm",
        stops: [
          'Pudukkottai',
          'Nagapattinam',
          'Madurai',
          'Ramanathapuram',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Thanjavur",
        busNumber: "TN3175",
        fromArrival: "03:45 pm",
        toArrival: "08:00 am",
        stops: [
          'Pudukkottai',
          'Ramanathapuram',
          'Krishnagiri',
          'Erode',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Theni",
        busNumber: "TN5532",
        fromArrival: "04:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Pudukkottai',
          'Chengalpattu',
          'Tiruvallur',
          'Ariyalur',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Thoothukudi",
        busNumber: "TN9034",
        fromArrival: "10:00 am",
        toArrival: "10:30 pm",
        stops: [
          'Pudukkottai',
          'Perambalur',
          'Virudhunagar',
          'Mayiladuthurai',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tiruchirappalli",
        busNumber: "TN4781",
        fromArrival: "06:45 am",
        toArrival: "10:45 pm",
        stops: [
          'Pudukkottai',
          'Mayiladuthurai',
          'Tenkasi',
          'Tiruvannamalai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tirunelveli",
        busNumber: "TN9020",
        fromArrival: "05:45 am",
        toArrival: "06:15 pm",
        stops: [
          'Pudukkottai',
          'Chengalpattu',
          'Nagapattinam',
          'Viluppuram',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tirupathur",
        busNumber: "TN8924",
        fromArrival: "02:45 pm",
        toArrival: "07:00 pm",
        stops: [
          'Pudukkottai',
          'Tiruvarur',
          'Namakkal',
          'Cuddalore',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tiruppur",
        busNumber: "TN4879",
        fromArrival: "05:45 pm",
        toArrival: "07:30 am",
        stops: ['Pudukkottai', 'Theni', 'Erode', 'Kanchipuram', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tiruvallur",
        busNumber: "TN9466",
        fromArrival: "07:15 pm",
        toArrival: "12:00 pm",
        stops: [
          'Pudukkottai',
          'Erode',
          'Viluppuram',
          'Chengalpattu',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tiruvannamalai",
        busNumber: "TN9270",
        fromArrival: "11:15 am",
        toArrival: "10:30 pm",
        stops: [
          'Pudukkottai',
          'Viluppuram',
          'Namakkal',
          'Dindigul',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Tiruvarur",
        busNumber: "TN5485",
        fromArrival: "08:15 am",
        toArrival: "02:15 pm",
        stops: [
          'Pudukkottai',
          'Dharmapuri',
          'Coimbatore',
          'Sivaganga',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Vellore",
        busNumber: "TN565",
        fromArrival: "09:15 am",
        toArrival: "04:15 pm",
        stops: [
          'Pudukkottai',
          'Chennai',
          'Krishnagiri',
          'Kanyakumari',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Viluppuram",
        busNumber: "TN354",
        fromArrival: "05:15 pm",
        toArrival: "08:30 am",
        stops: ['Pudukkottai', 'Chennai', 'Salem', 'Namakkal', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Virudhunagar",
        busNumber: "TN4192",
        fromArrival: "10:45 pm",
        toArrival: "09:45 am",
        stops: [
          'Pudukkottai',
          'Kanchipuram',
          'Viluppuram',
          'Theni',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Pudukkottai",
        toCity: "Mayiladuthurai",
        busNumber: "TN4492",
        fromArrival: "04:45 pm",
        toArrival: "03:45 pm",
        stops: [
          'Pudukkottai',
          'Kanyakumari',
          'Karur',
          'Chengalpattu',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Ariyalur",
        busNumber: "TN8955",
        fromArrival: "08:15 pm",
        toArrival: "10:15 pm",
        stops: [
          'Ramanathapuram',
          'Tiruppur',
          'Kanyakumari',
          'Salem',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Chengalpattu",
        busNumber: "TN4478",
        fromArrival: "08:15 pm",
        toArrival: "08:15 pm",
        stops: [
          'Ramanathapuram',
          'Nilgiris',
          'Kanchipuram',
          'Tirupathur',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Chennai",
        busNumber: "TN8616",
        fromArrival: "02:45 pm",
        toArrival: "02:15 pm",
        stops: ['Ramanathapuram', 'Karur', 'Erode', 'Nagapattinam', 'Chennai'],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Coimbatore",
        busNumber: "TN3127",
        fromArrival: "07:30 am",
        toArrival: "05:30 pm",
        stops: [
          'Ramanathapuram',
          'Pudukkottai',
          'Karur',
          'Tenkasi',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Cuddalore",
        busNumber: "TN3270",
        fromArrival: "08:00 am",
        toArrival: "09:15 pm",
        stops: [
          'Ramanathapuram',
          'Kanchipuram',
          'Tiruppur',
          'Coimbatore',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Dharmapuri",
        busNumber: "TN6838",
        fromArrival: "09:15 pm",
        toArrival: "07:45 am",
        stops: [
          'Ramanathapuram',
          'Erode',
          'Mayiladuthurai',
          'Nilgiris',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Dindigul",
        busNumber: "TN2047",
        fromArrival: "01:30 pm",
        toArrival: "09:15 am",
        stops: [
          'Ramanathapuram',
          'Ariyalur',
          'Tirunelveli',
          'Kallakurichi',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Erode",
        busNumber: "TN3312",
        fromArrival: "05:00 am",
        toArrival: "10:45 am",
        stops: [
          'Ramanathapuram',
          'Dindigul',
          'Ranipet',
          'Tiruvannamalai',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Kallakurichi",
        busNumber: "TN4511",
        fromArrival: "05:30 pm",
        toArrival: "08:00 am",
        stops: [
          'Ramanathapuram',
          'Tirunelveli',
          'Sivaganga',
          'Mayiladuthurai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Kanchipuram",
        busNumber: "TN5570",
        fromArrival: "02:00 pm",
        toArrival: "02:00 pm",
        stops: [
          'Ramanathapuram',
          'Krishnagiri',
          'Tirunelveli',
          'Madurai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Kanyakumari",
        busNumber: "TN5972",
        fromArrival: "04:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Ramanathapuram',
          'Tiruvallur',
          'Chennai',
          'Madurai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Karur",
        busNumber: "TN2530",
        fromArrival: "03:00 pm",
        toArrival: "09:00 pm",
        stops: ['Ramanathapuram', 'Theni', 'Vellore', 'Madurai', 'Karur'],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Krishnagiri",
        busNumber: "TN6287",
        fromArrival: "11:00 am",
        toArrival: "07:45 pm",
        stops: [
          'Ramanathapuram',
          'Thanjavur',
          'Dindigul',
          'Kanchipuram',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Madurai",
        busNumber: "TN2215",
        fromArrival: "09:45 am",
        toArrival: "04:30 pm",
        stops: [
          'Ramanathapuram',
          'Tiruvannamalai',
          'Namakkal',
          'Karur',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Nagapattinam",
        busNumber: "TN3972",
        fromArrival: "06:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Ramanathapuram',
          'Tiruvarur',
          'Coimbatore',
          'Dindigul',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Namakkal",
        busNumber: "TN8835",
        fromArrival: "08:30 pm",
        toArrival: "02:15 pm",
        stops: [
          'Ramanathapuram',
          'Ariyalur',
          'Ranipet',
          'Tirunelveli',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Nilgiris",
        busNumber: "TN6813",
        fromArrival: "07:45 pm",
        toArrival: "04:30 pm",
        stops: [
          'Ramanathapuram',
          'Tiruvannamalai',
          'Salem',
          'Sivaganga',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Perambalur",
        busNumber: "TN3151",
        fromArrival: "12:00 pm",
        toArrival: "08:30 am",
        stops: [
          'Ramanathapuram',
          'Virudhunagar',
          'Tenkasi',
          'Tirunelveli',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Pudukkottai",
        busNumber: "TN379",
        fromArrival: "07:15 am",
        toArrival: "12:30 pm",
        stops: [
          'Ramanathapuram',
          'Perambalur',
          'Kanchipuram',
          'Tiruvallur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Ranipet",
        busNumber: "TN8991",
        fromArrival: "07:30 am",
        toArrival: "05:15 pm",
        stops: [
          'Ramanathapuram',
          'Virudhunagar',
          'Pudukkottai',
          'Kanchipuram',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Salem",
        busNumber: "TN4438",
        fromArrival: "11:00 am",
        toArrival: "12:45 pm",
        stops: ['Ramanathapuram', 'Tiruvarur', 'Ariyalur', 'Theni', 'Salem'],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Sivaganga",
        busNumber: "TN5769",
        fromArrival: "08:30 pm",
        toArrival: "06:30 am",
        stops: [
          'Ramanathapuram',
          'Chennai',
          'Theni',
          'Pudukkottai',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tenkasi",
        busNumber: "TN6168",
        fromArrival: "08:15 pm",
        toArrival: "02:30 pm",
        stops: ['Ramanathapuram', 'Salem', 'Nagapattinam', 'Karur', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Thanjavur",
        busNumber: "TN1684",
        fromArrival: "08:30 am",
        toArrival: "10:30 pm",
        stops: [
          'Ramanathapuram',
          'Thoothukudi',
          'Perambalur',
          'Kanyakumari',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Theni",
        busNumber: "TN3370",
        fromArrival: "12:45 pm",
        toArrival: "12:00 pm",
        stops: [
          'Ramanathapuram',
          'Tiruvannamalai',
          'Viluppuram',
          'Cuddalore',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Thoothukudi",
        busNumber: "TN5160",
        fromArrival: "10:30 pm",
        toArrival: "11:45 am",
        stops: [
          'Ramanathapuram',
          'Chennai',
          'Coimbatore',
          'Krishnagiri',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tiruchirappalli",
        busNumber: "TN6279",
        fromArrival: "01:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Ramanathapuram',
          'Mayiladuthurai',
          'Nagapattinam',
          'Dharmapuri',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tirunelveli",
        busNumber: "TN357",
        fromArrival: "08:15 pm",
        toArrival: "06:45 am",
        stops: [
          'Ramanathapuram',
          'Virudhunagar',
          'Namakkal',
          'Perambalur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tirupathur",
        busNumber: "TN928",
        fromArrival: "11:15 am",
        toArrival: "09:15 am",
        stops: [
          'Ramanathapuram',
          'Tiruvallur',
          'Viluppuram',
          'Tenkasi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tiruppur",
        busNumber: "TN4847",
        fromArrival: "07:00 am",
        toArrival: "01:30 pm",
        stops: ['Ramanathapuram', 'Theni', 'Sivaganga', 'Ranipet', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tiruvallur",
        busNumber: "TN2550",
        fromArrival: "06:00 am",
        toArrival: "10:45 pm",
        stops: [
          'Ramanathapuram',
          'Tiruvarur',
          'Tirupathur',
          'Nagapattinam',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tiruvannamalai",
        busNumber: "TN7748",
        fromArrival: "02:15 pm",
        toArrival: "10:15 am",
        stops: [
          'Ramanathapuram',
          'Nilgiris',
          'Ariyalur',
          'Tiruvallur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Tiruvarur",
        busNumber: "TN9939",
        fromArrival: "05:45 pm",
        toArrival: "05:45 pm",
        stops: [
          'Ramanathapuram',
          'Thanjavur',
          'Namakkal',
          'Tenkasi',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Vellore",
        busNumber: "TN8391",
        fromArrival: "07:45 pm",
        toArrival: "06:00 pm",
        stops: [
          'Ramanathapuram',
          'Krishnagiri',
          'Chengalpattu',
          'Dindigul',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Viluppuram",
        busNumber: "TN1887",
        fromArrival: "05:45 pm",
        toArrival: "03:45 pm",
        stops: [
          'Ramanathapuram',
          'Chennai',
          'Kanyakumari',
          'Tiruvarur',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Virudhunagar",
        busNumber: "TN6339",
        fromArrival: "08:00 am",
        toArrival: "11:15 am",
        stops: [
          'Ramanathapuram',
          'Krishnagiri',
          'Ariyalur',
          'Chengalpattu',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Ramanathapuram",
        toCity: "Mayiladuthurai",
        busNumber: "TN3478",
        fromArrival: "10:00 am",
        toArrival: "10:45 pm",
        stops: [
          'Ramanathapuram',
          'Madurai',
          'Tiruvallur',
          'Tenkasi',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Ariyalur",
        busNumber: "TN7997",
        fromArrival: "06:00 pm",
        toArrival: "02:45 pm",
        stops: ['Ranipet', 'Erode', 'Virudhunagar', 'Kanyakumari', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Chengalpattu",
        busNumber: "TN1486",
        fromArrival: "04:45 pm",
        toArrival: "10:45 pm",
        stops: [
          'Ranipet',
          'Tirunelveli',
          'Virudhunagar',
          'Nagapattinam',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Chennai",
        busNumber: "TN1046",
        fromArrival: "12:45 pm",
        toArrival: "01:15 pm",
        stops: [
          'Ranipet',
          'Kanyakumari',
          'Virudhunagar',
          'Krishnagiri',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Coimbatore",
        busNumber: "TN4119",
        fromArrival: "09:30 pm",
        toArrival: "01:15 pm",
        stops: ['Ranipet', 'Tenkasi', 'Tiruvallur', 'Tirupathur', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Cuddalore",
        busNumber: "TN809",
        fromArrival: "09:30 am",
        toArrival: "07:00 pm",
        stops: ['Ranipet', 'Tiruppur', 'Kanyakumari', 'Sivaganga', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Dharmapuri",
        busNumber: "TN6462",
        fromArrival: "10:45 pm",
        toArrival: "11:00 am",
        stops: [
          'Ranipet',
          'Tiruchirappalli',
          'Pudukkottai',
          'Dindigul',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Dindigul",
        busNumber: "TN5646",
        fromArrival: "04:15 pm",
        toArrival: "09:30 am",
        stops: [
          'Ranipet',
          'Tiruchirappalli',
          'Dharmapuri',
          'Salem',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Erode",
        busNumber: "TN2434",
        fromArrival: "04:00 pm",
        toArrival: "02:15 pm",
        stops: ['Ranipet', 'Kanchipuram', 'Madurai', 'Theni', 'Erode'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Kallakurichi",
        busNumber: "TN4868",
        fromArrival: "02:45 pm",
        toArrival: "05:30 am",
        stops: ['Ranipet', 'Perambalur', 'Thanjavur', 'Salem', 'Kallakurichi'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Kanchipuram",
        busNumber: "TN6127",
        fromArrival: "06:15 pm",
        toArrival: "05:00 pm",
        stops: [
          'Ranipet',
          'Pudukkottai',
          'Tiruchirappalli',
          'Tirunelveli',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Kanyakumari",
        busNumber: "TN4294",
        fromArrival: "05:15 am",
        toArrival: "08:30 am",
        stops: ['Ranipet', 'Kanchipuram', 'Sivaganga', 'Karur', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Karur",
        busNumber: "TN4183",
        fromArrival: "10:00 am",
        toArrival: "05:45 am",
        stops: ['Ranipet', 'Dharmapuri', 'Dindigul', 'Tiruvallur', 'Karur'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Krishnagiri",
        busNumber: "TN9886",
        fromArrival: "06:15 pm",
        toArrival: "05:15 am",
        stops: [
          'Ranipet',
          'Dharmapuri',
          'Tiruvannamalai',
          'Namakkal',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Madurai",
        busNumber: "TN6437",
        fromArrival: "03:45 pm",
        toArrival: "05:45 am",
        stops: ['Ranipet', 'Dharmapuri', 'Karur', 'Erode', 'Madurai'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Nagapattinam",
        busNumber: "TN7428",
        fromArrival: "08:00 am",
        toArrival: "05:30 am",
        stops: ['Ranipet', 'Salem', 'Vellore', 'Erode', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Namakkal",
        busNumber: "TN6260",
        fromArrival: "08:45 pm",
        toArrival: "12:45 pm",
        stops: ['Ranipet', 'Kanyakumari', 'Kanchipuram', 'Chennai', 'Namakkal'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Nilgiris",
        busNumber: "TN9028",
        fromArrival: "08:00 pm",
        toArrival: "03:00 pm",
        stops: ['Ranipet', 'Vellore', 'Karur', 'Namakkal', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Perambalur",
        busNumber: "TN8033",
        fromArrival: "08:30 pm",
        toArrival: "03:30 pm",
        stops: ['Ranipet', 'Ariyalur', 'Thanjavur', 'Nilgiris', 'Perambalur'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Pudukkottai",
        busNumber: "TN4985",
        fromArrival: "06:00 am",
        toArrival: "07:00 am",
        stops: ['Ranipet', 'Sivaganga', 'Nilgiris', 'Tiruvarur', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Ramanathapuram",
        busNumber: "TN8116",
        fromArrival: "06:45 pm",
        toArrival: "11:45 am",
        stops: [
          'Ranipet',
          'Thoothukudi',
          'Tiruppur',
          'Cuddalore',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Salem",
        busNumber: "TN9918",
        fromArrival: "05:15 pm",
        toArrival: "10:45 am",
        stops: ['Ranipet', 'Tenkasi', 'Tiruvallur', 'Mayiladuthurai', 'Salem'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Sivaganga",
        busNumber: "TN3228",
        fromArrival: "10:15 pm",
        toArrival: "09:45 am",
        stops: ['Ranipet', 'Dharmapuri', 'Salem', 'Erode', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tenkasi",
        busNumber: "TN7747",
        fromArrival: "07:45 am",
        toArrival: "02:00 pm",
        stops: [
          'Ranipet',
          'Krishnagiri',
          'Kanchipuram',
          'Tiruvallur',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Thanjavur",
        busNumber: "TN9337",
        fromArrival: "07:45 am",
        toArrival: "08:15 pm",
        stops: ['Ranipet', 'Tirupathur', 'Sivaganga', 'Karur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Theni",
        busNumber: "TN7792",
        fromArrival: "05:00 pm",
        toArrival: "09:45 am",
        stops: [
          'Ranipet',
          'Tirupathur',
          'Tiruchirappalli',
          'Thanjavur',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Thoothukudi",
        busNumber: "TN4623",
        fromArrival: "06:15 am",
        toArrival: "05:30 am",
        stops: [
          'Ranipet',
          'Chengalpattu',
          'Cuddalore',
          'Tiruppur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tiruchirappalli",
        busNumber: "TN4618",
        fromArrival: "07:15 pm",
        toArrival: "05:30 am",
        stops: [
          'Ranipet',
          'Chengalpattu',
          'Chennai',
          'Dindigul',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tirunelveli",
        busNumber: "TN1275",
        fromArrival: "06:30 am",
        toArrival: "09:30 pm",
        stops: [
          'Ranipet',
          'Mayiladuthurai',
          'Nilgiris',
          'Kanyakumari',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tirupathur",
        busNumber: "TN9727",
        fromArrival: "04:45 pm",
        toArrival: "08:45 pm",
        stops: [
          'Ranipet',
          'Ramanathapuram',
          'Madurai',
          'Mayiladuthurai',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tiruppur",
        busNumber: "TN6950",
        fromArrival: "03:30 pm",
        toArrival: "06:15 pm",
        stops: [
          'Ranipet',
          'Cuddalore',
          'Tirupathur',
          'Chengalpattu',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tiruvallur",
        busNumber: "TN5579",
        fromArrival: "03:45 pm",
        toArrival: "03:00 pm",
        stops: [
          'Ranipet',
          'Chennai',
          'Tenkasi',
          'Ramanathapuram',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tiruvannamalai",
        busNumber: "TN9337",
        fromArrival: "07:15 pm",
        toArrival: "02:30 pm",
        stops: [
          'Ranipet',
          'Tiruchirappalli',
          'Viluppuram',
          'Ramanathapuram',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Tiruvarur",
        busNumber: "TN2798",
        fromArrival: "08:45 pm",
        toArrival: "11:45 am",
        stops: ['Ranipet', 'Nagapattinam', 'Cuddalore', 'Erode', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Vellore",
        busNumber: "TN7214",
        fromArrival: "08:45 pm",
        toArrival: "04:45 pm",
        stops: [
          'Ranipet',
          'Sivaganga',
          'Mayiladuthurai',
          'Krishnagiri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Viluppuram",
        busNumber: "TN9025",
        fromArrival: "06:15 pm",
        toArrival: "05:15 am",
        stops: ['Ranipet', 'Theni', 'Virudhunagar', 'Tiruvarur', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Virudhunagar",
        busNumber: "TN5919",
        fromArrival: "06:45 pm",
        toArrival: "12:00 pm",
        stops: [
          'Ranipet',
          'Coimbatore',
          'Tirupathur',
          'Kanyakumari',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Ranipet",
        toCity: "Mayiladuthurai",
        busNumber: "TN9166",
        fromArrival: "10:45 am",
        toArrival: "10:45 am",
        stops: [
          'Ranipet',
          'Viluppuram',
          'Theni',
          'Tiruvarur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Ariyalur",
        busNumber: "TN2432",
        fromArrival: "09:45 am",
        toArrival: "08:15 am",
        stops: ['Salem', 'Coimbatore', 'Chengalpattu', 'Nilgiris', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Chengalpattu",
        busNumber: "TN7483",
        fromArrival: "01:45 pm",
        toArrival: "11:00 am",
        stops: [
          'Salem',
          'Thoothukudi',
          'Kanchipuram',
          'Dharmapuri',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Chennai",
        busNumber: "TN7867",
        fromArrival: "06:45 am",
        toArrival: "05:15 pm",
        stops: ['Salem', 'Tenkasi', 'Ramanathapuram', 'Krishnagiri', 'Chennai'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Coimbatore",
        busNumber: "TN692",
        fromArrival: "01:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Salem',
          'Viluppuram',
          'Tiruchirappalli',
          'Tiruvannamalai',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Cuddalore",
        busNumber: "TN3253",
        fromArrival: "05:45 am",
        toArrival: "10:45 pm",
        stops: ['Salem', 'Chennai', 'Nagapattinam', 'Theni', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Dharmapuri",
        busNumber: "TN895",
        fromArrival: "06:15 am",
        toArrival: "10:15 pm",
        stops: ['Salem', 'Madurai', 'Pudukkottai', 'Perambalur', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Dindigul",
        busNumber: "TN5268",
        fromArrival: "08:00 am",
        toArrival: "11:15 am",
        stops: [
          'Salem',
          'Thanjavur',
          'Krishnagiri',
          'Tiruchirappalli',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Erode",
        busNumber: "TN8649",
        fromArrival: "06:30 pm",
        toArrival: "09:45 am",
        stops: ['Salem', 'Tiruvarur', 'Chengalpattu', 'Dindigul', 'Erode'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Kallakurichi",
        busNumber: "TN8687",
        fromArrival: "10:00 am",
        toArrival: "07:00 am",
        stops: [
          'Salem',
          'Ranipet',
          'Tenkasi',
          'Tiruchirappalli',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Kanchipuram",
        busNumber: "TN2461",
        fromArrival: "03:15 pm",
        toArrival: "10:00 am",
        stops: ['Salem', 'Madurai', 'Chennai', 'Kallakurichi', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Kanyakumari",
        busNumber: "TN7518",
        fromArrival: "11:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Salem',
          'Cuddalore',
          'Dharmapuri',
          'Mayiladuthurai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Karur",
        busNumber: "TN7014",
        fromArrival: "08:15 am",
        toArrival: "09:45 pm",
        stops: ['Salem', 'Tiruvannamalai', 'Perambalur', 'Thanjavur', 'Karur'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Krishnagiri",
        busNumber: "TN5914",
        fromArrival: "12:15 pm",
        toArrival: "06:45 am",
        stops: ['Salem', 'Madurai', 'Erode', 'Vellore', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Madurai",
        busNumber: "TN6336",
        fromArrival: "08:15 pm",
        toArrival: "08:15 pm",
        stops: ['Salem', 'Krishnagiri', 'Kanyakumari', 'Karur', 'Madurai'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Nagapattinam",
        busNumber: "TN5968",
        fromArrival: "04:45 pm",
        toArrival: "03:00 pm",
        stops: ['Salem', 'Vellore', 'Tirupathur', 'Nilgiris', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Namakkal",
        busNumber: "TN2144",
        fromArrival: "09:30 am",
        toArrival: "06:00 am",
        stops: ['Salem', 'Dharmapuri', 'Erode', 'Chengalpattu', 'Namakkal'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Nilgiris",
        busNumber: "TN1560",
        fromArrival: "06:00 pm",
        toArrival: "07:30 pm",
        stops: ['Salem', 'Dindigul', 'Dharmapuri', 'Kanchipuram', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Perambalur",
        busNumber: "TN9529",
        fromArrival: "07:15 pm",
        toArrival: "03:45 pm",
        stops: [
          'Salem',
          'Tirunelveli',
          'Dindigul',
          'Tiruvannamalai',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Pudukkottai",
        busNumber: "TN8168",
        fromArrival: "10:30 am",
        toArrival: "06:00 am",
        stops: ['Salem', 'Tiruppur', 'Vellore', 'Nilgiris', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Ramanathapuram",
        busNumber: "TN1037",
        fromArrival: "07:00 pm",
        toArrival: "09:00 am",
        stops: ['Salem', 'Tenkasi', 'Namakkal', 'Karur', 'Ramanathapuram'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Ranipet",
        busNumber: "TN2638",
        fromArrival: "12:30 pm",
        toArrival: "01:45 pm",
        stops: ['Salem', 'Perambalur', 'Tiruvarur', 'Ariyalur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Sivaganga",
        busNumber: "TN7217",
        fromArrival: "09:15 am",
        toArrival: "06:45 am",
        stops: ['Salem', 'Tiruvannamalai', 'Karur', 'Vellore', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tenkasi",
        busNumber: "TN8941",
        fromArrival: "01:00 pm",
        toArrival: "07:15 am",
        stops: [
          'Salem',
          'Madurai',
          'Ramanathapuram',
          'Tiruvannamalai',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Thanjavur",
        busNumber: "TN7661",
        fromArrival: "08:30 pm",
        toArrival: "09:45 am",
        stops: ['Salem', 'Dindigul', 'Karur', 'Kanyakumari', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Theni",
        busNumber: "TN6992",
        fromArrival: "07:30 am",
        toArrival: "02:45 pm",
        stops: ['Salem', 'Erode', 'Ariyalur', 'Tirupathur', 'Theni'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Thoothukudi",
        busNumber: "TN8735",
        fromArrival: "06:15 am",
        toArrival: "07:45 pm",
        stops: [
          'Salem',
          'Madurai',
          'Ranipet',
          'Tiruchirappalli',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tiruchirappalli",
        busNumber: "TN8830",
        fromArrival: "10:30 am",
        toArrival: "11:15 am",
        stops: [
          'Salem',
          'Viluppuram',
          'Thanjavur',
          'Thoothukudi',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tirunelveli",
        busNumber: "TN9519",
        fromArrival: "01:00 pm",
        toArrival: "08:00 pm",
        stops: [
          'Salem',
          'Mayiladuthurai',
          'Cuddalore',
          'Perambalur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tirupathur",
        busNumber: "TN6393",
        fromArrival: "01:00 pm",
        toArrival: "02:45 pm",
        stops: ['Salem', 'Ranipet', 'Krishnagiri', 'Tiruvarur', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tiruppur",
        busNumber: "TN2074",
        fromArrival: "10:30 am",
        toArrival: "10:45 am",
        stops: [
          'Salem',
          'Perambalur',
          'Tiruchirappalli',
          'Tiruvannamalai',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tiruvallur",
        busNumber: "TN6196",
        fromArrival: "01:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Salem',
          'Virudhunagar',
          'Viluppuram',
          'Tirupathur',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tiruvannamalai",
        busNumber: "TN3555",
        fromArrival: "05:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Salem',
          'Tiruchirappalli',
          'Dharmapuri',
          'Chengalpattu',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Tiruvarur",
        busNumber: "TN6987",
        fromArrival: "06:45 pm",
        toArrival: "10:45 pm",
        stops: ['Salem', 'Madurai', 'Kanchipuram', 'Erode', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Vellore",
        busNumber: "TN5940",
        fromArrival: "08:45 pm",
        toArrival: "11:30 am",
        stops: ['Salem', 'Thoothukudi', 'Ranipet', 'Coimbatore', 'Vellore'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Viluppuram",
        busNumber: "TN4356",
        fromArrival: "05:15 pm",
        toArrival: "03:00 pm",
        stops: [
          'Salem',
          'Kallakurichi',
          'Tiruvallur',
          'Pudukkottai',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Virudhunagar",
        busNumber: "TN5058",
        fromArrival: "10:30 pm",
        toArrival: "09:00 pm",
        stops: ['Salem', 'Chengalpattu', 'Vellore', 'Ranipet', 'Virudhunagar'],
      ),

      Bus(
        fromCity: "Salem",
        toCity: "Mayiladuthurai",
        busNumber: "TN534",
        fromArrival: "03:00 pm",
        toArrival: "12:45 pm",
        stops: [
          'Salem',
          'Vellore',
          'Thoothukudi',
          'Chengalpattu',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Ariyalur",
        busNumber: "TN1844",
        fromArrival: "06:45 am",
        toArrival: "09:00 pm",
        stops: [
          'Sivaganga',
          'Pudukkottai',
          'Nilgiris',
          'Krishnagiri',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Chengalpattu",
        busNumber: "TN5023",
        fromArrival: "11:45 am",
        toArrival: "09:45 pm",
        stops: [
          'Sivaganga',
          'Namakkal',
          'Ramanathapuram',
          'Mayiladuthurai',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Chennai",
        busNumber: "TN2793",
        fromArrival: "01:15 pm",
        toArrival: "09:45 pm",
        stops: ['Sivaganga', 'Erode', 'Namakkal', 'Tiruvarur', 'Chennai'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Coimbatore",
        busNumber: "TN7277",
        fromArrival: "03:15 pm",
        toArrival: "12:15 pm",
        stops: [
          'Sivaganga',
          'Tiruvarur',
          'Kallakurichi',
          'Thanjavur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Cuddalore",
        busNumber: "TN7768",
        fromArrival: "07:15 pm",
        toArrival: "06:15 pm",
        stops: [
          'Sivaganga',
          'Viluppuram',
          'Tiruchirappalli',
          'Tiruvannamalai',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Dharmapuri",
        busNumber: "TN7629",
        fromArrival: "06:45 pm",
        toArrival: "01:30 pm",
        stops: [
          'Sivaganga',
          'Mayiladuthurai',
          'Viluppuram',
          'Krishnagiri',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Dindigul",
        busNumber: "TN1146",
        fromArrival: "11:00 am",
        toArrival: "05:45 am",
        stops: ['Sivaganga', 'Ranipet', 'Tenkasi', 'Tirunelveli', 'Dindigul'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Erode",
        busNumber: "TN924",
        fromArrival: "10:30 pm",
        toArrival: "06:45 am",
        stops: [
          'Sivaganga',
          'Tiruvallur',
          'Ramanathapuram',
          'Viluppuram',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Kallakurichi",
        busNumber: "TN4799",
        fromArrival: "06:15 am",
        toArrival: "04:30 pm",
        stops: [
          'Sivaganga',
          'Chennai',
          'Nagapattinam',
          'Pudukkottai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Kanchipuram",
        busNumber: "TN512",
        fromArrival: "01:15 pm",
        toArrival: "02:30 pm",
        stops: [
          'Sivaganga',
          'Namakkal',
          'Thoothukudi',
          'Ramanathapuram',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Kanyakumari",
        busNumber: "TN8225",
        fromArrival: "05:30 am",
        toArrival: "08:15 pm",
        stops: [
          'Sivaganga',
          'Virudhunagar',
          'Nagapattinam',
          'Pudukkottai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Karur",
        busNumber: "TN3683",
        fromArrival: "06:30 am",
        toArrival: "08:30 pm",
        stops: [
          'Sivaganga',
          'Virudhunagar',
          'Krishnagiri',
          'Perambalur',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Krishnagiri",
        busNumber: "TN9979",
        fromArrival: "05:15 am",
        toArrival: "05:30 pm",
        stops: [
          'Sivaganga',
          'Karur',
          'Perambalur',
          'Pudukkottai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Madurai",
        busNumber: "TN8421",
        fromArrival: "09:30 am",
        toArrival: "08:45 pm",
        stops: ['Sivaganga', 'Kallakurichi', 'Cuddalore', 'Salem', 'Madurai'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Nagapattinam",
        busNumber: "TN9627",
        fromArrival: "10:15 am",
        toArrival: "05:15 am",
        stops: [
          'Sivaganga',
          'Cuddalore',
          'Salem',
          'Ramanathapuram',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Namakkal",
        busNumber: "TN4223",
        fromArrival: "02:30 pm",
        toArrival: "09:45 pm",
        stops: ['Sivaganga', 'Tiruvarur', 'Virudhunagar', 'Erode', 'Namakkal'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Nilgiris",
        busNumber: "TN506",
        fromArrival: "08:00 pm",
        toArrival: "06:45 pm",
        stops: ['Sivaganga', 'Erode', 'Dharmapuri', 'Tiruvarur', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Perambalur",
        busNumber: "TN1760",
        fromArrival: "08:30 pm",
        toArrival: "08:00 pm",
        stops: ['Sivaganga', 'Thanjavur', 'Vellore', 'Tenkasi', 'Perambalur'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Pudukkottai",
        busNumber: "TN837",
        fromArrival: "05:30 pm",
        toArrival: "06:00 am",
        stops: [
          'Sivaganga',
          'Kanchipuram',
          'Virudhunagar',
          'Tiruppur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Ramanathapuram",
        busNumber: "TN9973",
        fromArrival: "07:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Sivaganga',
          'Nagapattinam',
          'Namakkal',
          'Virudhunagar',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Ranipet",
        busNumber: "TN1754",
        fromArrival: "10:00 pm",
        toArrival: "08:45 am",
        stops: ['Sivaganga', 'Tenkasi', 'Theni', 'Perambalur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Salem",
        busNumber: "TN1561",
        fromArrival: "03:15 pm",
        toArrival: "07:00 am",
        stops: ['Sivaganga', 'Tirupathur', 'Tirunelveli', 'Tenkasi', 'Salem'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tenkasi",
        busNumber: "TN5488",
        fromArrival: "12:00 pm",
        toArrival: "02:00 pm",
        stops: [
          'Sivaganga',
          'Perambalur',
          'Nilgiris',
          'Thoothukudi',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Thanjavur",
        busNumber: "TN5322",
        fromArrival: "01:30 pm",
        toArrival: "09:30 am",
        stops: [
          'Sivaganga',
          'Pudukkottai',
          'Karur',
          'Nagapattinam',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Theni",
        busNumber: "TN6083",
        fromArrival: "11:45 am",
        toArrival: "06:30 pm",
        stops: [
          'Sivaganga',
          'Pudukkottai',
          'Coimbatore',
          'Chengalpattu',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Thoothukudi",
        busNumber: "TN4692",
        fromArrival: "04:30 pm",
        toArrival: "09:30 pm",
        stops: [
          'Sivaganga',
          'Cuddalore',
          'Tiruvallur',
          'Virudhunagar',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tiruchirappalli",
        busNumber: "TN4761",
        fromArrival: "03:15 pm",
        toArrival: "10:30 pm",
        stops: [
          'Sivaganga',
          'Theni',
          'Dindigul',
          'Tiruvarur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tirunelveli",
        busNumber: "TN2699",
        fromArrival: "05:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Sivaganga',
          'Tiruvallur',
          'Chengalpattu',
          'Krishnagiri',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tirupathur",
        busNumber: "TN6620",
        fromArrival: "11:15 am",
        toArrival: "03:45 pm",
        stops: [
          'Sivaganga',
          'Dharmapuri',
          'Vellore',
          'Tiruvarur',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tiruppur",
        busNumber: "TN3472",
        fromArrival: "08:00 pm",
        toArrival: "12:45 pm",
        stops: [
          'Sivaganga',
          'Tirunelveli',
          'Coimbatore',
          'Kallakurichi',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tiruvallur",
        busNumber: "TN7179",
        fromArrival: "05:30 am",
        toArrival: "08:15 pm",
        stops: ['Sivaganga', 'Thoothukudi', 'Thanjavur', 'Erode', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tiruvannamalai",
        busNumber: "TN6133",
        fromArrival: "03:00 pm",
        toArrival: "06:15 pm",
        stops: [
          'Sivaganga',
          'Salem',
          'Pudukkottai',
          'Nagapattinam',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Tiruvarur",
        busNumber: "TN8344",
        fromArrival: "05:00 pm",
        toArrival: "10:00 am",
        stops: [
          'Sivaganga',
          'Coimbatore',
          'Cuddalore',
          'Thanjavur',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Vellore",
        busNumber: "TN2417",
        fromArrival: "05:00 am",
        toArrival: "02:45 pm",
        stops: ['Sivaganga', 'Ranipet', 'Virudhunagar', 'Nilgiris', 'Vellore'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Viluppuram",
        busNumber: "TN5933",
        fromArrival: "07:00 am",
        toArrival: "10:30 pm",
        stops: ['Sivaganga', 'Vellore', 'Theni', 'Nagapattinam', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Virudhunagar",
        busNumber: "TN5050",
        fromArrival: "05:30 pm",
        toArrival: "10:15 am",
        stops: [
          'Sivaganga',
          'Mayiladuthurai',
          'Thanjavur',
          'Tenkasi',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Sivaganga",
        toCity: "Mayiladuthurai",
        busNumber: "TN6622",
        fromArrival: "03:30 pm",
        toArrival: "08:30 pm",
        stops: [
          'Sivaganga',
          'Viluppuram',
          'Theni',
          'Coimbatore',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Ariyalur",
        busNumber: "TN8120",
        fromArrival: "07:30 am",
        toArrival: "05:30 pm",
        stops: ['Tenkasi', 'Erode', 'Theni', 'Chengalpattu', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Chengalpattu",
        busNumber: "TN2774",
        fromArrival: "08:00 pm",
        toArrival: "07:15 am",
        stops: [
          'Tenkasi',
          'Kanyakumari',
          'Tirunelveli',
          'Madurai',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Chennai",
        busNumber: "TN4634",
        fromArrival: "10:30 pm",
        toArrival: "01:00 pm",
        stops: ['Tenkasi', 'Kallakurichi', 'Viluppuram', 'Ariyalur', 'Chennai'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Coimbatore",
        busNumber: "TN5755",
        fromArrival: "12:15 pm",
        toArrival: "05:15 am",
        stops: ['Tenkasi', 'Salem', 'Vellore', 'Kallakurichi', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Cuddalore",
        busNumber: "TN5184",
        fromArrival: "11:15 am",
        toArrival: "06:15 am",
        stops: [
          'Tenkasi',
          'Viluppuram',
          'Kallakurichi',
          'Madurai',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Dharmapuri",
        busNumber: "TN8597",
        fromArrival: "10:30 am",
        toArrival: "08:00 am",
        stops: ['Tenkasi', 'Salem', 'Tiruchirappalli', 'Vellore', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Dindigul",
        busNumber: "TN9032",
        fromArrival: "08:00 pm",
        toArrival: "12:00 pm",
        stops: ['Tenkasi', 'Chennai', 'Namakkal', 'Mayiladuthurai', 'Dindigul'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Erode",
        busNumber: "TN823",
        fromArrival: "11:15 am",
        toArrival: "06:00 pm",
        stops: ['Tenkasi', 'Madurai', 'Virudhunagar', 'Thanjavur', 'Erode'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Kallakurichi",
        busNumber: "TN6492",
        fromArrival: "07:15 am",
        toArrival: "05:45 pm",
        stops: [
          'Tenkasi',
          'Tirupathur',
          'Namakkal',
          'Sivaganga',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Kanchipuram",
        busNumber: "TN951",
        fromArrival: "06:45 am",
        toArrival: "09:00 pm",
        stops: [
          'Tenkasi',
          'Sivaganga',
          'Ranipet',
          'Thoothukudi',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Kanyakumari",
        busNumber: "TN3820",
        fromArrival: "02:00 pm",
        toArrival: "08:30 am",
        stops: [
          'Tenkasi',
          'Viluppuram',
          'Kallakurichi',
          'Chennai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Karur",
        busNumber: "TN8218",
        fromArrival: "11:15 am",
        toArrival: "05:30 pm",
        stops: [
          'Tenkasi',
          'Tiruvannamalai',
          'Virudhunagar',
          'Tiruvallur',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Krishnagiri",
        busNumber: "TN3060",
        fromArrival: "06:45 am",
        toArrival: "03:15 pm",
        stops: [
          'Tenkasi',
          'Chengalpattu',
          'Sivaganga',
          'Ariyalur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Madurai",
        busNumber: "TN2323",
        fromArrival: "02:45 pm",
        toArrival: "12:30 pm",
        stops: ['Tenkasi', 'Kallakurichi', 'Erode', 'Karur', 'Madurai'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Nagapattinam",
        busNumber: "TN1827",
        fromArrival: "05:30 pm",
        toArrival: "08:45 am",
        stops: ['Tenkasi', 'Dindigul', 'Sivaganga', 'Tiruppur', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Namakkal",
        busNumber: "TN772",
        fromArrival: "10:30 am",
        toArrival: "12:30 pm",
        stops: ['Tenkasi', 'Chengalpattu', 'Ranipet', 'Tiruppur', 'Namakkal'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Nilgiris",
        busNumber: "TN5655",
        fromArrival: "08:30 am",
        toArrival: "09:00 am",
        stops: [
          'Tenkasi',
          'Salem',
          'Dharmapuri',
          'Tiruchirappalli',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Perambalur",
        busNumber: "TN9943",
        fromArrival: "07:15 am",
        toArrival: "07:45 am",
        stops: ['Tenkasi', 'Theni', 'Kanchipuram', 'Pudukkottai', 'Perambalur'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Pudukkottai",
        busNumber: "TN3655",
        fromArrival: "08:15 pm",
        toArrival: "10:45 am",
        stops: [
          'Tenkasi',
          'Kallakurichi',
          'Tiruvannamalai',
          'Tirupathur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Ramanathapuram",
        busNumber: "TN4992",
        fromArrival: "11:00 am",
        toArrival: "05:45 pm",
        stops: [
          'Tenkasi',
          'Chennai',
          'Sivaganga',
          'Krishnagiri',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Ranipet",
        busNumber: "TN8239",
        fromArrival: "08:45 pm",
        toArrival: "04:00 pm",
        stops: ['Tenkasi', 'Kanyakumari', 'Tiruvarur', 'Coimbatore', 'Ranipet'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Salem",
        busNumber: "TN3387",
        fromArrival: "10:30 pm",
        toArrival: "11:00 am",
        stops: ['Tenkasi', 'Namakkal', 'Thanjavur', 'Thoothukudi', 'Salem'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Sivaganga",
        busNumber: "TN3848",
        fromArrival: "01:00 pm",
        toArrival: "06:00 am",
        stops: [
          'Tenkasi',
          'Krishnagiri',
          'Dindigul',
          'Chengalpattu',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Thanjavur",
        busNumber: "TN3890",
        fromArrival: "05:00 pm",
        toArrival: "08:15 pm",
        stops: [
          'Tenkasi',
          'Tiruvarur',
          'Krishnagiri',
          'Chengalpattu',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Theni",
        busNumber: "TN4049",
        fromArrival: "09:30 am",
        toArrival: "01:45 pm",
        stops: [
          'Tenkasi',
          'Perambalur',
          'Kanyakumari',
          'Virudhunagar',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Thoothukudi",
        busNumber: "TN3874",
        fromArrival: "10:15 am",
        toArrival: "01:45 pm",
        stops: [
          'Tenkasi',
          'Thanjavur',
          'Chengalpattu',
          'Ramanathapuram',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tiruchirappalli",
        busNumber: "TN7817",
        fromArrival: "03:15 pm",
        toArrival: "08:45 am",
        stops: [
          'Tenkasi',
          'Coimbatore',
          'Viluppuram',
          'Chengalpattu',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tirunelveli",
        busNumber: "TN5287",
        fromArrival: "07:00 am",
        toArrival: "10:00 am",
        stops: ['Tenkasi', 'Salem', 'Kanchipuram', 'Nilgiris', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tirupathur",
        busNumber: "TN5456",
        fromArrival: "01:00 pm",
        toArrival: "05:15 am",
        stops: ['Tenkasi', 'Erode', 'Kanyakumari', 'Nilgiris', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tiruppur",
        busNumber: "TN5968",
        fromArrival: "06:30 am",
        toArrival: "12:45 pm",
        stops: [
          'Tenkasi',
          'Pudukkottai',
          'Kallakurichi',
          'Chennai',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tiruvallur",
        busNumber: "TN901",
        fromArrival: "01:00 pm",
        toArrival: "05:30 pm",
        stops: ['Tenkasi', 'Nilgiris', 'Salem', 'Dharmapuri', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tiruvannamalai",
        busNumber: "TN2312",
        fromArrival: "01:45 pm",
        toArrival: "12:45 pm",
        stops: [
          'Tenkasi',
          'Pudukkottai',
          'Madurai',
          'Dharmapuri',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Tiruvarur",
        busNumber: "TN4358",
        fromArrival: "04:45 pm",
        toArrival: "09:30 am",
        stops: ['Tenkasi', 'Salem', 'Chennai', 'Nagapattinam', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Vellore",
        busNumber: "TN715",
        fromArrival: "12:30 pm",
        toArrival: "07:30 am",
        stops: ['Tenkasi', 'Chennai', 'Ariyalur', 'Kallakurichi', 'Vellore'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Viluppuram",
        busNumber: "TN9563",
        fromArrival: "04:45 pm",
        toArrival: "06:15 am",
        stops: ['Tenkasi', 'Dindigul', 'Chengalpattu', 'Chennai', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Virudhunagar",
        busNumber: "TN6466",
        fromArrival: "04:15 pm",
        toArrival: "09:00 am",
        stops: [
          'Tenkasi',
          'Kallakurichi',
          'Thoothukudi',
          'Nilgiris',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tenkasi",
        toCity: "Mayiladuthurai",
        busNumber: "TN9527",
        fromArrival: "07:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Tenkasi',
          'Tiruvarur',
          'Pudukkottai',
          'Namakkal',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Ariyalur",
        busNumber: "TN7794",
        fromArrival: "05:30 am",
        toArrival: "11:30 am",
        stops: [
          'Thanjavur',
          'Thoothukudi',
          'Dharmapuri',
          'Tirupathur',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Chengalpattu",
        busNumber: "TN8719",
        fromArrival: "06:00 pm",
        toArrival: "02:45 pm",
        stops: [
          'Thanjavur',
          'Tiruchirappalli',
          'Tenkasi',
          'Mayiladuthurai',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Chennai",
        busNumber: "TN4624",
        fromArrival: "04:00 pm",
        toArrival: "05:45 am",
        stops: ['Thanjavur', 'Kallakurichi', 'Kanyakumari', 'Karur', 'Chennai'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Coimbatore",
        busNumber: "TN661",
        fromArrival: "04:00 pm",
        toArrival: "01:15 pm",
        stops: [
          'Thanjavur',
          'Salem',
          'Pudukkottai',
          'Tirupathur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Cuddalore",
        busNumber: "TN894",
        fromArrival: "07:45 am",
        toArrival: "10:30 pm",
        stops: ['Thanjavur', 'Kanchipuram', 'Theni', 'Coimbatore', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Dharmapuri",
        busNumber: "TN7969",
        fromArrival: "05:15 pm",
        toArrival: "05:00 pm",
        stops: ['Thanjavur', 'Tiruppur', 'Pudukkottai', 'Erode', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Dindigul",
        busNumber: "TN7752",
        fromArrival: "04:00 pm",
        toArrival: "08:30 am",
        stops: ['Thanjavur', 'Kanyakumari', 'Viluppuram', 'Salem', 'Dindigul'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Erode",
        busNumber: "TN7085",
        fromArrival: "07:15 pm",
        toArrival: "06:45 am",
        stops: [
          'Thanjavur',
          'Perambalur',
          'Chengalpattu',
          'Tiruvallur',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Kallakurichi",
        busNumber: "TN9527",
        fromArrival: "06:45 am",
        toArrival: "12:00 pm",
        stops: [
          'Thanjavur',
          'Ramanathapuram',
          'Thoothukudi',
          'Theni',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Kanchipuram",
        busNumber: "TN2867",
        fromArrival: "10:15 am",
        toArrival: "09:45 am",
        stops: [
          'Thanjavur',
          'Karur',
          'Pudukkottai',
          'Virudhunagar',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Kanyakumari",
        busNumber: "TN6867",
        fromArrival: "06:00 pm",
        toArrival: "09:45 pm",
        stops: [
          'Thanjavur',
          'Virudhunagar',
          'Chengalpattu',
          'Kanchipuram',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Karur",
        busNumber: "TN4337",
        fromArrival: "02:30 pm",
        toArrival: "07:30 am",
        stops: [
          'Thanjavur',
          'Cuddalore',
          'Krishnagiri',
          'Kanchipuram',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Krishnagiri",
        busNumber: "TN5666",
        fromArrival: "07:30 pm",
        toArrival: "12:15 pm",
        stops: ['Thanjavur', 'Vellore', 'Karur', 'Virudhunagar', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Madurai",
        busNumber: "TN5528",
        fromArrival: "04:45 pm",
        toArrival: "09:00 am",
        stops: ['Thanjavur', 'Dharmapuri', 'Tiruvarur', 'Erode', 'Madurai'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Nagapattinam",
        busNumber: "TN3452",
        fromArrival: "04:00 pm",
        toArrival: "07:30 pm",
        stops: [
          'Thanjavur',
          'Chennai',
          'Krishnagiri',
          'Tirunelveli',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Namakkal",
        busNumber: "TN6491",
        fromArrival: "11:45 am",
        toArrival: "05:30 pm",
        stops: [
          'Thanjavur',
          'Kallakurichi',
          'Tenkasi',
          'Kanyakumari',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Nilgiris",
        busNumber: "TN603",
        fromArrival: "10:30 pm",
        toArrival: "06:00 pm",
        stops: [
          'Thanjavur',
          'Tiruppur',
          'Tirupathur',
          'Kanyakumari',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Perambalur",
        busNumber: "TN4088",
        fromArrival: "08:30 pm",
        toArrival: "05:15 am",
        stops: [
          'Thanjavur',
          'Thoothukudi',
          'Dharmapuri',
          'Kanyakumari',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Pudukkottai",
        busNumber: "TN235",
        fromArrival: "05:15 am",
        toArrival: "06:45 am",
        stops: [
          'Thanjavur',
          'Viluppuram',
          'Sivaganga',
          'Chengalpattu',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Ramanathapuram",
        busNumber: "TN5915",
        fromArrival: "06:30 pm",
        toArrival: "10:30 pm",
        stops: [
          'Thanjavur',
          'Namakkal',
          'Chengalpattu',
          'Salem',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Ranipet",
        busNumber: "TN3174",
        fromArrival: "10:30 am",
        toArrival: "09:15 pm",
        stops: [
          'Thanjavur',
          'Perambalur',
          'Vellore',
          'Tiruvannamalai',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Salem",
        busNumber: "TN1524",
        fromArrival: "01:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Thanjavur',
          'Theni',
          'Ramanathapuram',
          'Kallakurichi',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Sivaganga",
        busNumber: "TN8414",
        fromArrival: "07:45 am",
        toArrival: "02:00 pm",
        stops: [
          'Thanjavur',
          'Kanyakumari',
          'Tiruvallur',
          'Tiruppur',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tenkasi",
        busNumber: "TN9571",
        fromArrival: "03:15 pm",
        toArrival: "08:00 pm",
        stops: [
          'Thanjavur',
          'Krishnagiri',
          'Cuddalore',
          'Kallakurichi',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Theni",
        busNumber: "TN9056",
        fromArrival: "05:30 am",
        toArrival: "03:15 pm",
        stops: ['Thanjavur', 'Salem', 'Tiruvarur', 'Tenkasi', 'Theni'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Thoothukudi",
        busNumber: "TN6916",
        fromArrival: "03:00 pm",
        toArrival: "10:15 am",
        stops: [
          'Thanjavur',
          'Tirupathur',
          'Chennai',
          'Cuddalore',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tiruchirappalli",
        busNumber: "TN6797",
        fromArrival: "08:00 pm",
        toArrival: "11:30 am",
        stops: [
          'Thanjavur',
          'Kanyakumari',
          'Erode',
          'Tiruvarur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tirunelveli",
        busNumber: "TN5441",
        fromArrival: "12:30 pm",
        toArrival: "05:30 am",
        stops: [
          'Thanjavur',
          'Nilgiris',
          'Ranipet',
          'Tiruvallur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tirupathur",
        busNumber: "TN1186",
        fromArrival: "03:45 pm",
        toArrival: "06:45 am",
        stops: [
          'Thanjavur',
          'Tiruchirappalli',
          'Vellore',
          'Tirunelveli',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tiruppur",
        busNumber: "TN6896",
        fromArrival: "08:45 pm",
        toArrival: "06:15 am",
        stops: [
          'Thanjavur',
          'Tiruchirappalli',
          'Ariyalur',
          'Tirupathur',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tiruvallur",
        busNumber: "TN1953",
        fromArrival: "10:00 pm",
        toArrival: "05:45 pm",
        stops: [
          'Thanjavur',
          'Ramanathapuram',
          'Ariyalur',
          'Madurai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tiruvannamalai",
        busNumber: "TN5541",
        fromArrival: "05:30 am",
        toArrival: "07:45 pm",
        stops: [
          'Thanjavur',
          'Nagapattinam',
          'Nilgiris',
          'Ariyalur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Tiruvarur",
        busNumber: "TN933",
        fromArrival: "07:15 pm",
        toArrival: "01:00 pm",
        stops: ['Thanjavur', 'Krishnagiri', 'Karur', 'Perambalur', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Vellore",
        busNumber: "TN1354",
        fromArrival: "08:30 pm",
        toArrival: "11:45 am",
        stops: ['Thanjavur', 'Salem', 'Chengalpattu', 'Thoothukudi', 'Vellore'],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Viluppuram",
        busNumber: "TN1689",
        fromArrival: "10:15 pm",
        toArrival: "03:00 pm",
        stops: [
          'Thanjavur',
          'Tiruvannamalai',
          'Kallakurichi',
          'Krishnagiri',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Virudhunagar",
        busNumber: "TN5626",
        fromArrival: "04:45 pm",
        toArrival: "06:45 am",
        stops: [
          'Thanjavur',
          'Tiruvannamalai',
          'Tiruvallur',
          'Krishnagiri',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Thanjavur",
        toCity: "Mayiladuthurai",
        busNumber: "TN4264",
        fromArrival: "02:45 pm",
        toArrival: "07:00 am",
        stops: [
          'Thanjavur',
          'Tiruvallur',
          'Nagapattinam',
          'Ranipet',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Ariyalur",
        busNumber: "TN5587",
        fromArrival: "06:15 am",
        toArrival: "04:30 pm",
        stops: [
          'Theni',
          'Chengalpattu',
          'Cuddalore',
          'Ramanathapuram',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Chengalpattu",
        busNumber: "TN3446",
        fromArrival: "05:30 am",
        toArrival: "05:00 am",
        stops: [
          'Theni',
          'Perambalur',
          'Erode',
          'Tiruvannamalai',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Chennai",
        busNumber: "TN307",
        fromArrival: "07:00 pm",
        toArrival: "03:45 pm",
        stops: [
          'Theni',
          'Krishnagiri',
          'Nagapattinam',
          'Chengalpattu',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Coimbatore",
        busNumber: "TN857",
        fromArrival: "01:30 pm",
        toArrival: "12:00 pm",
        stops: [
          'Theni',
          'Mayiladuthurai',
          'Tiruvallur',
          'Cuddalore',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Cuddalore",
        busNumber: "TN376",
        fromArrival: "06:30 am",
        toArrival: "09:45 pm",
        stops: [
          'Theni',
          'Namakkal',
          'Tiruchirappalli',
          'Nilgiris',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Dharmapuri",
        busNumber: "TN5649",
        fromArrival: "12:15 pm",
        toArrival: "03:15 pm",
        stops: ['Theni', 'Tiruvarur', 'Thanjavur', 'Cuddalore', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Dindigul",
        busNumber: "TN5153",
        fromArrival: "09:15 am",
        toArrival: "01:15 pm",
        stops: ['Theni', 'Viluppuram', 'Karur', 'Thanjavur', 'Dindigul'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Erode",
        busNumber: "TN1454",
        fromArrival: "10:45 am",
        toArrival: "08:15 am",
        stops: ['Theni', 'Namakkal', 'Tiruppur', 'Chengalpattu', 'Erode'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Kallakurichi",
        busNumber: "TN4562",
        fromArrival: "10:45 pm",
        toArrival: "05:15 pm",
        stops: [
          'Theni',
          'Dharmapuri',
          'Kanchipuram',
          'Tiruvarur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Kanchipuram",
        busNumber: "TN686",
        fromArrival: "01:30 pm",
        toArrival: "05:00 pm",
        stops: ['Theni', 'Perambalur', 'Chennai', 'Erode', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Kanyakumari",
        busNumber: "TN4950",
        fromArrival: "09:45 pm",
        toArrival: "05:30 am",
        stops: [
          'Theni',
          'Mayiladuthurai',
          'Viluppuram',
          'Tiruvallur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Karur",
        busNumber: "TN1276",
        fromArrival: "05:00 am",
        toArrival: "08:45 am",
        stops: ['Theni', 'Thanjavur', 'Tirunelveli', 'Krishnagiri', 'Karur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Krishnagiri",
        busNumber: "TN5692",
        fromArrival: "10:15 am",
        toArrival: "10:45 am",
        stops: [
          'Theni',
          'Mayiladuthurai',
          'Salem',
          'Pudukkottai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Madurai",
        busNumber: "TN4734",
        fromArrival: "06:45 am",
        toArrival: "06:45 pm",
        stops: [
          'Theni',
          'Chennai',
          'Kanyakumari',
          'Tiruchirappalli',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Nagapattinam",
        busNumber: "TN6254",
        fromArrival: "05:30 am",
        toArrival: "09:45 pm",
        stops: [
          'Theni',
          'Coimbatore',
          'Ariyalur',
          'Kallakurichi',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Namakkal",
        busNumber: "TN6940",
        fromArrival: "03:15 pm",
        toArrival: "11:15 am",
        stops: ['Theni', 'Tirunelveli', 'Salem', 'Sivaganga', 'Namakkal'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Nilgiris",
        busNumber: "TN8491",
        fromArrival: "08:45 pm",
        toArrival: "03:00 pm",
        stops: ['Theni', 'Dindigul', 'Madurai', 'Tiruvallur', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Perambalur",
        busNumber: "TN3318",
        fromArrival: "09:45 am",
        toArrival: "06:00 am",
        stops: [
          'Theni',
          'Nagapattinam',
          'Tirupathur',
          'Cuddalore',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Pudukkottai",
        busNumber: "TN1151",
        fromArrival: "03:45 pm",
        toArrival: "01:15 pm",
        stops: ['Theni', 'Thanjavur', 'Perambalur', 'Salem', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Ramanathapuram",
        busNumber: "TN4294",
        fromArrival: "05:45 pm",
        toArrival: "03:30 pm",
        stops: [
          'Theni',
          'Tirunelveli',
          'Thoothukudi',
          'Vellore',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Ranipet",
        busNumber: "TN4927",
        fromArrival: "08:45 pm",
        toArrival: "04:30 pm",
        stops: ['Theni', 'Namakkal', 'Sivaganga', 'Vellore', 'Ranipet'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Salem",
        busNumber: "TN1138",
        fromArrival: "06:30 pm",
        toArrival: "08:45 pm",
        stops: ['Theni', 'Tirunelveli', 'Nilgiris', 'Thanjavur', 'Salem'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Sivaganga",
        busNumber: "TN6271",
        fromArrival: "09:45 pm",
        toArrival: "06:00 pm",
        stops: ['Theni', 'Nilgiris', 'Tiruvannamalai', 'Tenkasi', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tenkasi",
        busNumber: "TN6558",
        fromArrival: "08:15 am",
        toArrival: "05:15 pm",
        stops: ['Theni', 'Erode', 'Tiruppur', 'Madurai', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Thanjavur",
        busNumber: "TN3031",
        fromArrival: "12:15 pm",
        toArrival: "09:45 am",
        stops: ['Theni', 'Tiruppur', 'Mayiladuthurai', 'Vellore', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Thoothukudi",
        busNumber: "TN8453",
        fromArrival: "10:45 pm",
        toArrival: "06:00 am",
        stops: [
          'Theni',
          'Vellore',
          'Virudhunagar',
          'Viluppuram',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tiruchirappalli",
        busNumber: "TN2577",
        fromArrival: "06:30 pm",
        toArrival: "03:45 pm",
        stops: [
          'Theni',
          'Pudukkottai',
          'Perambalur',
          'Kanchipuram',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tirunelveli",
        busNumber: "TN7144",
        fromArrival: "02:15 pm",
        toArrival: "08:15 am",
        stops: ['Theni', 'Tiruvarur', 'Tirupathur', 'Karur', 'Tirunelveli'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tirupathur",
        busNumber: "TN7585",
        fromArrival: "02:45 pm",
        toArrival: "04:15 pm",
        stops: ['Theni', 'Salem', 'Coimbatore', 'Tirunelveli', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tiruppur",
        busNumber: "TN3513",
        fromArrival: "03:00 pm",
        toArrival: "05:15 pm",
        stops: ['Theni', 'Kanchipuram', 'Namakkal', 'Chennai', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tiruvallur",
        busNumber: "TN3890",
        fromArrival: "10:45 am",
        toArrival: "08:30 pm",
        stops: ['Theni', 'Dharmapuri', 'Namakkal', 'Viluppuram', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tiruvannamalai",
        busNumber: "TN9635",
        fromArrival: "07:30 am",
        toArrival: "05:45 am",
        stops: ['Theni', 'Dindigul', 'Salem', 'Tenkasi', 'Tiruvannamalai'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Tiruvarur",
        busNumber: "TN4976",
        fromArrival: "10:15 am",
        toArrival: "02:45 pm",
        stops: ['Theni', 'Tiruvannamalai', 'Chennai', 'Cuddalore', 'Tiruvarur'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Vellore",
        busNumber: "TN1283",
        fromArrival: "04:15 pm",
        toArrival: "02:00 pm",
        stops: ['Theni', 'Kanyakumari', 'Nagapattinam', 'Nilgiris', 'Vellore'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Viluppuram",
        busNumber: "TN9584",
        fromArrival: "01:15 pm",
        toArrival: "08:30 am",
        stops: ['Theni', 'Namakkal', 'Erode', 'Kallakurichi', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Virudhunagar",
        busNumber: "TN7783",
        fromArrival: "06:15 pm",
        toArrival: "01:15 pm",
        stops: [
          'Theni',
          'Namakkal',
          'Ramanathapuram',
          'Tirupathur',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Theni",
        toCity: "Mayiladuthurai",
        busNumber: "TN1857",
        fromArrival: "05:45 am",
        toArrival: "02:15 pm",
        stops: [
          'Theni',
          'Tiruvannamalai',
          'Tiruchirappalli',
          'Namakkal',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Ariyalur",
        busNumber: "TN1253",
        fromArrival: "05:15 pm",
        toArrival: "05:15 am",
        stops: [
          'Thoothukudi',
          'Viluppuram',
          'Nilgiris',
          'Krishnagiri',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Chengalpattu",
        busNumber: "TN2948",
        fromArrival: "07:45 am",
        toArrival: "11:45 am",
        stops: [
          'Thoothukudi',
          'Tenkasi',
          'Coimbatore',
          'Nagapattinam',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Chennai",
        busNumber: "TN2750",
        fromArrival: "09:00 am",
        toArrival: "05:30 pm",
        stops: [
          'Thoothukudi',
          'Tirupathur',
          'Tiruppur',
          'Coimbatore',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Coimbatore",
        busNumber: "TN4639",
        fromArrival: "06:30 am",
        toArrival: "11:30 am",
        stops: [
          'Thoothukudi',
          'Thanjavur',
          'Ranipet',
          'Krishnagiri',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Cuddalore",
        busNumber: "TN4724",
        fromArrival: "01:15 pm",
        toArrival: "04:45 pm",
        stops: [
          'Thoothukudi',
          'Madurai',
          'Mayiladuthurai',
          'Perambalur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Dharmapuri",
        busNumber: "TN8558",
        fromArrival: "07:15 am",
        toArrival: "08:30 pm",
        stops: [
          'Thoothukudi',
          'Viluppuram',
          'Namakkal',
          'Ariyalur',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Dindigul",
        busNumber: "TN8731",
        fromArrival: "09:45 pm",
        toArrival: "08:00 pm",
        stops: [
          'Thoothukudi',
          'Tirupathur',
          'Kanchipuram',
          'Namakkal',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Erode",
        busNumber: "TN8319",
        fromArrival: "07:30 pm",
        toArrival: "03:45 pm",
        stops: [
          'Thoothukudi',
          'Pudukkottai',
          'Kallakurichi',
          'Coimbatore',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Kallakurichi",
        busNumber: "TN6513",
        fromArrival: "04:15 pm",
        toArrival: "11:15 am",
        stops: [
          'Thoothukudi',
          'Ranipet',
          'Nagapattinam',
          'Virudhunagar',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Kanchipuram",
        busNumber: "TN273",
        fromArrival: "11:00 am",
        toArrival: "10:45 am",
        stops: [
          'Thoothukudi',
          'Erode',
          'Tiruchirappalli',
          'Chengalpattu',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Kanyakumari",
        busNumber: "TN5012",
        fromArrival: "09:30 pm",
        toArrival: "08:45 pm",
        stops: [
          'Thoothukudi',
          'Kallakurichi',
          'Thanjavur',
          'Salem',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Karur",
        busNumber: "TN1711",
        fromArrival: "04:45 pm",
        toArrival: "02:30 pm",
        stops: ['Thoothukudi', 'Kanchipuram', 'Tiruvarur', 'Chennai', 'Karur'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Krishnagiri",
        busNumber: "TN7895",
        fromArrival: "12:45 pm",
        toArrival: "09:30 pm",
        stops: [
          'Thoothukudi',
          'Namakkal',
          'Vellore',
          'Perambalur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Madurai",
        busNumber: "TN1028",
        fromArrival: "08:00 pm",
        toArrival: "05:30 am",
        stops: [
          'Thoothukudi',
          'Krishnagiri',
          'Viluppuram',
          'Cuddalore',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Nagapattinam",
        busNumber: "TN735",
        fromArrival: "05:00 am",
        toArrival: "10:30 pm",
        stops: [
          'Thoothukudi',
          'Dharmapuri',
          'Tiruvarur',
          'Theni',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Namakkal",
        busNumber: "TN391",
        fromArrival: "10:30 pm",
        toArrival: "10:00 pm",
        stops: [
          'Thoothukudi',
          'Pudukkottai',
          'Tirupathur',
          'Dharmapuri',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Nilgiris",
        busNumber: "TN9562",
        fromArrival: "09:30 pm",
        toArrival: "08:45 am",
        stops: [
          'Thoothukudi',
          'Nagapattinam',
          'Perambalur',
          'Sivaganga',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Perambalur",
        busNumber: "TN3530",
        fromArrival: "02:45 pm",
        toArrival: "09:45 pm",
        stops: ['Thoothukudi', 'Tiruvarur', 'Erode', 'Madurai', 'Perambalur'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Pudukkottai",
        busNumber: "TN5910",
        fromArrival: "07:15 pm",
        toArrival: "09:00 pm",
        stops: [
          'Thoothukudi',
          'Viluppuram',
          'Madurai',
          'Kallakurichi',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Ramanathapuram",
        busNumber: "TN2660",
        fromArrival: "07:00 am",
        toArrival: "10:00 pm",
        stops: [
          'Thoothukudi',
          'Pudukkottai',
          'Sivaganga',
          'Theni',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Ranipet",
        busNumber: "TN3636",
        fromArrival: "06:15 am",
        toArrival: "09:15 am",
        stops: ['Thoothukudi', 'Chengalpattu', 'Karur', 'Salem', 'Ranipet'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Salem",
        busNumber: "TN2413",
        fromArrival: "11:00 am",
        toArrival: "06:30 pm",
        stops: ['Thoothukudi', 'Vellore', 'Cuddalore', 'Kallakurichi', 'Salem'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Sivaganga",
        busNumber: "TN4399",
        fromArrival: "07:30 am",
        toArrival: "09:30 pm",
        stops: [
          'Thoothukudi',
          'Tiruvannamalai',
          'Nagapattinam',
          'Erode',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tenkasi",
        busNumber: "TN5476",
        fromArrival: "10:15 pm",
        toArrival: "06:45 am",
        stops: ['Thoothukudi', 'Dharmapuri', 'Salem', 'Tiruppur', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Thanjavur",
        busNumber: "TN2728",
        fromArrival: "05:30 pm",
        toArrival: "06:15 pm",
        stops: [
          'Thoothukudi',
          'Namakkal',
          'Dharmapuri',
          'Krishnagiri',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Theni",
        busNumber: "TN7043",
        fromArrival: "08:00 pm",
        toArrival: "08:00 pm",
        stops: ['Thoothukudi', 'Dharmapuri', 'Erode', 'Nagapattinam', 'Theni'],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tiruchirappalli",
        busNumber: "TN5435",
        fromArrival: "01:15 pm",
        toArrival: "04:00 pm",
        stops: [
          'Thoothukudi',
          'Karur',
          'Tiruppur',
          'Ranipet',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tirunelveli",
        busNumber: "TN6264",
        fromArrival: "03:00 pm",
        toArrival: "03:45 pm",
        stops: [
          'Thoothukudi',
          'Vellore',
          'Nagapattinam',
          'Cuddalore',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tirupathur",
        busNumber: "TN3510",
        fromArrival: "08:30 pm",
        toArrival: "11:15 am",
        stops: [
          'Thoothukudi',
          'Perambalur',
          'Sivaganga',
          'Nagapattinam',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tiruppur",
        busNumber: "TN1050",
        fromArrival: "11:00 am",
        toArrival: "05:45 am",
        stops: [
          'Thoothukudi',
          'Ramanathapuram',
          'Kanyakumari',
          'Madurai',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tiruvallur",
        busNumber: "TN9730",
        fromArrival: "05:45 pm",
        toArrival: "04:45 pm",
        stops: [
          'Thoothukudi',
          'Tiruppur',
          'Ranipet',
          'Tiruvannamalai',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tiruvannamalai",
        busNumber: "TN9554",
        fromArrival: "09:30 pm",
        toArrival: "09:15 pm",
        stops: [
          'Thoothukudi',
          'Tirupathur',
          'Kanyakumari',
          'Tenkasi',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Tiruvarur",
        busNumber: "TN6893",
        fromArrival: "08:30 pm",
        toArrival: "09:30 pm",
        stops: [
          'Thoothukudi',
          'Tiruvallur',
          'Theni',
          'Pudukkottai',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Vellore",
        busNumber: "TN294",
        fromArrival: "02:15 pm",
        toArrival: "03:30 pm",
        stops: [
          'Thoothukudi',
          'Tiruppur',
          'Nagapattinam',
          'Viluppuram',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Viluppuram",
        busNumber: "TN3498",
        fromArrival: "09:00 am",
        toArrival: "05:45 pm",
        stops: [
          'Thoothukudi',
          'Tirunelveli',
          'Krishnagiri',
          'Nilgiris',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Virudhunagar",
        busNumber: "TN1462",
        fromArrival: "03:30 pm",
        toArrival: "08:15 pm",
        stops: [
          'Thoothukudi',
          'Dindigul',
          'Kanyakumari',
          'Cuddalore',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Thoothukudi",
        toCity: "Mayiladuthurai",
        busNumber: "TN5094",
        fromArrival: "06:00 pm",
        toArrival: "08:15 pm",
        stops: [
          'Thoothukudi',
          'Salem',
          'Theni',
          'Nagapattinam',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Ariyalur",
        busNumber: "TN1599",
        fromArrival: "08:00 pm",
        toArrival: "08:00 pm",
        stops: [
          'Tiruchirappalli',
          'Krishnagiri',
          'Coimbatore',
          'Mayiladuthurai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Chengalpattu",
        busNumber: "TN1194",
        fromArrival: "07:15 pm",
        toArrival: "12:00 pm",
        stops: [
          'Tiruchirappalli',
          'Kanchipuram',
          'Tiruvallur',
          'Thanjavur',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Chennai",
        busNumber: "TN221",
        fromArrival: "02:00 pm",
        toArrival: "08:30 am",
        stops: [
          'Tiruchirappalli',
          'Dharmapuri',
          'Kanchipuram',
          'Salem',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Coimbatore",
        busNumber: "TN1360",
        fromArrival: "12:30 pm",
        toArrival: "07:00 am",
        stops: ['Tiruchirappalli', 'Erode', 'Theni', 'Tiruvarur', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Cuddalore",
        busNumber: "TN8219",
        fromArrival: "09:45 pm",
        toArrival: "03:00 pm",
        stops: [
          'Tiruchirappalli',
          'Thoothukudi',
          'Thanjavur',
          'Tiruvannamalai',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Dharmapuri",
        busNumber: "TN7884",
        fromArrival: "06:15 am",
        toArrival: "07:00 pm",
        stops: [
          'Tiruchirappalli',
          'Ariyalur',
          'Thoothukudi',
          'Dindigul',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Dindigul",
        busNumber: "TN3243",
        fromArrival: "10:45 am",
        toArrival: "09:45 pm",
        stops: [
          'Tiruchirappalli',
          'Kanchipuram',
          'Tiruvarur',
          'Madurai',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Erode",
        busNumber: "TN6954",
        fromArrival: "03:30 pm",
        toArrival: "09:45 am",
        stops: [
          'Tiruchirappalli',
          'Salem',
          'Virudhunagar',
          'Cuddalore',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Kallakurichi",
        busNumber: "TN8679",
        fromArrival: "05:45 pm",
        toArrival: "05:00 am",
        stops: [
          'Tiruchirappalli',
          'Karur',
          'Cuddalore',
          'Erode',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Kanchipuram",
        busNumber: "TN8165",
        fromArrival: "01:15 pm",
        toArrival: "04:00 pm",
        stops: [
          'Tiruchirappalli',
          'Dindigul',
          'Ranipet',
          'Nagapattinam',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Kanyakumari",
        busNumber: "TN7140",
        fromArrival: "03:45 pm",
        toArrival: "10:30 am",
        stops: [
          'Tiruchirappalli',
          'Sivaganga',
          'Mayiladuthurai',
          'Tirupathur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Karur",
        busNumber: "TN5143",
        fromArrival: "07:00 pm",
        toArrival: "06:45 pm",
        stops: [
          'Tiruchirappalli',
          'Nilgiris',
          'Kanchipuram',
          'Ramanathapuram',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Krishnagiri",
        busNumber: "TN2339",
        fromArrival: "11:00 am",
        toArrival: "09:45 pm",
        stops: [
          'Tiruchirappalli',
          'Chengalpattu',
          'Salem',
          'Madurai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Madurai",
        busNumber: "TN3253",
        fromArrival: "01:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Tiruchirappalli',
          'Sivaganga',
          'Nilgiris',
          'Nagapattinam',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Nagapattinam",
        busNumber: "TN339",
        fromArrival: "10:45 pm",
        toArrival: "03:30 pm",
        stops: [
          'Tiruchirappalli',
          'Kallakurichi',
          'Kanyakumari',
          'Salem',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Namakkal",
        busNumber: "TN3011",
        fromArrival: "09:30 am",
        toArrival: "09:15 pm",
        stops: [
          'Tiruchirappalli',
          'Nilgiris',
          'Cuddalore',
          'Viluppuram',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Nilgiris",
        busNumber: "TN2198",
        fromArrival: "09:00 pm",
        toArrival: "09:45 am",
        stops: [
          'Tiruchirappalli',
          'Tiruvarur',
          'Sivaganga',
          'Tenkasi',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Perambalur",
        busNumber: "TN6726",
        fromArrival: "07:45 am",
        toArrival: "03:15 pm",
        stops: [
          'Tiruchirappalli',
          'Pudukkottai',
          'Tenkasi',
          'Dindigul',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Pudukkottai",
        busNumber: "TN409",
        fromArrival: "02:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Tiruchirappalli',
          'Namakkal',
          'Tirunelveli',
          'Ranipet',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Ramanathapuram",
        busNumber: "TN3450",
        fromArrival: "10:15 pm",
        toArrival: "07:30 pm",
        stops: [
          'Tiruchirappalli',
          'Krishnagiri',
          'Kanchipuram',
          'Dindigul',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Ranipet",
        busNumber: "TN419",
        fromArrival: "12:15 pm",
        toArrival: "08:15 pm",
        stops: [
          'Tiruchirappalli',
          'Virudhunagar',
          'Kanchipuram',
          'Krishnagiri',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Salem",
        busNumber: "TN3649",
        fromArrival: "08:30 am",
        toArrival: "04:15 pm",
        stops: [
          'Tiruchirappalli',
          'Tiruvallur',
          'Tirupathur',
          'Kallakurichi',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Sivaganga",
        busNumber: "TN6268",
        fromArrival: "01:00 pm",
        toArrival: "06:45 pm",
        stops: [
          'Tiruchirappalli',
          'Thanjavur',
          'Tenkasi',
          'Virudhunagar',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tenkasi",
        busNumber: "TN2283",
        fromArrival: "07:15 am",
        toArrival: "02:30 pm",
        stops: ['Tiruchirappalli', 'Tiruvarur', 'Erode', 'Dindigul', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Thanjavur",
        busNumber: "TN7279",
        fromArrival: "05:30 pm",
        toArrival: "06:15 pm",
        stops: [
          'Tiruchirappalli',
          'Madurai',
          'Kallakurichi',
          'Theni',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Theni",
        busNumber: "TN1082",
        fromArrival: "01:45 pm",
        toArrival: "04:15 pm",
        stops: [
          'Tiruchirappalli',
          'Ramanathapuram',
          'Dindigul',
          'Pudukkottai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Thoothukudi",
        busNumber: "TN7124",
        fromArrival: "10:45 am",
        toArrival: "08:15 pm",
        stops: [
          'Tiruchirappalli',
          'Salem',
          'Chennai',
          'Namakkal',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tirunelveli",
        busNumber: "TN2768",
        fromArrival: "06:15 pm",
        toArrival: "12:45 pm",
        stops: [
          'Tiruchirappalli',
          'Viluppuram',
          'Thoothukudi',
          'Dharmapuri',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tirupathur",
        busNumber: "TN5379",
        fromArrival: "09:45 am",
        toArrival: "05:45 pm",
        stops: [
          'Tiruchirappalli',
          'Sivaganga',
          'Namakkal',
          'Kallakurichi',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tiruppur",
        busNumber: "TN635",
        fromArrival: "05:30 am",
        toArrival: "08:00 pm",
        stops: [
          'Tiruchirappalli',
          'Kanchipuram',
          'Ariyalur',
          'Thoothukudi',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tiruvallur",
        busNumber: "TN3010",
        fromArrival: "03:45 pm",
        toArrival: "02:30 pm",
        stops: [
          'Tiruchirappalli',
          'Sivaganga',
          'Virudhunagar',
          'Tirunelveli',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tiruvannamalai",
        busNumber: "TN8359",
        fromArrival: "05:45 pm",
        toArrival: "08:45 am",
        stops: [
          'Tiruchirappalli',
          'Perambalur',
          'Nagapattinam',
          'Thoothukudi',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Tiruvarur",
        busNumber: "TN494",
        fromArrival: "10:00 pm",
        toArrival: "07:15 pm",
        stops: [
          'Tiruchirappalli',
          'Thanjavur',
          'Dharmapuri',
          'Nilgiris',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Vellore",
        busNumber: "TN2555",
        fromArrival: "03:45 pm",
        toArrival: "04:15 pm",
        stops: [
          'Tiruchirappalli',
          'Namakkal',
          'Kanchipuram',
          'Kallakurichi',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Viluppuram",
        busNumber: "TN2214",
        fromArrival: "04:30 pm",
        toArrival: "10:30 pm",
        stops: [
          'Tiruchirappalli',
          'Tenkasi',
          'Coimbatore',
          'Pudukkottai',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Virudhunagar",
        busNumber: "TN8557",
        fromArrival: "07:30 am",
        toArrival: "05:15 am",
        stops: [
          'Tiruchirappalli',
          'Chennai',
          'Tirupathur',
          'Nilgiris',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tiruchirappalli",
        toCity: "Mayiladuthurai",
        busNumber: "TN2565",
        fromArrival: "02:45 pm",
        toArrival: "01:00 pm",
        stops: [
          'Tiruchirappalli',
          'Dindigul',
          'Ranipet',
          'Nagapattinam',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Ariyalur",
        busNumber: "TN7776",
        fromArrival: "09:30 am",
        toArrival: "11:00 am",
        stops: [
          'Tirunelveli',
          'Nilgiris',
          'Thoothukudi',
          'Chennai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Chengalpattu",
        busNumber: "TN6260",
        fromArrival: "05:30 am",
        toArrival: "06:15 am",
        stops: [
          'Tirunelveli',
          'Cuddalore',
          'Kanyakumari',
          'Dharmapuri',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Chennai",
        busNumber: "TN5515",
        fromArrival: "03:45 pm",
        toArrival: "03:00 pm",
        stops: [
          'Tirunelveli',
          'Kallakurichi',
          'Madurai',
          'Tirupathur',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Coimbatore",
        busNumber: "TN7783",
        fromArrival: "05:45 am",
        toArrival: "11:15 am",
        stops: ['Tirunelveli', 'Krishnagiri', 'Theni', 'Karur', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Cuddalore",
        busNumber: "TN7881",
        fromArrival: "02:45 pm",
        toArrival: "12:45 pm",
        stops: [
          'Tirunelveli',
          'Tirupathur',
          'Krishnagiri',
          'Ariyalur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Dharmapuri",
        busNumber: "TN8712",
        fromArrival: "06:15 am",
        toArrival: "02:45 pm",
        stops: [
          'Tirunelveli',
          'Salem',
          'Nagapattinam',
          'Cuddalore',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Dindigul",
        busNumber: "TN9520",
        fromArrival: "05:45 pm",
        toArrival: "03:00 pm",
        stops: [
          'Tirunelveli',
          'Tiruchirappalli',
          'Tirupathur',
          'Chengalpattu',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Erode",
        busNumber: "TN4410",
        fromArrival: "03:00 pm",
        toArrival: "06:15 am",
        stops: [
          'Tirunelveli',
          'Thoothukudi',
          'Nagapattinam',
          'Tirupathur',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Kallakurichi",
        busNumber: "TN7036",
        fromArrival: "09:00 pm",
        toArrival: "04:30 pm",
        stops: [
          'Tirunelveli',
          'Tirupathur',
          'Thoothukudi',
          'Theni',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Kanchipuram",
        busNumber: "TN5568",
        fromArrival: "12:00 pm",
        toArrival: "04:45 pm",
        stops: [
          'Tirunelveli',
          'Virudhunagar',
          'Tiruvarur',
          'Mayiladuthurai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Kanyakumari",
        busNumber: "TN6050",
        fromArrival: "10:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Tirunelveli',
          'Nilgiris',
          'Mayiladuthurai',
          'Tiruchirappalli',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Karur",
        busNumber: "TN6490",
        fromArrival: "07:30 am",
        toArrival: "09:15 pm",
        stops: ['Tirunelveli', 'Dindigul', 'Krishnagiri', 'Theni', 'Karur'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Krishnagiri",
        busNumber: "TN3238",
        fromArrival: "07:45 am",
        toArrival: "03:00 pm",
        stops: [
          'Tirunelveli',
          'Cuddalore',
          'Thanjavur',
          'Dharmapuri',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Madurai",
        busNumber: "TN1096",
        fromArrival: "12:45 pm",
        toArrival: "10:45 am",
        stops: ['Tirunelveli', 'Tiruvarur', 'Erode', 'Kanchipuram', 'Madurai'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Nagapattinam",
        busNumber: "TN4552",
        fromArrival: "07:00 pm",
        toArrival: "10:30 pm",
        stops: [
          'Tirunelveli',
          'Kallakurichi',
          'Vellore',
          'Chennai',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Namakkal",
        busNumber: "TN7273",
        fromArrival: "08:30 am",
        toArrival: "09:15 am",
        stops: ['Tirunelveli', 'Viluppuram', 'Tiruppur', 'Chennai', 'Namakkal'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Nilgiris",
        busNumber: "TN1164",
        fromArrival: "06:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Tirunelveli',
          'Virudhunagar',
          'Viluppuram',
          'Nagapattinam',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Perambalur",
        busNumber: "TN1016",
        fromArrival: "05:45 am",
        toArrival: "09:00 am",
        stops: [
          'Tirunelveli',
          'Tiruvallur',
          'Kanchipuram',
          'Karur',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Pudukkottai",
        busNumber: "TN6991",
        fromArrival: "10:30 am",
        toArrival: "10:00 am",
        stops: [
          'Tirunelveli',
          'Krishnagiri',
          'Cuddalore',
          'Salem',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Ramanathapuram",
        busNumber: "TN3894",
        fromArrival: "10:30 am",
        toArrival: "07:30 am",
        stops: [
          'Tirunelveli',
          'Kanchipuram',
          'Tiruchirappalli',
          'Perambalur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Ranipet",
        busNumber: "TN113",
        fromArrival: "05:45 am",
        toArrival: "03:15 pm",
        stops: [
          'Tirunelveli',
          'Cuddalore',
          'Madurai',
          'Chengalpattu',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Salem",
        busNumber: "TN2437",
        fromArrival: "11:00 am",
        toArrival: "08:00 pm",
        stops: ['Tirunelveli', 'Tiruppur', 'Viluppuram', 'Nilgiris', 'Salem'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Sivaganga",
        busNumber: "TN9241",
        fromArrival: "04:15 pm",
        toArrival: "02:15 pm",
        stops: ['Tirunelveli', 'Ariyalur', 'Salem', 'Viluppuram', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tenkasi",
        busNumber: "TN6555",
        fromArrival: "08:15 pm",
        toArrival: "06:45 pm",
        stops: ['Tirunelveli', 'Dindigul', 'Karur', 'Virudhunagar', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Thanjavur",
        busNumber: "TN8746",
        fromArrival: "03:45 pm",
        toArrival: "10:30 am",
        stops: [
          'Tirunelveli',
          'Nagapattinam',
          'Salem',
          'Viluppuram',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Theni",
        busNumber: "TN9649",
        fromArrival: "06:00 pm",
        toArrival: "06:30 pm",
        stops: [
          'Tirunelveli',
          'Virudhunagar',
          'Pudukkottai',
          'Ariyalur',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Thoothukudi",
        busNumber: "TN4888",
        fromArrival: "07:45 pm",
        toArrival: "07:45 pm",
        stops: [
          'Tirunelveli',
          'Sivaganga',
          'Pudukkottai',
          'Nagapattinam',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tiruchirappalli",
        busNumber: "TN1354",
        fromArrival: "10:45 am",
        toArrival: "08:30 pm",
        stops: [
          'Tirunelveli',
          'Chennai',
          'Ramanathapuram',
          'Tirupathur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tirupathur",
        busNumber: "TN4836",
        fromArrival: "05:00 am",
        toArrival: "12:30 pm",
        stops: [
          'Tirunelveli',
          'Dharmapuri',
          'Cuddalore',
          'Krishnagiri',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tiruppur",
        busNumber: "TN8540",
        fromArrival: "07:45 am",
        toArrival: "10:15 pm",
        stops: ['Tirunelveli', 'Tiruvallur', 'Sivaganga', 'Salem', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tiruvallur",
        busNumber: "TN3311",
        fromArrival: "02:00 pm",
        toArrival: "02:00 pm",
        stops: [
          'Tirunelveli',
          'Pudukkottai',
          'Kanchipuram',
          'Ramanathapuram',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tiruvannamalai",
        busNumber: "TN2215",
        fromArrival: "08:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Tirunelveli',
          'Mayiladuthurai',
          'Coimbatore',
          'Chennai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Tiruvarur",
        busNumber: "TN971",
        fromArrival: "12:30 pm",
        toArrival: "12:15 pm",
        stops: [
          'Tirunelveli',
          'Cuddalore',
          'Kanchipuram',
          'Tiruchirappalli',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Vellore",
        busNumber: "TN5452",
        fromArrival: "04:00 pm",
        toArrival: "07:15 am",
        stops: [
          'Tirunelveli',
          'Virudhunagar',
          'Kanyakumari',
          'Dindigul',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Viluppuram",
        busNumber: "TN646",
        fromArrival: "04:30 pm",
        toArrival: "05:45 pm",
        stops: [
          'Tirunelveli',
          'Sivaganga',
          'Nagapattinam',
          'Salem',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Virudhunagar",
        busNumber: "TN1569",
        fromArrival: "03:00 pm",
        toArrival: "09:30 am",
        stops: [
          'Tirunelveli',
          'Tirupathur',
          'Sivaganga',
          'Tiruppur',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tirunelveli",
        toCity: "Mayiladuthurai",
        busNumber: "TN3262",
        fromArrival: "09:30 pm",
        toArrival: "07:00 pm",
        stops: [
          'Tirunelveli',
          'Nilgiris',
          'Krishnagiri',
          'Thanjavur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Ariyalur",
        busNumber: "TN5227",
        fromArrival: "09:30 am",
        toArrival: "10:45 pm",
        stops: [
          'Tirupathur',
          'Dharmapuri',
          'Pudukkottai',
          'Tenkasi',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Chengalpattu",
        busNumber: "TN2270",
        fromArrival: "04:00 pm",
        toArrival: "09:30 pm",
        stops: [
          'Tirupathur',
          'Tiruppur',
          'Nilgiris',
          'Kanchipuram',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Chennai",
        busNumber: "TN371",
        fromArrival: "08:00 pm",
        toArrival: "01:45 pm",
        stops: ['Tirupathur', 'Madurai', 'Krishnagiri', 'Erode', 'Chennai'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Coimbatore",
        busNumber: "TN6866",
        fromArrival: "06:00 am",
        toArrival: "04:45 pm",
        stops: ['Tirupathur', 'Tirunelveli', 'Erode', 'Chennai', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Cuddalore",
        busNumber: "TN751",
        fromArrival: "03:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Tirupathur',
          'Erode',
          'Viluppuram',
          'Kallakurichi',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Dharmapuri",
        busNumber: "TN6136",
        fromArrival: "01:45 pm",
        toArrival: "04:00 pm",
        stops: [
          'Tirupathur',
          'Tiruvannamalai',
          'Cuddalore',
          'Krishnagiri',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Dindigul",
        busNumber: "TN5526",
        fromArrival: "10:45 am",
        toArrival: "02:30 pm",
        stops: [
          'Tirupathur',
          'Ramanathapuram',
          'Tiruvarur',
          'Chengalpattu',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Erode",
        busNumber: "TN2444",
        fromArrival: "07:30 pm",
        toArrival: "09:00 am",
        stops: [
          'Tirupathur',
          'Ranipet',
          'Tiruchirappalli',
          'Mayiladuthurai',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Kallakurichi",
        busNumber: "TN3411",
        fromArrival: "08:00 pm",
        toArrival: "03:45 pm",
        stops: [
          'Tirupathur',
          'Ranipet',
          'Perambalur',
          'Madurai',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Kanchipuram",
        busNumber: "TN9078",
        fromArrival: "12:00 pm",
        toArrival: "05:00 pm",
        stops: [
          'Tirupathur',
          'Perambalur',
          'Nilgiris',
          'Mayiladuthurai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Kanyakumari",
        busNumber: "TN9930",
        fromArrival: "06:15 pm",
        toArrival: "08:00 am",
        stops: [
          'Tirupathur',
          'Tiruchirappalli',
          'Krishnagiri',
          'Virudhunagar',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Karur",
        busNumber: "TN2346",
        fromArrival: "06:45 pm",
        toArrival: "08:15 pm",
        stops: ['Tirupathur', 'Ranipet', 'Tiruppur', 'Kallakurichi', 'Karur'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Krishnagiri",
        busNumber: "TN502",
        fromArrival: "05:30 pm",
        toArrival: "08:00 pm",
        stops: [
          'Tirupathur',
          'Tirunelveli',
          'Kanchipuram',
          'Nagapattinam',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Madurai",
        busNumber: "TN5411",
        fromArrival: "02:00 pm",
        toArrival: "07:00 pm",
        stops: ['Tirupathur', 'Cuddalore', 'Theni', 'Nilgiris', 'Madurai'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Nagapattinam",
        busNumber: "TN5137",
        fromArrival: "10:30 pm",
        toArrival: "01:15 pm",
        stops: [
          'Tirupathur',
          'Tenkasi',
          'Cuddalore',
          'Namakkal',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Namakkal",
        busNumber: "TN1347",
        fromArrival: "03:30 pm",
        toArrival: "12:00 pm",
        stops: [
          'Tirupathur',
          'Kallakurichi',
          'Ramanathapuram',
          'Tiruvarur',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Nilgiris",
        busNumber: "TN7857",
        fromArrival: "12:30 pm",
        toArrival: "06:00 am",
        stops: [
          'Tirupathur',
          'Kanyakumari',
          'Tirunelveli',
          'Tiruchirappalli',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Perambalur",
        busNumber: "TN6473",
        fromArrival: "12:30 pm",
        toArrival: "09:45 am",
        stops: [
          'Tirupathur',
          'Nagapattinam',
          'Tiruvarur',
          'Krishnagiri',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Pudukkottai",
        busNumber: "TN9486",
        fromArrival: "08:30 am",
        toArrival: "10:45 pm",
        stops: [
          'Tirupathur',
          'Sivaganga',
          'Coimbatore',
          'Kanyakumari',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Ramanathapuram",
        busNumber: "TN8178",
        fromArrival: "06:15 am",
        toArrival: "10:30 pm",
        stops: [
          'Tirupathur',
          'Tirunelveli',
          'Sivaganga',
          'Tiruvallur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Ranipet",
        busNumber: "TN7965",
        fromArrival: "07:30 am",
        toArrival: "12:15 pm",
        stops: ['Tirupathur', 'Vellore', 'Cuddalore', 'Coimbatore', 'Ranipet'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Salem",
        busNumber: "TN6279",
        fromArrival: "08:15 am",
        toArrival: "01:30 pm",
        stops: ['Tirupathur', 'Ranipet', 'Tiruvarur', 'Tiruppur', 'Salem'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Sivaganga",
        busNumber: "TN2978",
        fromArrival: "03:15 pm",
        toArrival: "08:30 am",
        stops: [
          'Tirupathur',
          'Virudhunagar',
          'Chengalpattu',
          'Kanyakumari',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tenkasi",
        busNumber: "TN1563",
        fromArrival: "02:45 pm",
        toArrival: "07:00 am",
        stops: [
          'Tirupathur',
          'Thanjavur',
          'Dharmapuri',
          'Chengalpattu',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Thanjavur",
        busNumber: "TN7432",
        fromArrival: "02:00 pm",
        toArrival: "08:15 pm",
        stops: [
          'Tirupathur',
          'Dindigul',
          'Ramanathapuram',
          'Perambalur',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Theni",
        busNumber: "TN2770",
        fromArrival: "04:15 pm",
        toArrival: "01:45 pm",
        stops: [
          'Tirupathur',
          'Krishnagiri',
          'Salem',
          'Ramanathapuram',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Thoothukudi",
        busNumber: "TN9367",
        fromArrival: "10:30 am",
        toArrival: "09:30 pm",
        stops: [
          'Tirupathur',
          'Dharmapuri',
          'Tiruchirappalli',
          'Pudukkottai',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tiruchirappalli",
        busNumber: "TN3027",
        fromArrival: "02:45 pm",
        toArrival: "09:15 pm",
        stops: [
          'Tirupathur',
          'Tiruvallur',
          'Tiruvarur',
          'Karur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tirunelveli",
        busNumber: "TN2461",
        fromArrival: "05:00 am",
        toArrival: "06:45 am",
        stops: [
          'Tirupathur',
          'Tiruvallur',
          'Nagapattinam',
          'Ranipet',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tiruppur",
        busNumber: "TN9618",
        fromArrival: "07:45 am",
        toArrival: "07:00 am",
        stops: [
          'Tirupathur',
          'Viluppuram',
          'Chengalpattu',
          'Thoothukudi',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tiruvallur",
        busNumber: "TN4258",
        fromArrival: "06:45 pm",
        toArrival: "05:30 pm",
        stops: [
          'Tirupathur',
          'Chennai',
          'Perambalur',
          'Kanyakumari',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tiruvannamalai",
        busNumber: "TN6361",
        fromArrival: "06:15 am",
        toArrival: "06:00 pm",
        stops: [
          'Tirupathur',
          'Karur',
          'Tenkasi',
          'Kanchipuram',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Tiruvarur",
        busNumber: "TN932",
        fromArrival: "04:30 pm",
        toArrival: "05:15 pm",
        stops: [
          'Tirupathur',
          'Chengalpattu',
          'Dindigul',
          'Viluppuram',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Vellore",
        busNumber: "TN4196",
        fromArrival: "07:30 pm",
        toArrival: "12:15 pm",
        stops: [
          'Tirupathur',
          'Kanchipuram',
          'Madurai',
          'Tiruvallur',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Viluppuram",
        busNumber: "TN8718",
        fromArrival: "05:00 pm",
        toArrival: "10:15 am",
        stops: ['Tirupathur', 'Namakkal', 'Coimbatore', 'Karur', 'Viluppuram'],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Virudhunagar",
        busNumber: "TN1324",
        fromArrival: "11:00 am",
        toArrival: "01:15 pm",
        stops: [
          'Tirupathur',
          'Nilgiris',
          'Ramanathapuram',
          'Tiruvannamalai',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tirupathur",
        toCity: "Mayiladuthurai",
        busNumber: "TN9536",
        fromArrival: "05:15 pm",
        toArrival: "10:15 am",
        stops: [
          'Tirupathur',
          'Thoothukudi',
          'Chennai',
          'Tenkasi',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Ariyalur",
        busNumber: "TN2352",
        fromArrival: "09:00 pm",
        toArrival: "08:15 pm",
        stops: ['Tiruppur', 'Chennai', 'Karur', 'Chengalpattu', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Chengalpattu",
        busNumber: "TN2259",
        fromArrival: "11:00 am",
        toArrival: "09:30 pm",
        stops: [
          'Tiruppur',
          'Kallakurichi',
          'Tenkasi',
          'Nilgiris',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Chennai",
        busNumber: "TN9841",
        fromArrival: "05:30 am",
        toArrival: "08:30 am",
        stops: ['Tiruppur', 'Dharmapuri', 'Tirunelveli', 'Dindigul', 'Chennai'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Coimbatore",
        busNumber: "TN3191",
        fromArrival: "07:15 am",
        toArrival: "11:45 am",
        stops: ['Tiruppur', 'Madurai', 'Dindigul', 'Salem', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Cuddalore",
        busNumber: "TN8497",
        fromArrival: "04:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Tiruppur',
          'Mayiladuthurai',
          'Tiruvarur',
          'Tiruchirappalli',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Dharmapuri",
        busNumber: "TN2785",
        fromArrival: "08:45 pm",
        toArrival: "06:30 am",
        stops: ['Tiruppur', 'Ranipet', 'Pudukkottai', 'Theni', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Dindigul",
        busNumber: "TN6676",
        fromArrival: "03:15 pm",
        toArrival: "04:00 pm",
        stops: [
          'Tiruppur',
          'Tiruvarur',
          'Nagapattinam',
          'Sivaganga',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Erode",
        busNumber: "TN5996",
        fromArrival: "07:45 am",
        toArrival: "07:30 pm",
        stops: ['Tiruppur', 'Tiruvallur', 'Perambalur', 'Cuddalore', 'Erode'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Kallakurichi",
        busNumber: "TN7420",
        fromArrival: "10:30 pm",
        toArrival: "08:15 am",
        stops: [
          'Tiruppur',
          'Krishnagiri',
          'Chennai',
          'Cuddalore',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Kanchipuram",
        busNumber: "TN3721",
        fromArrival: "12:45 pm",
        toArrival: "08:45 am",
        stops: [
          'Tiruppur',
          'Ramanathapuram',
          'Sivaganga',
          'Karur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Kanyakumari",
        busNumber: "TN7421",
        fromArrival: "11:15 am",
        toArrival: "07:30 am",
        stops: ['Tiruppur', 'Chennai', 'Viluppuram', 'Erode', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Karur",
        busNumber: "TN6674",
        fromArrival: "06:00 pm",
        toArrival: "02:30 pm",
        stops: ['Tiruppur', 'Theni', 'Kallakurichi', 'Salem', 'Karur'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Krishnagiri",
        busNumber: "TN2561",
        fromArrival: "09:45 am",
        toArrival: "12:00 pm",
        stops: [
          'Tiruppur',
          'Kanyakumari',
          'Dindigul',
          'Tirunelveli',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Madurai",
        busNumber: "TN3993",
        fromArrival: "03:00 pm",
        toArrival: "10:15 pm",
        stops: ['Tiruppur', 'Chengalpattu', 'Namakkal', 'Vellore', 'Madurai'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Nagapattinam",
        busNumber: "TN6472",
        fromArrival: "06:45 pm",
        toArrival: "05:45 pm",
        stops: [
          'Tiruppur',
          'Perambalur',
          'Vellore',
          'Sivaganga',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Namakkal",
        busNumber: "TN743",
        fromArrival: "08:30 am",
        toArrival: "09:00 pm",
        stops: [
          'Tiruppur',
          'Krishnagiri',
          'Tiruvarur',
          'Tirunelveli',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Nilgiris",
        busNumber: "TN8033",
        fromArrival: "09:30 pm",
        toArrival: "06:15 pm",
        stops: [
          'Tiruppur',
          'Tenkasi',
          'Ramanathapuram',
          'Tiruchirappalli',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Perambalur",
        busNumber: "TN4314",
        fromArrival: "04:30 pm",
        toArrival: "09:00 am",
        stops: ['Tiruppur', 'Ranipet', 'Karur', 'Tiruvallur', 'Perambalur'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Pudukkottai",
        busNumber: "TN8826",
        fromArrival: "08:45 am",
        toArrival: "02:45 pm",
        stops: [
          'Tiruppur',
          'Mayiladuthurai',
          'Tiruvannamalai',
          'Karur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Ramanathapuram",
        busNumber: "TN3273",
        fromArrival: "10:15 am",
        toArrival: "01:15 pm",
        stops: [
          'Tiruppur',
          'Virudhunagar',
          'Vellore',
          'Ranipet',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Ranipet",
        busNumber: "TN9785",
        fromArrival: "02:30 pm",
        toArrival: "11:30 am",
        stops: ['Tiruppur', 'Theni', 'Karur', 'Cuddalore', 'Ranipet'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Salem",
        busNumber: "TN2725",
        fromArrival: "07:45 am",
        toArrival: "09:15 am",
        stops: ['Tiruppur', 'Dindigul', 'Ramanathapuram', 'Sivaganga', 'Salem'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Sivaganga",
        busNumber: "TN6854",
        fromArrival: "09:15 pm",
        toArrival: "01:45 pm",
        stops: ['Tiruppur', 'Cuddalore', 'Theni', 'Madurai', 'Sivaganga'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tenkasi",
        busNumber: "TN2683",
        fromArrival: "10:45 pm",
        toArrival: "06:00 am",
        stops: ['Tiruppur', 'Dindigul', 'Nilgiris', 'Ranipet', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Thanjavur",
        busNumber: "TN9098",
        fromArrival: "04:30 pm",
        toArrival: "07:45 pm",
        stops: [
          'Tiruppur',
          'Nagapattinam',
          'Ariyalur',
          'Ramanathapuram',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Theni",
        busNumber: "TN7370",
        fromArrival: "10:15 pm",
        toArrival: "12:30 pm",
        stops: [
          'Tiruppur',
          'Cuddalore',
          'Kanchipuram',
          'Mayiladuthurai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Thoothukudi",
        busNumber: "TN5943",
        fromArrival: "08:00 pm",
        toArrival: "07:15 am",
        stops: [
          'Tiruppur',
          'Nilgiris',
          'Ariyalur',
          'Kallakurichi',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tiruchirappalli",
        busNumber: "TN2929",
        fromArrival: "05:15 am",
        toArrival: "10:45 am",
        stops: [
          'Tiruppur',
          'Kanyakumari',
          'Dindigul',
          'Tirupathur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tirunelveli",
        busNumber: "TN1813",
        fromArrival: "04:00 pm",
        toArrival: "12:30 pm",
        stops: [
          'Tiruppur',
          'Coimbatore',
          'Theni',
          'Kanyakumari',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tirupathur",
        busNumber: "TN7240",
        fromArrival: "09:15 am",
        toArrival: "10:30 pm",
        stops: [
          'Tiruppur',
          'Krishnagiri',
          'Thanjavur',
          'Nagapattinam',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tiruvallur",
        busNumber: "TN4871",
        fromArrival: "05:00 pm",
        toArrival: "08:00 am",
        stops: [
          'Tiruppur',
          'Erode',
          'Mayiladuthurai',
          'Kallakurichi',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tiruvannamalai",
        busNumber: "TN8057",
        fromArrival: "10:30 pm",
        toArrival: "08:15 pm",
        stops: [
          'Tiruppur',
          'Namakkal',
          'Karur',
          'Coimbatore',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Tiruvarur",
        busNumber: "TN1516",
        fromArrival: "04:45 pm",
        toArrival: "11:15 am",
        stops: [
          'Tiruppur',
          'Mayiladuthurai',
          'Ranipet',
          'Perambalur',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Vellore",
        busNumber: "TN5139",
        fromArrival: "07:30 am",
        toArrival: "12:30 pm",
        stops: [
          'Tiruppur',
          'Tiruvannamalai',
          'Nilgiris',
          'Dharmapuri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Viluppuram",
        busNumber: "TN1650",
        fromArrival: "10:00 am",
        toArrival: "11:00 am",
        stops: [
          'Tiruppur',
          'Madurai',
          'Thoothukudi',
          'Sivaganga',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Virudhunagar",
        busNumber: "TN9074",
        fromArrival: "06:45 am",
        toArrival: "12:45 pm",
        stops: ['Tiruppur', 'Salem', 'Erode', 'Tiruvarur', 'Virudhunagar'],
      ),

      Bus(
        fromCity: "Tiruppur",
        toCity: "Mayiladuthurai",
        busNumber: "TN1174",
        fromArrival: "05:45 am",
        toArrival: "09:45 pm",
        stops: [
          'Tiruppur',
          'Kanyakumari',
          'Salem',
          'Nilgiris',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Ariyalur",
        busNumber: "TN8297",
        fromArrival: "09:15 am",
        toArrival: "11:00 am",
        stops: [
          'Tiruvallur',
          'Sivaganga',
          'Kanyakumari',
          'Virudhunagar',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Chengalpattu",
        busNumber: "TN405",
        fromArrival: "10:15 pm",
        toArrival: "09:30 am",
        stops: ['Tiruvallur', 'Tirupathur', 'Tenkasi', 'Theni', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Chennai",
        busNumber: "TN7528",
        fromArrival: "10:30 am",
        toArrival: "05:15 pm",
        stops: [
          'Tiruvallur',
          'Kanyakumari',
          'Pudukkottai',
          'Tiruvarur',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Coimbatore",
        busNumber: "TN3624",
        fromArrival: "01:45 pm",
        toArrival: "09:00 am",
        stops: [
          'Tiruvallur',
          'Nagapattinam',
          'Virudhunagar',
          'Ariyalur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Cuddalore",
        busNumber: "TN977",
        fromArrival: "05:30 pm",
        toArrival: "11:15 am",
        stops: ['Tiruvallur', 'Erode', 'Tenkasi', 'Salem', 'Cuddalore'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Dharmapuri",
        busNumber: "TN4932",
        fromArrival: "04:15 pm",
        toArrival: "07:00 pm",
        stops: [
          'Tiruvallur',
          'Kanyakumari',
          'Tirupathur',
          'Erode',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Dindigul",
        busNumber: "TN2573",
        fromArrival: "07:30 am",
        toArrival: "06:45 am",
        stops: ['Tiruvallur', 'Salem', 'Nilgiris', 'Chengalpattu', 'Dindigul'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Erode",
        busNumber: "TN3684",
        fromArrival: "06:45 pm",
        toArrival: "12:30 pm",
        stops: [
          'Tiruvallur',
          'Cuddalore',
          'Coimbatore',
          'Ramanathapuram',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Kallakurichi",
        busNumber: "TN7139",
        fromArrival: "07:00 pm",
        toArrival: "08:00 pm",
        stops: [
          'Tiruvallur',
          'Dharmapuri',
          'Namakkal',
          'Tiruppur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Kanchipuram",
        busNumber: "TN3823",
        fromArrival: "10:45 am",
        toArrival: "01:00 pm",
        stops: ['Tiruvallur', 'Dharmapuri', 'Theni', 'Chennai', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Kanyakumari",
        busNumber: "TN423",
        fromArrival: "02:30 pm",
        toArrival: "07:30 am",
        stops: [
          'Tiruvallur',
          'Coimbatore',
          'Virudhunagar',
          'Pudukkottai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Karur",
        busNumber: "TN5814",
        fromArrival: "09:00 am",
        toArrival: "10:00 pm",
        stops: [
          'Tiruvallur',
          'Nagapattinam',
          'Mayiladuthurai',
          'Tirunelveli',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Krishnagiri",
        busNumber: "TN5399",
        fromArrival: "03:30 pm",
        toArrival: "08:15 pm",
        stops: ['Tiruvallur', 'Tiruvarur', 'Tenkasi', 'Karur', 'Krishnagiri'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Madurai",
        busNumber: "TN6760",
        fromArrival: "11:45 am",
        toArrival: "01:15 pm",
        stops: [
          'Tiruvallur',
          'Dindigul',
          'Krishnagiri',
          'Virudhunagar',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Nagapattinam",
        busNumber: "TN9263",
        fromArrival: "08:15 am",
        toArrival: "06:45 am",
        stops: [
          'Tiruvallur',
          'Ranipet',
          'Tirunelveli',
          'Kanyakumari',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Namakkal",
        busNumber: "TN1898",
        fromArrival: "07:00 pm",
        toArrival: "05:00 pm",
        stops: [
          'Tiruvallur',
          'Tiruppur',
          'Tirunelveli',
          'Krishnagiri',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Nilgiris",
        busNumber: "TN8147",
        fromArrival: "01:15 pm",
        toArrival: "03:30 pm",
        stops: [
          'Tiruvallur',
          'Chennai',
          'Coimbatore',
          'Tiruchirappalli',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Perambalur",
        busNumber: "TN5895",
        fromArrival: "05:45 am",
        toArrival: "05:00 am",
        stops: [
          'Tiruvallur',
          'Vellore',
          'Cuddalore',
          'Chengalpattu',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Pudukkottai",
        busNumber: "TN4911",
        fromArrival: "01:45 pm",
        toArrival: "05:15 am",
        stops: [
          'Tiruvallur',
          'Chengalpattu',
          'Mayiladuthurai',
          'Dharmapuri',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Ramanathapuram",
        busNumber: "TN4681",
        fromArrival: "08:45 am",
        toArrival: "07:15 pm",
        stops: [
          'Tiruvallur',
          'Perambalur',
          'Pudukkottai',
          'Tiruvarur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Ranipet",
        busNumber: "TN452",
        fromArrival: "05:45 am",
        toArrival: "12:30 pm",
        stops: [
          'Tiruvallur',
          'Tiruvannamalai',
          'Salem',
          'Chengalpattu',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Salem",
        busNumber: "TN9485",
        fromArrival: "07:00 am",
        toArrival: "06:00 pm",
        stops: [
          'Tiruvallur',
          'Krishnagiri',
          'Dharmapuri',
          'Kanchipuram',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Sivaganga",
        busNumber: "TN2754",
        fromArrival: "06:45 am",
        toArrival: "07:00 am",
        stops: [
          'Tiruvallur',
          'Coimbatore',
          'Nagapattinam',
          'Kallakurichi',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tenkasi",
        busNumber: "TN9162",
        fromArrival: "11:30 am",
        toArrival: "10:30 am",
        stops: ['Tiruvallur', 'Tiruppur', 'Nilgiris', 'Chennai', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Thanjavur",
        busNumber: "TN9244",
        fromArrival: "05:15 pm",
        toArrival: "09:45 am",
        stops: ['Tiruvallur', 'Theni', 'Nagapattinam', 'Ariyalur', 'Thanjavur'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Theni",
        busNumber: "TN4680",
        fromArrival: "09:15 pm",
        toArrival: "04:00 pm",
        stops: [
          'Tiruvallur',
          'Thanjavur',
          'Tenkasi',
          'Mayiladuthurai',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Thoothukudi",
        busNumber: "TN6479",
        fromArrival: "06:00 pm",
        toArrival: "09:15 pm",
        stops: [
          'Tiruvallur',
          'Vellore',
          'Thanjavur',
          'Viluppuram',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tiruchirappalli",
        busNumber: "TN2662",
        fromArrival: "12:00 pm",
        toArrival: "09:45 pm",
        stops: [
          'Tiruvallur',
          'Tirupathur',
          'Namakkal',
          'Tiruvannamalai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tirunelveli",
        busNumber: "TN1094",
        fromArrival: "02:00 pm",
        toArrival: "08:15 am",
        stops: [
          'Tiruvallur',
          'Tiruchirappalli',
          'Tiruvannamalai',
          'Tirupathur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tirupathur",
        busNumber: "TN3231",
        fromArrival: "05:30 pm",
        toArrival: "02:30 pm",
        stops: [
          'Tiruvallur',
          'Virudhunagar',
          'Tirunelveli',
          'Coimbatore',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tiruppur",
        busNumber: "TN3078",
        fromArrival: "07:00 pm",
        toArrival: "09:00 pm",
        stops: ['Tiruvallur', 'Salem', 'Karur', 'Namakkal', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tiruvannamalai",
        busNumber: "TN1868",
        fromArrival: "01:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Tiruvallur',
          'Theni',
          'Thoothukudi',
          'Tiruvarur',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Tiruvarur",
        busNumber: "TN3219",
        fromArrival: "08:45 am",
        toArrival: "09:30 am",
        stops: [
          'Tiruvallur',
          'Krishnagiri',
          'Ranipet',
          'Kanyakumari',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Vellore",
        busNumber: "TN2883",
        fromArrival: "11:15 am",
        toArrival: "07:30 pm",
        stops: ['Tiruvallur', 'Viluppuram', 'Chennai', 'Erode', 'Vellore'],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Viluppuram",
        busNumber: "TN6786",
        fromArrival: "04:15 pm",
        toArrival: "08:30 am",
        stops: [
          'Tiruvallur',
          'Nilgiris',
          'Madurai',
          'Perambalur',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Virudhunagar",
        busNumber: "TN8455",
        fromArrival: "02:30 pm",
        toArrival: "11:15 am",
        stops: [
          'Tiruvallur',
          'Tiruvannamalai',
          'Perambalur',
          'Madurai',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tiruvallur",
        toCity: "Mayiladuthurai",
        busNumber: "TN834",
        fromArrival: "12:30 pm",
        toArrival: "03:15 pm",
        stops: [
          'Tiruvallur',
          'Vellore',
          'Cuddalore',
          'Chengalpattu',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Ariyalur",
        busNumber: "TN4977",
        fromArrival: "07:30 pm",
        toArrival: "10:00 am",
        stops: [
          'Tiruvannamalai',
          'Coimbatore',
          'Tiruchirappalli',
          'Tirunelveli',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Chengalpattu",
        busNumber: "TN2932",
        fromArrival: "05:00 am",
        toArrival: "04:45 pm",
        stops: [
          'Tiruvannamalai',
          'Dindigul',
          'Tiruppur',
          'Ariyalur',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Chennai",
        busNumber: "TN9680",
        fromArrival: "04:00 pm",
        toArrival: "05:15 pm",
        stops: ['Tiruvannamalai', 'Ariyalur', 'Salem', 'Tiruppur', 'Chennai'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Coimbatore",
        busNumber: "TN3913",
        fromArrival: "04:30 pm",
        toArrival: "10:15 am",
        stops: [
          'Tiruvannamalai',
          'Kanchipuram',
          'Tirupathur',
          'Sivaganga',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Cuddalore",
        busNumber: "TN5071",
        fromArrival: "09:15 pm",
        toArrival: "02:30 pm",
        stops: [
          'Tiruvannamalai',
          'Tirunelveli',
          'Ranipet',
          'Kanchipuram',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Dharmapuri",
        busNumber: "TN3869",
        fromArrival: "01:00 pm",
        toArrival: "10:00 pm",
        stops: [
          'Tiruvannamalai',
          'Krishnagiri',
          'Karur',
          'Pudukkottai',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Dindigul",
        busNumber: "TN9588",
        fromArrival: "05:00 am",
        toArrival: "08:45 am",
        stops: [
          'Tiruvannamalai',
          'Tiruppur',
          'Kallakurichi',
          'Mayiladuthurai',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Erode",
        busNumber: "TN9654",
        fromArrival: "08:30 pm",
        toArrival: "09:15 am",
        stops: ['Tiruvannamalai', 'Nilgiris', 'Ariyalur', 'Dindigul', 'Erode'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Kallakurichi",
        busNumber: "TN2249",
        fromArrival: "09:45 pm",
        toArrival: "09:30 am",
        stops: [
          'Tiruvannamalai',
          'Thanjavur',
          'Perambalur',
          'Virudhunagar',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Kanchipuram",
        busNumber: "TN7315",
        fromArrival: "06:00 am",
        toArrival: "07:45 am",
        stops: [
          'Tiruvannamalai',
          'Thanjavur',
          'Dharmapuri',
          'Tenkasi',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Kanyakumari",
        busNumber: "TN3852",
        fromArrival: "11:00 am",
        toArrival: "09:15 pm",
        stops: [
          'Tiruvannamalai',
          'Ranipet',
          'Theni',
          'Mayiladuthurai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Karur",
        busNumber: "TN7581",
        fromArrival: "08:30 pm",
        toArrival: "05:30 pm",
        stops: [
          'Tiruvannamalai',
          'Krishnagiri',
          'Coimbatore',
          'Nagapattinam',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Krishnagiri",
        busNumber: "TN5129",
        fromArrival: "10:30 pm",
        toArrival: "09:45 am",
        stops: [
          'Tiruvannamalai',
          'Coimbatore',
          'Nagapattinam',
          'Pudukkottai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Madurai",
        busNumber: "TN2833",
        fromArrival: "04:15 pm",
        toArrival: "10:45 am",
        stops: [
          'Tiruvannamalai',
          'Nagapattinam',
          'Erode',
          'Thoothukudi',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Nagapattinam",
        busNumber: "TN5227",
        fromArrival: "02:00 pm",
        toArrival: "06:30 pm",
        stops: [
          'Tiruvannamalai',
          'Dindigul',
          'Erode',
          'Tirupathur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Namakkal",
        busNumber: "TN1161",
        fromArrival: "12:15 pm",
        toArrival: "09:30 am",
        stops: ['Tiruvannamalai', 'Erode', 'Theni', 'Tiruvarur', 'Namakkal'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Nilgiris",
        busNumber: "TN1371",
        fromArrival: "03:15 pm",
        toArrival: "03:00 pm",
        stops: [
          'Tiruvannamalai',
          'Kanchipuram',
          'Kanyakumari',
          'Dindigul',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Perambalur",
        busNumber: "TN7483",
        fromArrival: "02:30 pm",
        toArrival: "11:30 am",
        stops: [
          'Tiruvannamalai',
          'Erode',
          'Tirupathur',
          'Namakkal',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Pudukkottai",
        busNumber: "TN5238",
        fromArrival: "05:15 pm",
        toArrival: "05:00 pm",
        stops: [
          'Tiruvannamalai',
          'Coimbatore',
          'Tenkasi',
          'Tiruchirappalli',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Ramanathapuram",
        busNumber: "TN6249",
        fromArrival: "08:45 am",
        toArrival: "05:45 am",
        stops: [
          'Tiruvannamalai',
          'Kanyakumari',
          'Tiruvallur',
          'Tirunelveli',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Ranipet",
        busNumber: "TN7364",
        fromArrival: "01:00 pm",
        toArrival: "09:15 pm",
        stops: ['Tiruvannamalai', 'Sivaganga', 'Dindigul', 'Karur', 'Ranipet'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Salem",
        busNumber: "TN4130",
        fromArrival: "08:15 pm",
        toArrival: "10:00 am",
        stops: [
          'Tiruvannamalai',
          'Tiruchirappalli',
          'Tiruvarur',
          'Nagapattinam',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Sivaganga",
        busNumber: "TN5451",
        fromArrival: "05:15 pm",
        toArrival: "03:30 pm",
        stops: [
          'Tiruvannamalai',
          'Nilgiris',
          'Tiruppur',
          'Virudhunagar',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tenkasi",
        busNumber: "TN8873",
        fromArrival: "05:00 pm",
        toArrival: "08:00 am",
        stops: ['Tiruvannamalai', 'Dindigul', 'Theni', 'Tiruvarur', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Thanjavur",
        busNumber: "TN4184",
        fromArrival: "02:00 pm",
        toArrival: "09:45 pm",
        stops: [
          'Tiruvannamalai',
          'Nagapattinam',
          'Nilgiris',
          'Virudhunagar',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Theni",
        busNumber: "TN4347",
        fromArrival: "09:00 am",
        toArrival: "12:15 pm",
        stops: ['Tiruvannamalai', 'Thanjavur', 'Tenkasi', 'Nilgiris', 'Theni'],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Thoothukudi",
        busNumber: "TN5380",
        fromArrival: "05:45 pm",
        toArrival: "07:15 am",
        stops: [
          'Tiruvannamalai',
          'Viluppuram',
          'Chennai',
          'Karur',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tiruchirappalli",
        busNumber: "TN5833",
        fromArrival: "07:15 pm",
        toArrival: "11:30 am",
        stops: [
          'Tiruvannamalai',
          'Salem',
          'Thoothukudi',
          'Madurai',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tirunelveli",
        busNumber: "TN8769",
        fromArrival: "05:15 pm",
        toArrival: "01:30 pm",
        stops: [
          'Tiruvannamalai',
          'Tiruchirappalli',
          'Viluppuram',
          'Madurai',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tirupathur",
        busNumber: "TN1925",
        fromArrival: "04:15 pm",
        toArrival: "05:45 am",
        stops: [
          'Tiruvannamalai',
          'Chennai',
          'Thoothukudi',
          'Theni',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tiruppur",
        busNumber: "TN9343",
        fromArrival: "05:00 pm",
        toArrival: "10:15 pm",
        stops: [
          'Tiruvannamalai',
          'Tirupathur',
          'Tiruvarur',
          'Namakkal',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tiruvallur",
        busNumber: "TN125",
        fromArrival: "06:00 am",
        toArrival: "06:15 pm",
        stops: [
          'Tiruvannamalai',
          'Pudukkottai',
          'Kanyakumari',
          'Ramanathapuram',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Tiruvarur",
        busNumber: "TN1285",
        fromArrival: "10:00 pm",
        toArrival: "01:30 pm",
        stops: [
          'Tiruvannamalai',
          'Dharmapuri',
          'Dindigul',
          'Nilgiris',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Vellore",
        busNumber: "TN1331",
        fromArrival: "07:30 am",
        toArrival: "08:00 am",
        stops: [
          'Tiruvannamalai',
          'Cuddalore',
          'Erode',
          'Krishnagiri',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Viluppuram",
        busNumber: "TN255",
        fromArrival: "09:45 am",
        toArrival: "10:15 am",
        stops: [
          'Tiruvannamalai',
          'Erode',
          'Tirunelveli',
          'Virudhunagar',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Virudhunagar",
        busNumber: "TN667",
        fromArrival: "07:30 pm",
        toArrival: "09:15 pm",
        stops: [
          'Tiruvannamalai',
          'Tiruvarur',
          'Tiruchirappalli',
          'Sivaganga',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tiruvannamalai",
        toCity: "Mayiladuthurai",
        busNumber: "TN1259",
        fromArrival: "05:30 am",
        toArrival: "05:15 am",
        stops: [
          'Tiruvannamalai',
          'Tiruvarur',
          'Chennai',
          'Cuddalore',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Ariyalur",
        busNumber: "TN4112",
        fromArrival: "07:45 pm",
        toArrival: "06:30 pm",
        stops: ['Tiruvarur', 'Kanyakumari', 'Theni', 'Tenkasi', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Chengalpattu",
        busNumber: "TN5750",
        fromArrival: "06:00 am",
        toArrival: "07:15 am",
        stops: [
          'Tiruvarur',
          'Dindigul',
          'Krishnagiri',
          'Sivaganga',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Chennai",
        busNumber: "TN889",
        fromArrival: "08:00 am",
        toArrival: "06:45 am",
        stops: ['Tiruvarur', 'Theni', 'Krishnagiri', 'Thanjavur', 'Chennai'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Coimbatore",
        busNumber: "TN9887",
        fromArrival: "01:30 pm",
        toArrival: "07:15 am",
        stops: ['Tiruvarur', 'Perambalur', 'Karur', 'Tenkasi', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Cuddalore",
        busNumber: "TN3722",
        fromArrival: "07:45 pm",
        toArrival: "09:30 pm",
        stops: [
          'Tiruvarur',
          'Chennai',
          'Nagapattinam',
          'Tiruvallur',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Dharmapuri",
        busNumber: "TN8333",
        fromArrival: "06:45 am",
        toArrival: "08:45 pm",
        stops: [
          'Tiruvarur',
          'Tiruppur',
          'Salem',
          'Ramanathapuram',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Dindigul",
        busNumber: "TN5253",
        fromArrival: "05:30 am",
        toArrival: "09:30 am",
        stops: ['Tiruvarur', 'Cuddalore', 'Thoothukudi', 'Theni', 'Dindigul'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Erode",
        busNumber: "TN3823",
        fromArrival: "02:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Tiruvarur',
          'Tiruchirappalli',
          'Ramanathapuram',
          'Dharmapuri',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Kallakurichi",
        busNumber: "TN1051",
        fromArrival: "05:45 am",
        toArrival: "12:30 pm",
        stops: [
          'Tiruvarur',
          'Sivaganga',
          'Mayiladuthurai',
          'Thanjavur',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Kanchipuram",
        busNumber: "TN3399",
        fromArrival: "07:30 am",
        toArrival: "07:15 am",
        stops: [
          'Tiruvarur',
          'Thoothukudi',
          'Sivaganga',
          'Pudukkottai',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Kanyakumari",
        busNumber: "TN8892",
        fromArrival: "07:00 pm",
        toArrival: "07:30 pm",
        stops: [
          'Tiruvarur',
          'Pudukkottai',
          'Kanchipuram',
          'Madurai',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Karur",
        busNumber: "TN7576",
        fromArrival: "05:15 am",
        toArrival: "04:15 pm",
        stops: [
          'Tiruvarur',
          'Ramanathapuram',
          'Kanchipuram',
          'Chengalpattu',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Krishnagiri",
        busNumber: "TN6265",
        fromArrival: "12:30 pm",
        toArrival: "08:00 pm",
        stops: [
          'Tiruvarur',
          'Tiruchirappalli',
          'Thoothukudi',
          'Perambalur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Madurai",
        busNumber: "TN4673",
        fromArrival: "06:00 pm",
        toArrival: "02:45 pm",
        stops: [
          'Tiruvarur',
          'Ranipet',
          'Chengalpattu',
          'Krishnagiri',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Nagapattinam",
        busNumber: "TN4059",
        fromArrival: "02:00 pm",
        toArrival: "07:15 pm",
        stops: ['Tiruvarur', 'Karur', 'Tirupathur', 'Tiruppur', 'Nagapattinam'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Namakkal",
        busNumber: "TN5875",
        fromArrival: "01:45 pm",
        toArrival: "11:45 am",
        stops: [
          'Tiruvarur',
          'Krishnagiri',
          'Tiruvannamalai',
          'Erode',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Nilgiris",
        busNumber: "TN7893",
        fromArrival: "03:00 pm",
        toArrival: "01:15 pm",
        stops: ['Tiruvarur', 'Vellore', 'Dindigul', 'Ranipet', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Perambalur",
        busNumber: "TN2797",
        fromArrival: "01:30 pm",
        toArrival: "07:15 pm",
        stops: [
          'Tiruvarur',
          'Tiruchirappalli',
          'Nagapattinam',
          'Tiruppur',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Pudukkottai",
        busNumber: "TN687",
        fromArrival: "09:15 pm",
        toArrival: "11:30 am",
        stops: [
          'Tiruvarur',
          'Nilgiris',
          'Chennai',
          'Chengalpattu',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Ramanathapuram",
        busNumber: "TN7193",
        fromArrival: "07:15 am",
        toArrival: "06:15 am",
        stops: [
          'Tiruvarur',
          'Vellore',
          'Tiruvannamalai',
          'Ariyalur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Ranipet",
        busNumber: "TN2343",
        fromArrival: "12:45 pm",
        toArrival: "08:30 am",
        stops: [
          'Tiruvarur',
          'Pudukkottai',
          'Namakkal',
          'Kanchipuram',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Salem",
        busNumber: "TN8852",
        fromArrival: "05:45 pm",
        toArrival: "10:45 am",
        stops: [
          'Tiruvarur',
          'Tenkasi',
          'Ramanathapuram',
          'Pudukkottai',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Sivaganga",
        busNumber: "TN7570",
        fromArrival: "09:45 am",
        toArrival: "08:30 am",
        stops: [
          'Tiruvarur',
          'Chengalpattu',
          'Mayiladuthurai',
          'Kallakurichi',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tenkasi",
        busNumber: "TN8657",
        fromArrival: "07:00 pm",
        toArrival: "11:00 am",
        stops: ['Tiruvarur', 'Erode', 'Karur', 'Thanjavur', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Thanjavur",
        busNumber: "TN8020",
        fromArrival: "08:00 pm",
        toArrival: "06:30 am",
        stops: [
          'Tiruvarur',
          'Dharmapuri',
          'Theni',
          'Kallakurichi',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Theni",
        busNumber: "TN4810",
        fromArrival: "06:45 am",
        toArrival: "12:30 pm",
        stops: ['Tiruvarur', 'Ranipet', 'Tiruchirappalli', 'Vellore', 'Theni'],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Thoothukudi",
        busNumber: "TN656",
        fromArrival: "01:45 pm",
        toArrival: "10:45 am",
        stops: [
          'Tiruvarur',
          'Vellore',
          'Krishnagiri',
          'Kanyakumari',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tiruchirappalli",
        busNumber: "TN3378",
        fromArrival: "09:00 am",
        toArrival: "09:45 am",
        stops: [
          'Tiruvarur',
          'Dindigul',
          'Salem',
          'Ariyalur',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tirunelveli",
        busNumber: "TN1778",
        fromArrival: "10:45 am",
        toArrival: "12:45 pm",
        stops: [
          'Tiruvarur',
          'Ramanathapuram',
          'Thoothukudi',
          'Erode',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tirupathur",
        busNumber: "TN8253",
        fromArrival: "11:45 am",
        toArrival: "08:00 pm",
        stops: [
          'Tiruvarur',
          'Tirunelveli',
          'Virudhunagar',
          'Namakkal',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tiruppur",
        busNumber: "TN3765",
        fromArrival: "06:00 am",
        toArrival: "05:45 pm",
        stops: [
          'Tiruvarur',
          'Tiruchirappalli',
          'Dindigul',
          'Chennai',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tiruvallur",
        busNumber: "TN4254",
        fromArrival: "08:00 pm",
        toArrival: "06:15 am",
        stops: [
          'Tiruvarur',
          'Sivaganga',
          'Kanchipuram',
          'Viluppuram',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Tiruvannamalai",
        busNumber: "TN8381",
        fromArrival: "09:00 am",
        toArrival: "05:30 pm",
        stops: [
          'Tiruvarur',
          'Chennai',
          'Krishnagiri',
          'Tiruchirappalli',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Vellore",
        busNumber: "TN8849",
        fromArrival: "06:30 pm",
        toArrival: "08:30 am",
        stops: [
          'Tiruvarur',
          'Coimbatore',
          'Chennai',
          'Ramanathapuram',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Viluppuram",
        busNumber: "TN7884",
        fromArrival: "09:00 pm",
        toArrival: "05:45 am",
        stops: [
          'Tiruvarur',
          'Madurai',
          'Thoothukudi',
          'Perambalur',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Virudhunagar",
        busNumber: "TN6772",
        fromArrival: "05:00 am",
        toArrival: "05:00 pm",
        stops: [
          'Tiruvarur',
          'Madurai',
          'Vellore',
          'Nagapattinam',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Tiruvarur",
        toCity: "Mayiladuthurai",
        busNumber: "TN1942",
        fromArrival: "09:00 am",
        toArrival: "07:00 am",
        stops: [
          'Tiruvarur',
          'Sivaganga',
          'Namakkal',
          'Ariyalur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Ariyalur",
        busNumber: "TN7064",
        fromArrival: "03:00 pm",
        toArrival: "10:15 pm",
        stops: ['Vellore', 'Pudukkottai', 'Chennai', 'Coimbatore', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Chengalpattu",
        busNumber: "TN9799",
        fromArrival: "01:15 pm",
        toArrival: "05:45 pm",
        stops: ['Vellore', 'Perambalur', 'Tenkasi', 'Salem', 'Chengalpattu'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Chennai",
        busNumber: "TN798",
        fromArrival: "08:30 am",
        toArrival: "04:00 pm",
        stops: ['Vellore', 'Theni', 'Tiruppur', 'Sivaganga', 'Chennai'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Coimbatore",
        busNumber: "TN8282",
        fromArrival: "11:15 am",
        toArrival: "06:45 am",
        stops: ['Vellore', 'Tiruppur', 'Tiruvallur', 'Theni', 'Coimbatore'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Cuddalore",
        busNumber: "TN6951",
        fromArrival: "06:45 am",
        toArrival: "07:15 pm",
        stops: [
          'Vellore',
          'Viluppuram',
          'Madurai',
          'Tiruvannamalai',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Dharmapuri",
        busNumber: "TN3318",
        fromArrival: "04:30 pm",
        toArrival: "09:45 pm",
        stops: ['Vellore', 'Sivaganga', 'Tiruppur', 'Karur', 'Dharmapuri'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Dindigul",
        busNumber: "TN1128",
        fromArrival: "07:45 pm",
        toArrival: "08:15 am",
        stops: ['Vellore', 'Viluppuram', 'Ranipet', 'Thanjavur', 'Dindigul'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Erode",
        busNumber: "TN3669",
        fromArrival: "06:00 pm",
        toArrival: "08:45 pm",
        stops: ['Vellore', 'Ramanathapuram', 'Dindigul', 'Madurai', 'Erode'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Kallakurichi",
        busNumber: "TN692",
        fromArrival: "04:45 pm",
        toArrival: "08:45 pm",
        stops: [
          'Vellore',
          'Kanyakumari',
          'Perambalur',
          'Kanchipuram',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Kanchipuram",
        busNumber: "TN1478",
        fromArrival: "01:15 pm",
        toArrival: "05:00 pm",
        stops: ['Vellore', 'Madurai', 'Thanjavur', 'Tenkasi', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Kanyakumari",
        busNumber: "TN1299",
        fromArrival: "06:15 pm",
        toArrival: "08:45 pm",
        stops: ['Vellore', 'Ranipet', 'Namakkal', 'Kanchipuram', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Karur",
        busNumber: "TN9425",
        fromArrival: "01:00 pm",
        toArrival: "05:45 am",
        stops: [
          'Vellore',
          'Namakkal',
          'Thoothukudi',
          'Tiruvannamalai',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Krishnagiri",
        busNumber: "TN6323",
        fromArrival: "11:45 am",
        toArrival: "01:15 pm",
        stops: [
          'Vellore',
          'Tiruvarur',
          'Dharmapuri',
          'Tiruvannamalai',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Madurai",
        busNumber: "TN758",
        fromArrival: "09:45 am",
        toArrival: "01:45 pm",
        stops: ['Vellore', 'Kallakurichi', 'Kanyakumari', 'Erode', 'Madurai'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Nagapattinam",
        busNumber: "TN311",
        fromArrival: "12:00 pm",
        toArrival: "06:45 am",
        stops: [
          'Vellore',
          'Kallakurichi',
          'Tiruvarur',
          'Pudukkottai',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Namakkal",
        busNumber: "TN5847",
        fromArrival: "05:30 pm",
        toArrival: "08:30 am",
        stops: [
          'Vellore',
          'Chengalpattu',
          'Mayiladuthurai',
          'Nilgiris',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Nilgiris",
        busNumber: "TN3458",
        fromArrival: "09:15 pm",
        toArrival: "06:15 am",
        stops: ['Vellore', 'Chengalpattu', 'Sivaganga', 'Ariyalur', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Perambalur",
        busNumber: "TN4979",
        fromArrival: "06:15 am",
        toArrival: "02:30 pm",
        stops: [
          'Vellore',
          'Erode',
          'Tiruvannamalai',
          'Kanchipuram',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Pudukkottai",
        busNumber: "TN9189",
        fromArrival: "05:45 pm",
        toArrival: "12:45 pm",
        stops: [
          'Vellore',
          'Krishnagiri',
          'Chengalpattu',
          'Nagapattinam',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Ramanathapuram",
        busNumber: "TN5872",
        fromArrival: "10:45 pm",
        toArrival: "02:00 pm",
        stops: [
          'Vellore',
          'Virudhunagar',
          'Tenkasi',
          'Perambalur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Ranipet",
        busNumber: "TN821",
        fromArrival: "07:15 pm",
        toArrival: "07:00 pm",
        stops: [
          'Vellore',
          'Ramanathapuram',
          'Tiruvannamalai',
          'Nilgiris',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Salem",
        busNumber: "TN9258",
        fromArrival: "09:30 am",
        toArrival: "06:45 pm",
        stops: ['Vellore', 'Tirupathur', 'Theni', 'Tiruvallur', 'Salem'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Sivaganga",
        busNumber: "TN222",
        fromArrival: "01:30 pm",
        toArrival: "12:00 pm",
        stops: [
          'Vellore',
          'Tiruvannamalai',
          'Dharmapuri',
          'Tiruchirappalli',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tenkasi",
        busNumber: "TN1229",
        fromArrival: "07:45 pm",
        toArrival: "08:30 pm",
        stops: ['Vellore', 'Sivaganga', 'Cuddalore', 'Pudukkottai', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Thanjavur",
        busNumber: "TN9199",
        fromArrival: "07:30 am",
        toArrival: "01:15 pm",
        stops: [
          'Vellore',
          'Tirunelveli',
          'Pudukkottai',
          'Ranipet',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Theni",
        busNumber: "TN6215",
        fromArrival: "08:45 am",
        toArrival: "06:45 am",
        stops: ['Vellore', 'Thanjavur', 'Tiruvarur', 'Krishnagiri', 'Theni'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Thoothukudi",
        busNumber: "TN7727",
        fromArrival: "10:00 am",
        toArrival: "07:15 am",
        stops: [
          'Vellore',
          'Nagapattinam',
          'Tiruchirappalli',
          'Kallakurichi',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tiruchirappalli",
        busNumber: "TN1649",
        fromArrival: "12:15 pm",
        toArrival: "10:15 pm",
        stops: ['Vellore', 'Salem', 'Tiruvarur', 'Theni', 'Tiruchirappalli'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tirunelveli",
        busNumber: "TN6888",
        fromArrival: "07:00 am",
        toArrival: "06:15 am",
        stops: [
          'Vellore',
          'Ramanathapuram',
          'Kanchipuram',
          'Theni',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tirupathur",
        busNumber: "TN8456",
        fromArrival: "05:15 am",
        toArrival: "04:00 pm",
        stops: [
          'Vellore',
          'Salem',
          'Kallakurichi',
          'Tiruvannamalai',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tiruppur",
        busNumber: "TN9755",
        fromArrival: "07:45 am",
        toArrival: "05:00 am",
        stops: ['Vellore', 'Ranipet', 'Cuddalore', 'Kanchipuram', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tiruvallur",
        busNumber: "TN652",
        fromArrival: "10:15 am",
        toArrival: "10:00 am",
        stops: ['Vellore', 'Pudukkottai', 'Madurai', 'Tiruppur', 'Tiruvallur'],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tiruvannamalai",
        busNumber: "TN6971",
        fromArrival: "05:45 pm",
        toArrival: "10:15 am",
        stops: [
          'Vellore',
          'Dharmapuri',
          'Cuddalore',
          'Tiruchirappalli',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Tiruvarur",
        busNumber: "TN1457",
        fromArrival: "10:00 am",
        toArrival: "12:15 pm",
        stops: [
          'Vellore',
          'Tiruchirappalli',
          'Coimbatore',
          'Kanchipuram',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Viluppuram",
        busNumber: "TN3450",
        fromArrival: "06:15 pm",
        toArrival: "07:45 am",
        stops: [
          'Vellore',
          'Kanyakumari',
          'Krishnagiri',
          'Tiruvarur',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Virudhunagar",
        busNumber: "TN3615",
        fromArrival: "09:15 am",
        toArrival: "11:15 am",
        stops: [
          'Vellore',
          'Thoothukudi',
          'Ariyalur',
          'Ranipet',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Vellore",
        toCity: "Mayiladuthurai",
        busNumber: "TN2092",
        fromArrival: "10:45 pm",
        toArrival: "11:15 am",
        stops: [
          'Vellore',
          'Kanchipuram',
          'Dindigul',
          'Pudukkottai',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Ariyalur",
        busNumber: "TN5541",
        fromArrival: "10:15 pm",
        toArrival: "01:15 pm",
        stops: ['Viluppuram', 'Dharmapuri', 'Krishnagiri', 'Erode', 'Ariyalur'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Chengalpattu",
        busNumber: "TN567",
        fromArrival: "11:15 am",
        toArrival: "01:15 pm",
        stops: [
          'Viluppuram',
          'Mayiladuthurai',
          'Thoothukudi',
          'Kanyakumari',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Chennai",
        busNumber: "TN7882",
        fromArrival: "02:15 pm",
        toArrival: "10:00 pm",
        stops: ['Viluppuram', 'Nilgiris', 'Salem', 'Dharmapuri', 'Chennai'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Coimbatore",
        busNumber: "TN4178",
        fromArrival: "07:30 pm",
        toArrival: "09:30 am",
        stops: [
          'Viluppuram',
          'Perambalur',
          'Tiruchirappalli',
          'Nilgiris',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Cuddalore",
        busNumber: "TN4967",
        fromArrival: "03:15 pm",
        toArrival: "09:30 pm",
        stops: [
          'Viluppuram',
          'Madurai',
          'Chennai',
          'Kallakurichi',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Dharmapuri",
        busNumber: "TN1649",
        fromArrival: "03:45 pm",
        toArrival: "06:00 pm",
        stops: [
          'Viluppuram',
          'Dindigul',
          'Chennai',
          'Tiruvallur',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Dindigul",
        busNumber: "TN451",
        fromArrival: "02:15 pm",
        toArrival: "07:00 am",
        stops: [
          'Viluppuram',
          'Pudukkottai',
          'Theni',
          'Ramanathapuram',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Erode",
        busNumber: "TN9214",
        fromArrival: "11:30 am",
        toArrival: "04:45 pm",
        stops: [
          'Viluppuram',
          'Tiruvannamalai',
          'Pudukkottai',
          'Kallakurichi',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Kallakurichi",
        busNumber: "TN4434",
        fromArrival: "03:00 pm",
        toArrival: "11:45 am",
        stops: [
          'Viluppuram',
          'Krishnagiri',
          'Namakkal',
          'Theni',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Kanchipuram",
        busNumber: "TN3857",
        fromArrival: "10:15 am",
        toArrival: "08:00 am",
        stops: ['Viluppuram', 'Ariyalur', 'Erode', 'Vellore', 'Kanchipuram'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Kanyakumari",
        busNumber: "TN2613",
        fromArrival: "08:30 pm",
        toArrival: "08:15 pm",
        stops: ['Viluppuram', 'Ranipet', 'Karur', 'Tirunelveli', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Karur",
        busNumber: "TN6798",
        fromArrival: "08:15 pm",
        toArrival: "06:15 am",
        stops: [
          'Viluppuram',
          'Perambalur',
          'Tiruchirappalli',
          'Nilgiris',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Krishnagiri",
        busNumber: "TN9741",
        fromArrival: "09:15 am",
        toArrival: "08:45 pm",
        stops: [
          'Viluppuram',
          'Pudukkottai',
          'Erode',
          'Tirupathur',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Madurai",
        busNumber: "TN7337",
        fromArrival: "08:15 pm",
        toArrival: "04:15 pm",
        stops: ['Viluppuram', 'Karur', 'Salem', 'Nilgiris', 'Madurai'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Nagapattinam",
        busNumber: "TN2843",
        fromArrival: "10:45 pm",
        toArrival: "07:00 am",
        stops: [
          'Viluppuram',
          'Vellore',
          'Ranipet',
          'Perambalur',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Namakkal",
        busNumber: "TN3833",
        fromArrival: "08:30 pm",
        toArrival: "08:15 am",
        stops: [
          'Viluppuram',
          'Chennai',
          'Kanchipuram',
          'Tirunelveli',
          'Namakkal',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Nilgiris",
        busNumber: "TN1981",
        fromArrival: "06:15 pm",
        toArrival: "10:00 am",
        stops: [
          'Viluppuram',
          'Coimbatore',
          'Tirupathur',
          'Dindigul',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Perambalur",
        busNumber: "TN2599",
        fromArrival: "09:30 pm",
        toArrival: "04:30 pm",
        stops: [
          'Viluppuram',
          'Tiruchirappalli',
          'Coimbatore',
          'Kanyakumari',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Pudukkottai",
        busNumber: "TN8279",
        fromArrival: "02:45 pm",
        toArrival: "05:45 am",
        stops: [
          'Viluppuram',
          'Kanyakumari',
          'Thanjavur',
          'Tirunelveli',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Ramanathapuram",
        busNumber: "TN6528",
        fromArrival: "10:15 am",
        toArrival: "03:15 pm",
        stops: [
          'Viluppuram',
          'Tiruvannamalai',
          'Dindigul',
          'Sivaganga',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Ranipet",
        busNumber: "TN5912",
        fromArrival: "07:00 am",
        toArrival: "07:00 pm",
        stops: ['Viluppuram', 'Theni', 'Tenkasi', 'Cuddalore', 'Ranipet'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Salem",
        busNumber: "TN2350",
        fromArrival: "04:15 pm",
        toArrival: "10:15 am",
        stops: ['Viluppuram', 'Cuddalore', 'Coimbatore', 'Theni', 'Salem'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Sivaganga",
        busNumber: "TN7098",
        fromArrival: "03:00 pm",
        toArrival: "05:15 pm",
        stops: [
          'Viluppuram',
          'Ariyalur',
          'Dindigul',
          'Kanchipuram',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tenkasi",
        busNumber: "TN8991",
        fromArrival: "06:00 pm",
        toArrival: "09:45 am",
        stops: [
          'Viluppuram',
          'Thanjavur',
          'Virudhunagar',
          'Dindigul',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Thanjavur",
        busNumber: "TN2823",
        fromArrival: "12:30 pm",
        toArrival: "09:00 am",
        stops: [
          'Viluppuram',
          'Virudhunagar',
          'Ariyalur',
          'Krishnagiri',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Theni",
        busNumber: "TN202",
        fromArrival: "10:00 pm",
        toArrival: "10:15 am",
        stops: [
          'Viluppuram',
          'Pudukkottai',
          'Thanjavur',
          'Nagapattinam',
          'Theni',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Thoothukudi",
        busNumber: "TN8179",
        fromArrival: "08:45 am",
        toArrival: "04:30 pm",
        stops: [
          'Viluppuram',
          'Kanyakumari',
          'Krishnagiri',
          'Chengalpattu',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tiruchirappalli",
        busNumber: "TN4145",
        fromArrival: "09:45 pm",
        toArrival: "07:30 am",
        stops: [
          'Viluppuram',
          'Karur',
          'Tiruvannamalai',
          'Kanchipuram',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tirunelveli",
        busNumber: "TN6653",
        fromArrival: "12:15 pm",
        toArrival: "04:15 pm",
        stops: [
          'Viluppuram',
          'Ariyalur',
          'Salem',
          'Ramanathapuram',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tirupathur",
        busNumber: "TN1647",
        fromArrival: "08:30 pm",
        toArrival: "10:45 am",
        stops: [
          'Viluppuram',
          'Salem',
          'Tiruppur',
          'Chengalpattu',
          'Tirupathur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tiruppur",
        busNumber: "TN9698",
        fromArrival: "05:30 am",
        toArrival: "07:15 pm",
        stops: ['Viluppuram', 'Tirupathur', 'Dindigul', 'Erode', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tiruvallur",
        busNumber: "TN5422",
        fromArrival: "11:45 am",
        toArrival: "04:00 pm",
        stops: [
          'Viluppuram',
          'Tiruppur',
          'Krishnagiri',
          'Dharmapuri',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tiruvannamalai",
        busNumber: "TN7513",
        fromArrival: "07:00 pm",
        toArrival: "09:00 pm",
        stops: [
          'Viluppuram',
          'Cuddalore',
          'Mayiladuthurai',
          'Madurai',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Tiruvarur",
        busNumber: "TN8397",
        fromArrival: "08:30 pm",
        toArrival: "06:45 pm",
        stops: [
          'Viluppuram',
          'Karur',
          'Mayiladuthurai',
          'Thanjavur',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Vellore",
        busNumber: "TN7378",
        fromArrival: "02:30 pm",
        toArrival: "03:15 pm",
        stops: ['Viluppuram', 'Salem', 'Namakkal', 'Cuddalore', 'Vellore'],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Virudhunagar",
        busNumber: "TN1082",
        fromArrival: "06:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Viluppuram',
          'Kanyakumari',
          'Mayiladuthurai',
          'Tirunelveli',
          'Virudhunagar',
        ],
      ),

      Bus(
        fromCity: "Viluppuram",
        toCity: "Mayiladuthurai",
        busNumber: "TN1238",
        fromArrival: "11:45 am",
        toArrival: "10:30 pm",
        stops: [
          'Viluppuram',
          'Kanchipuram',
          'Ranipet',
          'Ariyalur',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Ariyalur",
        busNumber: "TN1984",
        fromArrival: "10:45 am",
        toArrival: "10:45 pm",
        stops: [
          'Virudhunagar',
          'Sivaganga',
          'Salem',
          'Mayiladuthurai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Chengalpattu",
        busNumber: "TN5948",
        fromArrival: "02:00 pm",
        toArrival: "09:15 am",
        stops: [
          'Virudhunagar',
          'Kanyakumari',
          'Mayiladuthurai',
          'Thanjavur',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Chennai",
        busNumber: "TN216",
        fromArrival: "11:45 am",
        toArrival: "03:30 pm",
        stops: [
          'Virudhunagar',
          'Tiruvannamalai',
          'Tirunelveli',
          'Cuddalore',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Coimbatore",
        busNumber: "TN5349",
        fromArrival: "05:30 pm",
        toArrival: "05:15 am",
        stops: [
          'Virudhunagar',
          'Tenkasi',
          'Pudukkottai',
          'Madurai',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Cuddalore",
        busNumber: "TN8421",
        fromArrival: "06:30 pm",
        toArrival: "05:15 am",
        stops: [
          'Virudhunagar',
          'Tiruchirappalli',
          'Chengalpattu',
          'Kanyakumari',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Dharmapuri",
        busNumber: "TN6352",
        fromArrival: "11:00 am",
        toArrival: "09:00 am",
        stops: [
          'Virudhunagar',
          'Kanyakumari',
          'Nagapattinam',
          'Kanchipuram',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Dindigul",
        busNumber: "TN3975",
        fromArrival: "04:15 pm",
        toArrival: "02:15 pm",
        stops: [
          'Virudhunagar',
          'Tiruvarur',
          'Sivaganga',
          'Coimbatore',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Erode",
        busNumber: "TN133",
        fromArrival: "01:15 pm",
        toArrival: "06:30 am",
        stops: [
          'Virudhunagar',
          'Perambalur',
          'Cuddalore',
          'Dharmapuri',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Kallakurichi",
        busNumber: "TN3583",
        fromArrival: "07:30 pm",
        toArrival: "06:15 pm",
        stops: [
          'Virudhunagar',
          'Pudukkottai',
          'Madurai',
          'Cuddalore',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Kanchipuram",
        busNumber: "TN4698",
        fromArrival: "07:30 pm",
        toArrival: "05:15 pm",
        stops: [
          'Virudhunagar',
          'Perambalur',
          'Theni',
          'Tirupathur',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Kanyakumari",
        busNumber: "TN7776",
        fromArrival: "04:30 pm",
        toArrival: "08:15 pm",
        stops: ['Virudhunagar', 'Vellore', 'Nilgiris', 'Salem', 'Kanyakumari'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Karur",
        busNumber: "TN3570",
        fromArrival: "10:15 pm",
        toArrival: "09:45 am",
        stops: [
          'Virudhunagar',
          'Nilgiris',
          'Tirupathur',
          'Thoothukudi',
          'Karur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Krishnagiri",
        busNumber: "TN2339",
        fromArrival: "01:45 pm",
        toArrival: "04:15 pm",
        stops: [
          'Virudhunagar',
          'Ramanathapuram',
          'Vellore',
          'Coimbatore',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Madurai",
        busNumber: "TN8874",
        fromArrival: "05:15 pm",
        toArrival: "07:00 am",
        stops: [
          'Virudhunagar',
          'Salem',
          'Thoothukudi',
          'Tiruchirappalli',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Nagapattinam",
        busNumber: "TN3452",
        fromArrival: "03:00 pm",
        toArrival: "07:00 pm",
        stops: [
          'Virudhunagar',
          'Thanjavur',
          'Krishnagiri',
          'Viluppuram',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Namakkal",
        busNumber: "TN3639",
        fromArrival: "08:30 pm",
        toArrival: "05:00 am",
        stops: ['Virudhunagar', 'Ranipet', 'Tirupathur', 'Erode', 'Namakkal'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Nilgiris",
        busNumber: "TN3389",
        fromArrival: "05:15 am",
        toArrival: "12:15 pm",
        stops: [
          'Virudhunagar',
          'Pudukkottai',
          'Kanyakumari',
          'Krishnagiri',
          'Nilgiris',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Perambalur",
        busNumber: "TN4370",
        fromArrival: "08:45 am",
        toArrival: "02:30 pm",
        stops: [
          'Virudhunagar',
          'Viluppuram',
          'Nagapattinam',
          'Tiruvarur',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Pudukkottai",
        busNumber: "TN5069",
        fromArrival: "05:15 pm",
        toArrival: "09:15 am",
        stops: ['Virudhunagar', 'Karur', 'Tiruppur', 'Salem', 'Pudukkottai'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Ramanathapuram",
        busNumber: "TN9270",
        fromArrival: "11:30 am",
        toArrival: "11:30 am",
        stops: [
          'Virudhunagar',
          'Mayiladuthurai',
          'Kallakurichi',
          'Tiruvarur',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Ranipet",
        busNumber: "TN8315",
        fromArrival: "07:30 am",
        toArrival: "11:45 am",
        stops: [
          'Virudhunagar',
          'Vellore',
          'Ramanathapuram',
          'Namakkal',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Salem",
        busNumber: "TN4558",
        fromArrival: "11:30 am",
        toArrival: "10:00 am",
        stops: [
          'Virudhunagar',
          'Ramanathapuram',
          'Erode',
          'Thoothukudi',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Sivaganga",
        busNumber: "TN556",
        fromArrival: "10:15 am",
        toArrival: "11:00 am",
        stops: [
          'Virudhunagar',
          'Nilgiris',
          'Tiruvarur',
          'Cuddalore',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tenkasi",
        busNumber: "TN1757",
        fromArrival: "02:45 pm",
        toArrival: "09:15 pm",
        stops: [
          'Virudhunagar',
          'Coimbatore',
          'Viluppuram',
          'Namakkal',
          'Tenkasi',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Thanjavur",
        busNumber: "TN9694",
        fromArrival: "06:30 am",
        toArrival: "01:30 pm",
        stops: [
          'Virudhunagar',
          'Coimbatore',
          'Tiruppur',
          'Tirunelveli',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Theni",
        busNumber: "TN3657",
        fromArrival: "12:45 pm",
        toArrival: "06:45 am",
        stops: ['Virudhunagar', 'Tirunelveli', 'Vellore', 'Tiruppur', 'Theni'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Thoothukudi",
        busNumber: "TN3882",
        fromArrival: "06:45 am",
        toArrival: "03:15 pm",
        stops: [
          'Virudhunagar',
          'Viluppuram',
          'Karur',
          'Krishnagiri',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tiruchirappalli",
        busNumber: "TN5927",
        fromArrival: "09:15 pm",
        toArrival: "12:45 pm",
        stops: [
          'Virudhunagar',
          'Namakkal',
          'Karur',
          'Thoothukudi',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tirunelveli",
        busNumber: "TN374",
        fromArrival: "05:30 am",
        toArrival: "02:45 pm",
        stops: [
          'Virudhunagar',
          'Tiruvarur',
          'Kallakurichi',
          'Tirupathur',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tirupathur",
        busNumber: "TN1410",
        fromArrival: "08:45 pm",
        toArrival: "10:00 am",
        stops: ['Virudhunagar', 'Karur', 'Thanjavur', 'Vellore', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tiruppur",
        busNumber: "TN2497",
        fromArrival: "12:30 pm",
        toArrival: "10:00 am",
        stops: ['Virudhunagar', 'Theni', 'Karur', 'Tiruvallur', 'Tiruppur'],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tiruvallur",
        busNumber: "TN681",
        fromArrival: "05:00 am",
        toArrival: "05:30 am",
        stops: [
          'Virudhunagar',
          'Cuddalore',
          'Kanyakumari',
          'Sivaganga',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tiruvannamalai",
        busNumber: "TN421",
        fromArrival: "11:45 am",
        toArrival: "09:45 am",
        stops: [
          'Virudhunagar',
          'Tiruvallur',
          'Kanchipuram',
          'Ranipet',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Tiruvarur",
        busNumber: "TN7626",
        fromArrival: "06:45 pm",
        toArrival: "07:30 am",
        stops: [
          'Virudhunagar',
          'Krishnagiri',
          'Tiruvannamalai',
          'Tirupathur',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Vellore",
        busNumber: "TN3131",
        fromArrival: "04:00 pm",
        toArrival: "01:00 pm",
        stops: [
          'Virudhunagar',
          'Tirupathur',
          'Nagapattinam',
          'Ariyalur',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Viluppuram",
        busNumber: "TN3173",
        fromArrival: "10:15 pm",
        toArrival: "07:30 am",
        stops: [
          'Virudhunagar',
          'Kanyakumari',
          'Madurai',
          'Tenkasi',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Virudhunagar",
        toCity: "Mayiladuthurai",
        busNumber: "TN7138",
        fromArrival: "05:00 am",
        toArrival: "06:30 am",
        stops: [
          'Virudhunagar',
          'Namakkal',
          'Chennai',
          'Ranipet',
          'Mayiladuthurai',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Ariyalur",
        busNumber: "TN5672",
        fromArrival: "09:30 pm",
        toArrival: "06:00 pm",
        stops: [
          'Mayiladuthurai',
          'Viluppuram',
          'Sivaganga',
          'Madurai',
          'Ariyalur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Chengalpattu",
        busNumber: "TN1664",
        fromArrival: "03:45 pm",
        toArrival: "07:00 pm",
        stops: [
          'Mayiladuthurai',
          'Chennai',
          'Viluppuram',
          'Thoothukudi',
          'Chengalpattu',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Chennai",
        busNumber: "TN4715",
        fromArrival: "09:15 am",
        toArrival: "10:30 am",
        stops: [
          'Mayiladuthurai',
          'Virudhunagar',
          'Kanchipuram',
          'Tirupathur',
          'Chennai',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Coimbatore",
        busNumber: "TN5730",
        fromArrival: "04:00 pm",
        toArrival: "10:45 pm",
        stops: [
          'Mayiladuthurai',
          'Kanchipuram',
          'Tiruppur',
          'Karur',
          'Coimbatore',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Cuddalore",
        busNumber: "TN745",
        fromArrival: "10:45 pm",
        toArrival: "09:30 pm",
        stops: [
          'Mayiladuthurai',
          'Namakkal',
          'Dindigul',
          'Kanyakumari',
          'Cuddalore',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Dharmapuri",
        busNumber: "TN5670",
        fromArrival: "03:00 pm",
        toArrival: "01:45 pm",
        stops: [
          'Mayiladuthurai',
          'Perambalur',
          'Tenkasi',
          'Madurai',
          'Dharmapuri',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Dindigul",
        busNumber: "TN6934",
        fromArrival: "10:45 am",
        toArrival: "09:00 am",
        stops: [
          'Mayiladuthurai',
          'Virudhunagar',
          'Salem',
          'Kallakurichi',
          'Dindigul',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Erode",
        busNumber: "TN2932",
        fromArrival: "01:30 pm",
        toArrival: "04:15 pm",
        stops: [
          'Mayiladuthurai',
          'Karur',
          'Virudhunagar',
          'Tiruvarur',
          'Erode',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Kallakurichi",
        busNumber: "TN7899",
        fromArrival: "06:00 am",
        toArrival: "03:45 pm",
        stops: [
          'Mayiladuthurai',
          'Viluppuram',
          'Kanyakumari',
          'Theni',
          'Kallakurichi',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Kanchipuram",
        busNumber: "TN3037",
        fromArrival: "04:30 pm",
        toArrival: "05:00 pm",
        stops: [
          'Mayiladuthurai',
          'Tiruvarur',
          'Tiruvannamalai',
          'Namakkal',
          'Kanchipuram',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Kanyakumari",
        busNumber: "TN3711",
        fromArrival: "07:00 pm",
        toArrival: "12:00 pm",
        stops: [
          'Mayiladuthurai',
          'Ariyalur',
          'Salem',
          'Tirupathur',
          'Kanyakumari',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Karur",
        busNumber: "TN6699",
        fromArrival: "09:15 pm",
        toArrival: "10:15 am",
        stops: ['Mayiladuthurai', 'Erode', 'Chengalpattu', 'Vellore', 'Karur'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Krishnagiri",
        busNumber: "TN404",
        fromArrival: "07:15 am",
        toArrival: "08:45 am",
        stops: [
          'Mayiladuthurai',
          'Kanchipuram',
          'Viluppuram',
          'Dharmapuri',
          'Krishnagiri',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Madurai",
        busNumber: "TN1332",
        fromArrival: "08:15 am",
        toArrival: "07:15 am",
        stops: [
          'Mayiladuthurai',
          'Kallakurichi',
          'Tirunelveli',
          'Tirupathur',
          'Madurai',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Nagapattinam",
        busNumber: "TN251",
        fromArrival: "09:15 am",
        toArrival: "08:15 am",
        stops: [
          'Mayiladuthurai',
          'Kanchipuram',
          'Madurai',
          'Krishnagiri',
          'Nagapattinam',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Namakkal",
        busNumber: "TN4969",
        fromArrival: "08:15 pm",
        toArrival: "06:15 am",
        stops: ['Mayiladuthurai', 'Salem', 'Vellore', 'Dharmapuri', 'Namakkal'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Nilgiris",
        busNumber: "TN5493",
        fromArrival: "02:15 pm",
        toArrival: "09:45 am",
        stops: ['Mayiladuthurai', 'Tenkasi', 'Karur', 'Theni', 'Nilgiris'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Perambalur",
        busNumber: "TN2370",
        fromArrival: "12:00 pm",
        toArrival: "10:45 pm",
        stops: [
          'Mayiladuthurai',
          'Karur',
          'Vellore',
          'Thoothukudi',
          'Perambalur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Pudukkottai",
        busNumber: "TN3330",
        fromArrival: "07:00 pm",
        toArrival: "10:30 am",
        stops: [
          'Mayiladuthurai',
          'Tiruvallur',
          'Tiruvannamalai',
          'Ariyalur',
          'Pudukkottai',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Ramanathapuram",
        busNumber: "TN1499",
        fromArrival: "05:45 pm",
        toArrival: "07:45 pm",
        stops: [
          'Mayiladuthurai',
          'Vellore',
          'Tiruppur',
          'Ranipet',
          'Ramanathapuram',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Ranipet",
        busNumber: "TN3163",
        fromArrival: "08:15 pm",
        toArrival: "10:30 am",
        stops: [
          'Mayiladuthurai',
          'Ramanathapuram',
          'Tiruchirappalli',
          'Perambalur',
          'Ranipet',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Salem",
        busNumber: "TN3983",
        fromArrival: "06:45 pm",
        toArrival: "11:15 am",
        stops: [
          'Mayiladuthurai',
          'Ramanathapuram',
          'Theni',
          'Krishnagiri',
          'Salem',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Sivaganga",
        busNumber: "TN5544",
        fromArrival: "05:15 am",
        toArrival: "05:30 am",
        stops: [
          'Mayiladuthurai',
          'Tiruvallur',
          'Namakkal',
          'Theni',
          'Sivaganga',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tenkasi",
        busNumber: "TN8595",
        fromArrival: "12:00 pm",
        toArrival: "07:30 pm",
        stops: ['Mayiladuthurai', 'Coimbatore', 'Tiruppur', 'Erode', 'Tenkasi'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Thanjavur",
        busNumber: "TN563",
        fromArrival: "09:15 pm",
        toArrival: "07:00 pm",
        stops: [
          'Mayiladuthurai',
          'Tiruvannamalai',
          'Erode',
          'Tenkasi',
          'Thanjavur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Theni",
        busNumber: "TN9859",
        fromArrival: "08:00 am",
        toArrival: "05:30 pm",
        stops: ['Mayiladuthurai', 'Madurai', 'Vellore', 'Namakkal', 'Theni'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Thoothukudi",
        busNumber: "TN8027",
        fromArrival: "11:30 am",
        toArrival: "06:45 am",
        stops: [
          'Mayiladuthurai',
          'Coimbatore',
          'Vellore',
          'Tiruchirappalli',
          'Thoothukudi',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tiruchirappalli",
        busNumber: "TN2252",
        fromArrival: "08:30 pm",
        toArrival: "07:30 am",
        stops: [
          'Mayiladuthurai',
          'Nilgiris',
          'Krishnagiri',
          'Cuddalore',
          'Tiruchirappalli',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tirunelveli",
        busNumber: "TN9938",
        fromArrival: "07:00 am",
        toArrival: "06:45 pm",
        stops: [
          'Mayiladuthurai',
          'Ariyalur',
          'Vellore',
          'Kanyakumari',
          'Tirunelveli',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tirupathur",
        busNumber: "TN2955",
        fromArrival: "10:45 pm",
        toArrival: "09:30 pm",
        stops: ['Mayiladuthurai', 'Theni', 'Madurai', 'Erode', 'Tirupathur'],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tiruppur",
        busNumber: "TN9648",
        fromArrival: "06:15 pm",
        toArrival: "11:45 am",
        stops: [
          'Mayiladuthurai',
          'Dindigul',
          'Krishnagiri',
          'Chengalpattu',
          'Tiruppur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tiruvallur",
        busNumber: "TN5971",
        fromArrival: "06:45 am",
        toArrival: "10:30 am",
        stops: [
          'Mayiladuthurai',
          'Salem',
          'Ariyalur',
          'Chengalpattu',
          'Tiruvallur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tiruvannamalai",
        busNumber: "TN3697",
        fromArrival: "10:15 pm",
        toArrival: "06:15 pm",
        stops: [
          'Mayiladuthurai',
          'Nilgiris',
          'Tiruppur',
          'Sivaganga',
          'Tiruvannamalai',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Tiruvarur",
        busNumber: "TN8241",
        fromArrival: "05:45 pm",
        toArrival: "08:30 pm",
        stops: [
          'Mayiladuthurai',
          'Coimbatore',
          'Ariyalur',
          'Krishnagiri',
          'Tiruvarur',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Vellore",
        busNumber: "TN5562",
        fromArrival: "06:15 pm",
        toArrival: "05:15 am",
        stops: [
          'Mayiladuthurai',
          'Nagapattinam',
          'Kallakurichi',
          'Madurai',
          'Vellore',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Viluppuram",
        busNumber: "TN8258",
        fromArrival: "02:15 pm",
        toArrival: "05:15 am",
        stops: [
          'Mayiladuthurai',
          'Kanyakumari',
          'Cuddalore',
          'Tenkasi',
          'Viluppuram',
        ],
      ),

      Bus(
        fromCity: "Mayiladuthurai",
        toCity: "Virudhunagar",
        busNumber: "TN4931",
        fromArrival: "07:00 pm",
        toArrival: "10:30 am",
        stops: [
          'Mayiladuthurai',
          'Tiruchirappalli',
          'Thanjavur',
          'Krishnagiri',
          'Virudhunagar',
        ],
      ),
    ];
  }
}

// ------------------ Bus List Page ------------------
class BusListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buses = BusRepository.getBuses();

    return Scaffold(
      appBar: AppBar(title: Text("Available Buses")),
      body: ListView.builder(
        itemCount: buses.length,
        itemBuilder: (context, index) {
          final bus = buses[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(Icons.directions_bus, color: Colors.orange),
              title: Text("Bus: ${bus.busNumber}"),
              subtitle: Text(
                "${bus.fromCity} → ${bus.toCity}\n"
                "Departure: ${bus.fromArrival}, Arrival: ${bus.toArrival}",
              ),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BusDetailPage(bus: bus)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ------------------ Bus Detail Page ------------------
class BusDetailPage extends StatelessWidget {
  final Bus bus;

  const BusDetailPage({super.key, required this.bus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bus ${bus.busNumber} Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${bus.fromCity} → ${bus.toCity}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Departure: ${bus.fromArrival} | Arrival: ${bus.toArrival}",
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 30, thickness: 2),

            // Timeline of Stops
            Expanded(
              child: ListView.builder(
                itemCount: bus.stops.length,
                itemBuilder: (context, index) {
                  final stop = bus.stops[index];
                  return ListTile(
                    leading: Icon(Icons.location_on, color: Colors.blue),
                    title: Text(stop),
                    subtitle: Text(
                      index == 0
                          ? "Start Point"
                          : (index == bus.stops.length - 1
                              ? "Destination"
                              : "Via Stop"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
