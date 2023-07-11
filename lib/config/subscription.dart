const bool DEVELOPMENT_MODE = false; // false; Production, true: Development

const String SUBSCRIPTION_PRICE = "12";
const String CURRENCY = "USD";

const String PAYPAL_CLIENT_ID =
    "AbhLh92-1op95FIi4C3tyP7todnmnUVT8kcye9iQgO4e41GuKi96KFqcNrwrSdxJQmYgttdzZwG4XWac";

const String PAYPAL_SECRET_KEY =
    "EAxtGFUyfSQytAyer_HegewiRHj6EPN8x2S6Hf-X46J6lgZsT66Trj0fr9Phdt20NdCw529_3CDp6dB6";

const String RETURN_RUL = "https://samplesite.com/return";
const String CANCEL_URL = "https://samplesite.com/cancel";

/// Copyright 2023 Google LLC
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     https://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.

/// This file contain sample payment configurations that can be used with the
/// payment providers in this library.
///
/// Although payment configurations can be hardcoded in your application source
/// (as displayed in this example), we recommend you to keep this information in
/// a remote location that can be accessed from your application (e.g.: a
/// backend server). That way, you benefit from being able to use multiple
/// payment configurations that can be modified without the need to update your
/// application.

/// Sample configuration for Apple Pay. Contains the same content as the file
/// under `assets/default_payment_profile_apple_pay.json`.
const String defaultApplePay = '''{
  "provider": "apple_pay",
  "data": {
    "merchantIdentifier": "merchant.com.studentlifeline.student_lifeline",
    "displayName": "Student Lifeline",
    "merchantCapabilities": ["3DS", "debit", "credit"],
    "supportedNetworks": ["amex", "visa", "discover", "masterCard"],
    "countryCode": "US",
    "currencyCode": $CURRENCY,
    "requiredBillingContactFields": ["emailAddress", "name", "phoneNumber", "postalAddress"],
    "requiredShippingContactFields": [],
    "shippingMethods": [
      {
        "amount": $SUBSCRIPTION_PRICE,
        "detail": "Available within an hour",
        "identifier": "in_store_pickup",
        "label": "In-Store Pickup"
      }
    ]
  }
}''';
