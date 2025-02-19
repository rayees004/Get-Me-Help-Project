from datetime import datetime

from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
from .models import *
# Create your views here.


def login_get(request):
    return render(request,'login page.html')



def login_post(request):
    username=request.POST['textfield']
    password=request.POST['textfield2']

    log=Login.objects.filter(username=username,password=password)
    if log.exists():
        log1=Login.objects.get(username=username, password=password)
        request.session['lid']=log1.id
        if log1.type=='admin':
            return HttpResponse('''<script>alert('login');window.location="/myapp/adminhome_get/"</script>''')
        elif log1.type=='servicecenter':
            return HttpResponse('''<script>alert('login');window.location='/myapp/servicecenter_home_get/'</script>''')
        else:
            return HttpResponse('''<script>alert('not approved by admin');window.location='/myapp/login_get/'</script>''')
    else:
        return HttpResponse('''<script>alert('unsuccessful');window.location="/myapp/login_get/"</script>''')







def adminhome_get(request):
    return render(request,"admin/index.html")


def view_category_get(request):
    c = Category.objects.all()
    return render(request,'admin/VIEW-CATEGORY.html',{"data":c})

def view_category_post(request):
    search = request.POST['textfield']
    c = Category.objects.filter(category__icontains=search)
    return render(request,'admin/VIEW-CATEGORY.html',{"data":c})


def add_category_get(request):
    return render(request,'admin/add-category.html')
def add_category_post(request):
    category=request.POST['category']

    c = Category()
    c.category = category
    c.save()
    return HttpResponse('''<script>alert('category added');window.location="/myapp/adminhome_get/"</script>''')


def change_password_get(request):
    return render(request,'admin/CHANGE-PASSWORD.html')
def change_password_post(request):
    CURRENT_PASSWORD=request.POST['textfield']
    new_PASSWORD = request.POST['textfield2']
    Confirm_PASSWORD = request.POST['textfield3']
    id=request.session['lid']
    ch = Login.objects.filter(id=id,password=CURRENT_PASSWORD)
    if ch.exists():
        if new_PASSWORD == Confirm_PASSWORD:
            ch = Login.objects.filter(id=id, password=CURRENT_PASSWORD).update(password=Confirm_PASSWORD)
            return HttpResponse('''<script>alert('password changed');window.location="/myapp/login_get/"</script>''')
        else:
            return HttpResponse('''<script>alert('password miss match');window.location="/myapp/change_password_get/"</script>''')
    else:
        return HttpResponse('''<script>alert('password not found');window.location="/myapp/change_password_get/"</script>''')


def edit_category_get(request,id):
    c = Category.objects.get(id=id)
    return render(request,"admin/edit-category.html",{"data":c})

def edit_category_post(request):
    category=request.POST['category']
    cid=request.POST['cid']
    c = Category.objects.get(id=cid)
    c.category = category
    c.save()
    return HttpResponse('''<script>alert('category updated');window.location="/myapp/view_category_get/"</script>''')


def delete_category(request,id):
    Category.objects.get(id=id).delete()
    return HttpResponse('''<script>alert('category deleted');window.location="/myapp/view_category_get/"</script>''')




def send_get(request,id):
    return render(request, 'admin/SEND-REPLY.html',{"rid":id})
def send_post(request):
    reply=request.POST['textarea']
    id=request.POST['id']
    c =Complaint.objects.filter(id=id).update(reply=reply,status='replied')
    return HttpResponse('''<script>alert('Sending success');window.location="/myapp/view_complaints_get/"</script>''')

def view_app_review_get(request):
    a = Review.objects.all()
    return render(request,'admin/VIEW-APP-REVIEW.html',{'data':a})


def view_app_review_post(request):
    from_date=request.POST['textfield']
    to_date = request.POST['textfield2']
    a= Review.objects.filter(date__range=[from_date,to_date])
    return render(request,'admin/VIEW-APP-REVIEW.html',{'data':a})


