import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/app/components/contacts_components/contacts_components.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_elements.dart';

class ContactPageComponent {
  late AppContact _contact;

  Widget _contactForm() => Form(
        child: Column(children: [
          Row(children: [
            AppContactComponents.getAvatar(
                _contact, AppElements.contactsContactAvatarMaxRadius),
            Text(AppTextProvider.getContactFullName(_contact)),
          ]),
        ]),
      );

  showContact(AppContact selectedContact) {
    _contact = selectedContact;
    AppDialogs.mainAppDialogWithoutButton('Contact Page', _contactForm());
  }
}
