# gellany_django
simple django after polls<br>
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
  
# docker deploy
#/home/go/ = your path your already download git folder in it<br>
<code>docker image build -t gellany_django /home/go/gellany_django</code><br>
<code>docker run --publish 8000:8000 -it -d gellany_django</code><br>
<code>docker ps</code><br>
<code>docker exec -it 83ea954d9b5a python3 manage.py runserver 0.0.0.0:8000</code><br>

http://0.0.0.0:8000/
http://0.0.0.0:8000/polls

<code>docker stop f77d93571bcc</code><br>
<code>docker ps</code><br>


# docker pull direct
#/home/go/ = your path your already download git folder in it<br>
<code>docker pull gellany/gellany_django</code><br>
<code>docker run --publish 8000:8000 -it -d gellany/gellany_django</code><br>
<code>docker ps</code><br>
<code>docker exec -it 83ea954d9b5a python3 manage.py runserver 0.0.0.0:8000</code><br>
<code>docker stop f77d93571bcc</code><br>

http://0.0.0.0:8000/
http://0.0.0.0:8000/polls


# docker push
<code>docker login --username username</code><br>
<code>docker image list</code><br>
<code>docker tag a2ac10640f5b gellany/gellany_django</code><br>
<code>docker push gellany/gellany_django:latest</code><br>

# docker image list removed
<code>docker images rm </code><br>

# docker image remove all
<code>docker image list|awk '{print $3}'|xargs -I z docker rmi --force z</code><br>
<code>docker image list</code><br>

# docker system Remove unused data
<code>docker system prune --force</code><br>


    