def view_service_center_get(request):
    v = Service_center.objects.filter(status="pending")
    return render(request, 'admin/VIEW-SERVICE-CENTER.html', {'data': v})

def view_service_center_post(request):
    search = request.POST['textfield']
    v = Service_center.objects.filter(name__icontains=search)
    return render(request, 'admin/VIEW-SERVICE-CENTER.html', {'data': v})

def approve_service_center(request,lid):
    Login.objects.filter(id=lid).update(type="servicecenter")
    Service_center.objects.filter(LOGIN__id=lid).update(status="Approved")
    return HttpResponse('''<script>alert('Service Center Approved Successfully');window.location="/myapp/view_approved_service_center_get/"</script>''')

def reject_service_center(request,lid):
    Login.objects.filter(id=lid).update(type="Rejected")
    Service_center.objects.filter(LOGIN__id=lid).update(status="Rejected")
    return HttpResponse('''<script>alert('Service Center Rejected Successfully');window.location="/myapp/view_rejected_service_center_get/"</script>''')

def view_approved_service_center_get(request):
    a = Service_center.objects.filter(status='Approved')
    return render(request,'admin/VIEW-APPROVED-SERVICE-CENTER.html',{'data':a})


def view_approved_service_center_post(request):
    search=request.POST['textfield']
    v = Service_center.objects.filter(name__icontains=search,status='Approved')

    return render(request,'admin/VIEW-APPROVED-SERVICE-CENTER.html',{'data':v})



def view_rejected_service_center_get(request):
    r = Service_center.objects.filter(status='Rejected')
    return render(request,'admin/VIEW-REJECTED-SERVICE-CENTER.html',{'data':r})
def view_rejected_service_center_post(request):
    search = request.POST['textfield']
    v = Service_center.objects.filter(name__icontains=search,status='Rejected')

    return render(request,'admin/VIEW-REJECTED-SERVICE-CENTER.html',{"data":v})



def view_complaints_get(request):
    a= Complaint.objects.all()
    return render(request,'admin/VIEW-COMPLAINTS.html',{'data':a})
def view_complaints_post(request):
    from_date = request.POST['textfield']
    to_date = request.POST['textfield2']
    a= Complaint.objects.filter(date__range=[from_date,to_date])
    return render(request,'admin/VIEW-COMPLAINTS.html',{'data':a})






def view_service_review_get(request,id):
    a= ServiceReview.objects.filter(SERVICE__SERVICE_CENTER_id=id)
    return render(request,'admin/VIEW-SERVICE-REVIEW.html',{'data':a})
def view_service_review_post(request):
    from_date = request.POST['textfield']
    to_date = request.POST['textfield2']
    v= ServiceReview.objects.filter(date__range=[from_date,to_date])
    return render(request,'admin/VIEW-SERVICE-REVIEW.html',{'data':v})



def view_users_get(request):
    res=User.objects.all()
    return render(request,'admin/VIEW-USERS.html',{'data':res})
def view_users_post(request):
    search = request.POST['textfield']
    v = User.objects.filter(name__icontains=search)
    return render(request,'admin/VIEW-USERS.html',{"data":v})



#####################################################3 service center


def servicecenter_home_get(request):
    return render(request, "service center/servicecenterindex.html")



def add_service_get(request):
    v = Category.objects.all()
    return render(request,"service center/add-service.html",{"data":v})



def add_service_post(request):
    category=request.POST['select']
    service_name=request.POST['textfield']
    service_price=request.POST['textfield2']
    description=request.POST['textarea']
    sid=Service_center.objects.get(LOGIN_id=request.session['lid'])

    s = Service()
    s.service_name = service_name
    s.descripton = description
    s.service_charge = service_price
    s.CATEGORY_id = category
    s.SERVICE_CENTER = sid
    s.save()
    return HttpResponse('''<script>alert('service added');window.location="/myapp/view_service_get/"</script>''')


def change_sc_password_get(request):
    return render(request,"service center/CHANGE-PASSWORD.html")

