# gellany_django
https://docs.djangoproject.com/en/4.0/intro/tutorial01/


python -m django --version

django-admin startproject gellany_django 
python manage.py runserver

http://127.0.0.1:8000/

python manage.py runserver 8080
python manage.py runserver 0:8000

<code> python manage.py startapp polls</code><br>

polls/views.py 
<code>from django.http import HttpResponse
def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")</code><br>
    
 polls/urls.py
 <code>from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
]</code><br>

gellany_django/urls.py
<code>from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('polls/', include('polls.urls')),
    path('admin/', admin.site.urls),
]</code><br>

python manage.py runserver
Page not found?

http://localhost:8000/polls/
  
    
    



