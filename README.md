# README

### Patient and Physician application

patient belongs_to user
physician belongs_to user

user has_one patient
user has_one physician

Create user model using devise gem

patient home page -- book an appointment with physicians
List of upcoming appointemnts
 
physician home page -- create an appointemnt with patient
List of upcoming appointemnts

Welcome controller to register as an patient
or physician 
redirect to home page of respective type

patient profile and physician profile