def change_sc_password_post(request):
    current_password=request.POST['textfield']
    new_PASSWORD = request.POST['textfield2']
    Confirm_PASSWORD = request.POST['textfield3']
    id = request.session['lid']
    ch = Login.objects.filter(id=id, password=current_password)
    if ch.exists():
        if new_PASSWORD == Confirm_PASSWORD:
            ch = Login.objects.filter(id=id, password=current_password).update(password=Confirm_PASSWORD)
            return HttpResponse('''<script>alert('password changed');window.location="/myapp/login_get/"</script>''')
        else:
            return HttpResponse(
                '''<script>alert('password miss match');window.location="/myapp/change_password_get/"</script>''')
    else:
        return HttpResponse(
            '''<script>alert('password not found');window.location="/myapp/change_password_get/"</script>''')

def edit_profile_get(request):
    p = Service_center.objects.get(LOGIN_id=request.session['lid'])
    return render(request,"service center/edit-profile.html",{"data":p})

def edit_profile_post(request):
    name=request.POST['textfield']
    Email=request.POST['textfield2']
    Phone=request.POST['textfield3']
    pin=request.POST['textfield4']
    Place=request.POST['textfield5']
    Post=request.POST['textfield6']
    District=request.POST['textfield8']
    Owner_name=request.POST['textfield9']
    Owner_mail=request.POST['textfield10']

    l = Login.objects.get(id=request.session['lid'])
    l.username = Email

    l.save()
    s = Service_center.objects.get(LOGIN_id=request.session['lid'])

    if 'textfield7' in request.FILES:
        Photo = request.FILES['textfield7']
        if Photo !="":
            from datetime import datetime
            date = datetime.now().strftime("%Y%m%d-%H%M%S") + ".jpg"
            fs = FileSystemStorage()
            fs.save(date, Photo)
            path = fs.url(date)
            s.photo = path


    s.name = name
    s.email = Email
    s.phone = Phone
    s.place = Place
    s.post = Post
    s.pin = pin
    s.district = District
    s.ownername = Owner_name
    s.owneremail = Owner_mail
    s.save()
    return HttpResponse('''<script>alert('Profile updated');window.location="/myapp/view_profile_get/"</script>''')


def edit_service_get(request,id):
    es= Service.objects.get(id=id)
    esg= Category.objects.all()
    return render(request,"service center/edit-service.html",{"data":es,"data1":esg})

def edit_service_post(request):
    CATEGORY=request.POST['select']
    service_name=request.POST['textfield']
    service_price=request.POST['textfield2']
    description=request.POST['textarea']
    id=request.POST['id']

    s= Service.objects.get(id=id)
    s.service_name = service_name
    s.descripton = description
    s.service_charge = service_price
    s.CATEGORY_id = CATEGORY
    s.SERVICE_CENTER = Service_center.objects.get(LOGIN_id=request.session['lid'])
    s.save()
    return HttpResponse('''<script>alert('service edited');window.location="/myapp/view_service_get/"</script>''')

def delete_service_get(request,id):
    Service.objects.get(id=id).delete()
    return HttpResponse('''<script>alert('service deleted');window.location="/myapp/view_service_get/"</script>''')





def payment_get(request):
    pay=Payment.objects.filter(status='paid')
    return render(request,"service center/Payment.html",{"data":pay})

def payment_post(request):
    from_date=request.POST['button']
    to_date=request.POST['button2']
    pay = Payment.objects.filter(REQUEST__date__range=[from_date,to_date],status='paid')
    return render(request, "service center/Payment.html", {"data": pay})

def sign_up_get(request):
    return render(request,"service center/signup.html")

