from django.http import HttpRequest, JsonResponse


def hello(request: HttpRequest):
    return JsonResponse({"message": "Hello world!"})
