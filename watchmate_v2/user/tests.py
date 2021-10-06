from django.contrib.auth.models import User
from django.urls import reverse

from rest_framework import status
from rest_framework.test import APITestCase
from rest_framework.authtoken.models import Token


class RegisterTestCase(APITestCase):

    def test_register(self):
        input_dataset = [
            {
                "username": "testcase1",
                "email": "testcase1@example.com",
                "password": "NewPassword@123",
                "password2": "NewPassword@123"
            },
            {
                "username": "testcase2",
                "email": "testcase1@example.com",
                "password": "NewPassword@123",
                "password2": "NewPassword@123"
            },
            {
                "username": "testcase1",
                "email": "testcase2@example.com",
                "password": "NewPassword@123",
                "password2": "NewPassword@123"
            },
            {
                "username": "testcase3",
                "email": "testcase3@example.com",
                "password": "NewPassword@123",
                "password2": "NewPassword@12"
            }
        ]

        output_response = [
            {
                "status": status.HTTP_201_CREATED,
            },
            {
                "status": status.HTTP_400_BAD_REQUEST,
                "message": {
                    "error": "Email already exists!"
                }
            },
            {
                "status": status.HTTP_201_CREATED,
                "message": {
                    "username": [
                        "A user with that username already exists."
                    ]
                }
            },
            {
                "status": status.HTTP_400_BAD_REQUEST,
                "message": {
                    "error": "Confirm Password should be same as Password!"
                }
            }
        ]

        for i, data in enumerate(input_dataset):
            response = self.client.post(reverse('register'), data)
            self.assertEqual(response.status_code, output_response[i]["status"])
            if "message" in output_response[i]:
                self.assertEqual(response.data, output_response[i]["message"])


class LoginLogoutTestCase(APITestCase):

    def setUp(self):
        self.user = User.objects.create_user(username="example", password="NewPassword@123")

    def test_login(self):
        data = {
            "username": "example",
            "password": "NewPassword@123"
        }
        response = self.client.post(reverse('login'), data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_logout(self):
        self.token = Token.objects.get(user__username="example")
        self.client.credentials(HTTP_AUTHORIZATION='Token ' + self.token.key)
        response = self.client.post(reverse('logout'))
        self.assertEqual(response.status_code, status.HTTP_200_OK)