def sign_up_post(request):
    name=request.POST['textfield']
    email=request.POST['textfield2']
    phone=request.POST['textfield3']
    pin=request.POST['textfield4']
    place=request.POST['textfield5']
    post=request.POST['textfield6']
    photo=request.FILES['textfield7']
    from datetime import datetime
    date=datetime.now().strftime("%Y%m%d-%H%M%S")+".jpg"
    fs=FileSystemStorage()
    fs.save(date,photo)
    path=fs.url(date)
    district=request.POST['textfield8']
    owner_name=request.POST['textfield9']
    owner_email=request.POST['textfield10']
    password=request.POST['textfield11']
    confirm_password=request.POST['textfield12']

    if(password==confirm_password):
        l=Login()
        l.username=email
        l.password=password
        l.type='pending'
        l.save()
        s=Service_center()
        s.name=name
        s.email=email
        s.phone=phone
        s.place=place
        s.post=post
        s.pin=pin
        s.district=district
        s.photo=path
        s.ownername=owner_name
        s.status='pending'
        s.owneremail=owner_email
        s.LOGIN=l
        s.save()
        return HttpResponse('''<script>alert('signup completed');window.location="/myapp/login_get/"</script>''')
    else:
        return HttpResponse('''<script>alert('password and confirm password mismath');window.location="/myapp/sign_up_get/"</script>''')


def update_work_status_get(request,id):
    return render(request,"service center/Update-Work-status.html",{"id":id})


def update_work_status_post(request):
    service_status=request.POST['select']
    id=request.POST['id']
    s=Request()
    s.BOOKINGS_id=id
    s.date=datetime.now().date()
    s.work_status=service_status
    s.save()
    return HttpResponse('''<script>alert('updated');window.location="/myapp/view_apporoved_book_get/"</script>''')


def approve_booking(request,id):
    Bookings.objects.filter(id=id).update(status="Approved")


    return HttpResponse('''<script>alert('Booking Approved Successfully');window.location="/myapp/view_apporoved_book_get/"</script>''')


def view_apporoved_book_get(request):
    res=Bookings.objects.filter(status='Approved')
    return render(request,"service center/view-approved-booking.html",{"data":res})

def view_apporoved_book_post(request):
    From=request.POST['button']
    to=request.POST['button2']
    res=Bookings.objects.filter(date__range=[From,to],status='Approved')
    return render(request,"service center/view-approved-booking.html",{"data":res})




def view_booking_get(request):
    vb = Bookings.objects.filter(status='pending')
    return render(request, "service center/view-booking.html",{"data":vb})


def view_booking_post(request):
    From=request.POST['button']
    to=request.POST['button2']
    vb = Bookings.objects.filter(date__range=[From,to],status='pending')
    return render(request, "service center/view-booking.html",{"data":vb})


def service_center_view_category_get(request):
    ca= Category.objects.all()
    return render(request, "service center/view-category.html",{"data":ca})

def service_center_view_category_post(request):
    search=request.POST['textfield']
    v = Category.objects.filter(category__icontains=search)
    return render(request, "service center/view-category.html",{"data":v})


def view_profile_get(request):
    p = Service_center.objects.get(LOGIN_id=request.session['lid'])
    return render(request, "service center/View-profile.html",{"data":p})

def reject_booking(request,id):
    Bookings.objects.filter(id=id).update(status="Reject")
    return HttpResponse('''<script>alert('Booking Rejected Successfully');window.location="/myapp/view_booking_get/"</script>''')


def view_rejected_booking_get(request):
    res=Bookings.objects.filter(status='Reject')
    return render(request, "service center/view-rejected-booking.html",{"data":res})

def view_rejected_post(request):
    From=request.POST['button']
    to=request.POST['button2']
    res=Bookings.objects.filter(date__range=[From,to],status='Reject')
    return render(request, "service center/view-rejected-booking.html",{"data":res})




def view_service_get(request):
    id=request.session['lid']
    se=Service.objects.filter(SERVICE_CENTER__LOGIN_id=id)
    v=Category.objects.all()
    return render(request, "service center/view-service.html",{"data":se,"data1":v})


