from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name = 'index'),
    
    url(r'^login/$', views.login, name = 'login'),

    url(r'^logout/$', views.logout, name = 'logout'),
    
    url(r'^login_submit/$', views.login_submit,
        name = 'login_submit'),
    
    url(r'^student/(?P<student_id>[0-9]+)/$',
        views.student, name = 'student'),
    
    url(r'^instructor/(?P<instructor_id>[0-9]+)/$',
        views.instructor, name = 'instructor'),

    url(r'^feed_view/(?P<course_id>[0-9]+)/$',
        views.feed_view, name = 'feed_view'),

    url(r'^feed_fill/(?P<course_id>[0-9]+)/$',
        views.feed_fill, name = 'feed_fill'),

    url(r'^feed_submit/$',
        views.feed_submit, name = 'feed_submit'),
]
