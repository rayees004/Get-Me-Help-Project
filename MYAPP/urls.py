
from django.contrib import admin
from django.urls import path

from MYAPP import views

urlpatterns = [
    path('adminhome_get/',views.adminhome_get),

    path('add_category_get/',views.add_category_get),
    path('add_category_post/',views.add_category_post),

    path('change_password_get/',views.change_password_get),
    path('change_password_post/',views.change_password_post),

    path('delete_category/<id>', views.delete_category),
    path('edit_category_get/<id>', views.edit_category_get),
    path('edit_category_post/', views.edit_category_post),

    path('login_get/', views.login_get),
    path('login_post/', views.login_post),

    path('send_get/<id>', views.send_get),
    path('send_post/', views.send_post),

    path('view_app_review_get/', views.view_app_review_get),
    path('view_app_review_post/',views.view_app_review_post),

    path('view_approved_service_center_get/', views.view_approved_service_center_get),
    path('view_approved_service_center_post/', views.view_approved_service_center_post),

    path('view_category_get/', views.view_category_get),
    path('view_category_post/', views.view_category_post),

    path('view_complaints_get/', views.view_complaints_get),
    path('view_complaints_post/', views.view_complaints_post),

    path('view_rejected_service_center_get/', views.view_rejected_service_center_get),
    path('view_rejected_service_center_post/', views.view_rejected_service_center_post),

    path('view_service_center_get/', views.view_service_center_get),
    path('view_service_center_post/', views.view_service_center_post),
    path('approve_service_center/<lid>', views.approve_service_center),
    path('reject_service_center/<lid>', views.reject_service_center),

    path('view_service_review_get/<id>', views.view_service_review_get),
    path('view_service_review_post/', views.view_service_review_post),

    path('view_users_get/', views.view_users_get),
    path('view_users_post/', views.view_users_post),

    #######################33

    path('add_service_get/',views.add_service_get),
    path('add_service_post/',views.add_service_post),

    path('change_sc_password_get/',views.change_sc_password_get),
    path('change_sc_password_post/',views.change_sc_password_post),

    path('edit_profile_get/',views.edit_profile_get),
    path('edit_profile_post/',views.edit_profile_post),

    path('edit_service_get/<id>',views.edit_service_get),
    path('edit_service_post/',views.edit_service_post),

    path('delete_service_get/<id>',views.delete_service_get),

    path('payment_get/',views.payment_get),
    path('payment_post/',views.payment_post),

    path('sign_up_get/',views.sign_up_get),
    path('sign_up_post/',views.sign_up_post),


    path('update_work_status_get/<id>',views.update_work_status_get),
    path('update_work_status_post/',views.update_work_status_post),

    path('approve_booking/<id>',views.approve_booking),

    path('view_apporoved_book_get/',views.view_apporoved_book_get),
    path('view_apporoved_book_post/',views.view_apporoved_book_post),

    path('view_booking_get/',views.view_booking_get),
    path('view_booking_post/',views.view_booking_post),

    path('service_center_view_category_get/',views.service_center_view_category_get),
    path('service_center_view_category_post/',views.service_center_view_category_post),

    path('view_profile_get/',views.view_profile_get),

    path('reject_booking/<id>',views.reject_booking),

    path('view_rejected_booking_get/',views.view_rejected_booking_get),
    path('view_rejected_post/',views.view_rejected_post),

    path('view_service_get/',views.view_service_get),
    path('view_service_post/',views.view_service_post),

    path('service_review_get/',views.service_review_get),
    path('service_review_post/',views.service_review_post),

    path('servicecenter_home_get/',views.servicecenter_home_get),


######################################################

    path('user_signup_post/',views.user_signup_post),

    path('user_login_post/',views.user_login_post),

    path('viewprofile_post/',views.viewprofile_post),

    path('user_edit_profile_post/',views.user_edit_profile_post),

    path('user_view_service_center_post/',views.user_view_service_center_post),

    path('user_view_service_post/',views.user_view_service_post),

    path('send_request_post/',views.send_request_post),

    path('view_request_status_post/',views.view_request_status_post),

    path('view_work_status_post/',views.view_work_status_post),

    path('user_payment_post/',views.user_payment_post),

    path('send_complaint_post/',views.send_complaint_post),

    path('view_complaint_reply_post/',views.view_complaint_reply_post),

    path('send_service_center_review_post/',views.send_service_center_review_post),

    path('send_app_review_post/',views.send_app_review_post),

    path('user_change_password_post/',views.user_change_password_post),

    path('user_view_category_post/',views.user_view_category_post),

    path('user_view_category_based_service_center/',views.user_view_category_based_service_center),

    path('get_nearest_service_center/',views.get_nearest_service_center),

    path('updatelocation/',views._update_location)











]