def view_service_post(request):
    CATEGORY=request.POST['select']
    id=request.session['lid']
    se=Service.objects.filter(SERVICE_CENTER__LOGIN_id=id,CATEGORY_id=CATEGORY)
    v=Category.objects.all()
    return render(request, "service center/view-service.html",{"data":se,"data1":v})

def service_review_get(request):
    a= ServiceReview.objects.filter()
    return render(request,'service center/VIEW-SERVICE-REVIEW.html',{'data':a})
def service_review_post(request):
    from_date = request.POST['textfield']
    to_date = request.POST['textfield2']
    v= ServiceReview.objects.filter(date__range=[from_date,to_date])
    return render(request,'service center/VIEW-SERVICE-REVIEW.html',{'data':v})



##########################################################################################




def user_signup_post(request):
    name=request.POST['name']
    email=request.POST['email']
    Phone=request.POST['Phone']
    state=request.POST['state']
    district=request.POST['district']
    place=request.POST['place']
    gender=request.POST['gender']
    dob=request.POST['dob']
    password=request.POST['password']
    confirmpassword=request.POST['confirmpassword']

    l=Login()
    l.password=password
    l.username=email
    l.type='user'
    l.save()

    a=User()
    a.name=name
    a.email=email
    a.Phone=Phone
    a.state=state
    a.district=district
    a.place=place
    a.gender=gender
    a.dob=dob
    a.LOGIN=l
    a.save()
    return JsonResponse({"status":"ok"})

def user_login_post(request):
    username=request.POST['username']
    password=request.POST['password']
    l=Login.objects.filter(username=username,password=password)
    if l.exists():
        u=Login.objects.get(username=username,password=password)
        if u.type=='user':
            return JsonResponse({"status": "ok","lid":str(u.id)})
        else:
            return JsonResponse({"status": "No"})
    else:
        return JsonResponse({"status": "No"})


def viewprofile_post(request):
    lid=request.POST['lid']
    a=User.objects.get(LOGIN_id=lid)
    print(a)
    return JsonResponse({"status": "ok","name":a.name,"email":a.email,"phone":a.Phone,"state":a.state,"district":a.district,"place":a.place,"gender":a.gender,"dob":a.dob})


def user_edit_profile_post(request):
    name = request.POST['name']
    email = request.POST['email']
    Phone = request.POST['Phone']
    state = request.POST['state']
    district = request.POST['district']
    place = request.POST['place']
    gender = request.POST['gender']
    dob = request.POST['dob']
    lid=request.POST['lid']




    q=User.objects.get(LOGIN_id=lid)
    q.name=name
    q.email=email
    q.Phone=Phone
    q.state=state
    q.district=district
    q.place=place
    q.gender=gender
    q.dob=dob
    q.LOGIN_id=lid
    q.save()

    return JsonResponse({"status": "ok"})


def user_view_service_center_post(request):
    a=Service_center.objects.filter(status__icontains="Approved")
    l=[]
    for i in a:
        l.append({"id":i.id,"name":i.name,"email":i.email,
                  "Phone":i.phone,"place":i.place,"post":i.post,
                  "pin":i.pin,"district":i.district,"photo":i.photo,
                  "ownername":i.ownername,"owneremail":i.owneremail})

    return JsonResponse({"status": "ok","data":l})

def user_view_service_post(request):
    sid=request.POST['lid']
    a = Service.objects.filter(SERVICE_CENTER__id=sid)
    l=[]
    for i in a:
        l.append({"id":i.id,
                  "category":i.CATEGORY.category,
                  "service_name":i.service_name,
                  "description":i.descripton,
                  "service_charge":i.service_charge})

    return JsonResponse({"status": "ok","data":l})

def send_request_post(request):
    lid=request.POST['lid']

    id=request.POST['id']
    s=Bookings()
    s.date=datetime.now()
    s.work_status='pending'
    s.status='pending'
    s.SERVICE_id=id
    s.USER=User.objects.get(LOGIN_id=lid)
    s.save()
    return JsonResponse({"status": "ok"})

