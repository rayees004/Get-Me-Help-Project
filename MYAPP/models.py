from django.db import models

# Create your models here.

class Login(models.Model):
    username=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    type=models.CharField(max_length=100,default="")

class User(models.Model):
    name=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    Phone=models.BigIntegerField()
    state=models.CharField(max_length=100)
    district=models.CharField(max_length=100)
    place=models.CharField(max_length=100)
    gender=models.CharField(max_length=100)
    dob=models.DateField()
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)

class Service_center(models.Model):
    name=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    phone=models.BigIntegerField()
    place=models.CharField(max_length=100)
    post=models.CharField(max_length=100)
    pin=models.CharField(max_length=100)
    district=models.CharField(max_length=100)
    photo=models.CharField(max_length=50)
    ownername=models.CharField(max_length=100)
    status=models.CharField(max_length=100)
    owneremail=models.CharField(max_length=100)
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)

class Category(models.Model):
    category=models.CharField(max_length=100)


class Service(models.Model):
    service_name=models.CharField(max_length=100)
    descripton=models.CharField(max_length=100)
    service_charge=models.BigIntegerField()
    CATEGORY=models.ForeignKey(Category,on_delete=models.CASCADE)
    SERVICE_CENTER=models.ForeignKey(Service_center,on_delete=models.CASCADE)





class Complaint(models.Model):
    complaint=models.CharField(max_length=100)
    date=models.DateField()
    reply=models.CharField(max_length=100)
    status=models.CharField(max_length=100)
    USER=models.ForeignKey(User, on_delete=models.CASCADE)




class Review(models.Model):
    date=models.DateField()
    review=models.CharField(max_length=100)
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)




class ServiceReview(models.Model):
    date=models.DateField()
    review=models.CharField(max_length=100)
    SERVICE=models.ForeignKey(Service,on_delete=models.CASCADE)
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)



class Loction(models.Model):
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)
    latitude=models.CharField(max_length=500)
    longitude=models.CharField(max_length=500)

class Bookings(models.Model):
    date=models.DateField()
    status=models.CharField(max_length=100)
    SERVICE=models.ForeignKey(Service,on_delete=models.CASCADE)
    USER=models.ForeignKey(User,on_delete=models.CASCADE)


class Request(models.Model):
    date=models.DateField()
    work_status=models.CharField(max_length=100)
    BOOKINGS=models.ForeignKey(Bookings,on_delete=models.CASCADE)


class Payment(models.Model):
    type=models.CharField(max_length=100)
    status=models.CharField(max_length=100)
    USER=models.ForeignKey(User,on_delete=models.CASCADE)
    REQUEST=models.ForeignKey(Request,on_delete=models.CASCADE)