def view_request_status_post(request):
    lid=request.POST['lid']
    s=Bookings.objects.filter(USER__LOGIN_id=lid)
    l=[]
    for i in s:
        l.append({"id":i.id,
                  "date":i.date,
                  "status":i.status,
                  "Servicename":i.SERVICE.service_name})
    return JsonResponse({"status": "ok",'data':l})

def view_work_status_post(request):
    lid = request.POST['lid']
    s = Request.objects.filter(BOOKINGS__USER__LOGIN_id=lid,)
    l = []
    for i in s:
        l.append(
            {"id": i.id,
             "date": i.date,
             "work_status": i.work_status,
             "service_name": i.BOOKINGS.SERVICE.service_name,
             "service_charge": i.BOOKINGS.SERVICE.service_charge
             })

    return JsonResponse({"status": "ok",'data':l})

def user_payment_post(request):
    type=request.POST['type']
    return JsonResponse({"status": "ok"})


def send_complaint_post(request):
    complaint=request.POST['complaint']
    lid=request.POST['lid']

    c=Complaint()
    c.complaint=complaint
    c.date=datetime.now()
    c.reply='pending'
    c.status='pending'
    c.USER=User.objects.get(LOGIN_id=lid)
    c.save()
    return JsonResponse({"status": "ok"})


def view_complaint_reply_post(request):
    lid=request.POST['lid']
    c=Complaint.objects.filter(USER__LOGIN_id=lid)
    l=[]
    for i in c:
        l.append({"id":i.id,
                  "complaint":i.complaint,
                  "date":i.date,"reply":i.reply,
                  "status":i.status,
                  "User":i.USER.name})
    return JsonResponse({"status": "ok","data":l})


def send_service_center_review_post(request):
    review = request.POST['review']
    lid=request.POST['lid']
    sid=request.POST['sid']

    r=ServiceReview()
    r.date=datetime.now()
    r.review=review
    r.SERVICE_id=sid
    r.LOGIN_id=lid
    r.save()
    return JsonResponse({"status": "ok"})


def send_app_review_post(request):
    review = request.POST['review']
    lid=request.POST['lid']

    r=Review()
    # r.rating=rating
    r.date=datetime.now()
    r.review=review
    r.LOGIN_id=lid
    r.save()

    return JsonResponse({"status": "ok"})


def user_change_password_post(request):
    oldpassword = request.POST['oldpassword']
    newpassword = request.POST['newpassword']
    confirmpassword = request.POST['confirmpassword']

    lid = request.POST['lid']
    ch = Login.objects.filter(id=lid, password=oldpassword)
    if ch.exists():
        if newpassword == confirmpassword:
            ch = Login.objects.filter(id=lid,password=oldpassword).update(password=confirmpassword)
            return JsonResponse({"status": "ok"})
        else:
            return JsonResponse({"status": "no"})

    else:
        return JsonResponse({"status": "no"})

def user_view_category_post(request):
    lid = request.POST['lid']
    a = Category.objects.all()
    l = []
    for i in a:
     l.append({"id": i.id,
                      "category": i.category
                      })

    return JsonResponse({"status": "ok", "data": l})

def user_view_category_based_service_center(request):
    cid=request.POST['cid']
    res=Service.objects.filter(CATEGORY__id=cid)
    l=[]
    for i in res:
        l.append({"id":i.SERVICE_CENTER.id,"name":i.SERVICE_CENTER.name,"email":i.SERVICE_CENTER.email,
                  "Phone":i.SERVICE_CENTER.phone,"place":i.SERVICE_CENTER.place,"post":i.SERVICE_CENTER.post,
                  "pin":i.SERVICE_CENTER.pin,"district":i.SERVICE_CENTER.district,"photo":i.SERVICE_CENTER.photo,
                  "ownername":i.SERVICE_CENTER.ownername,"owneremail":i.SERVICE_CENTER.owneremail})

    return JsonResponse({"status": "ok","data":l})































