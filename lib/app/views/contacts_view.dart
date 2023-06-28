import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/app_general_components/app_floating_buttons.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/contacts_components/contacts_components.dart';
import 'package:paria_app/app/components/contacts_components/contacts_contact_page_component.dart';
import 'package:paria_app/app/controllers/contacts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class ContactsPage extends CoreView<ContactsController> {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar().mainBar(controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => AppFloatingActionButtons(
      icon: Icons.add, onTap: controller.addContactFunction);

  @override
  Widget get body => widgetContactsTable();

  Widget widgetContactsTable() => Obx(() => ListView.builder(
      shrinkWrap: true,
      itemCount: controller.listContacts.length,
      itemBuilder: (context, index) =>
          widgetContactsTableItem(controller.listContacts[index])));

  Widget widgetContactsTableItem(AppContact contact) => Padding(
        padding: AppPaddings.contactsItem,
        child: GestureDetector(
          onTap: () => controller.showContactFunction(contact),
          child: Row(children: [
            AppContactComponents.getAvatar(contact, AppElements.contactsListAvatarMaxRadius),
            AppSpaces.w20,
            Text(AppTextProvider.getFullName(contact)),
          ]),
        ),
      );

  Widget widgetNoContacts() => Container(
    padding: AppPaddings.contactsNoContacts,
    child: Text(AppTexts.contactsNoContacts, style: AppTextStyles.contactsNoContacts),
  );
}
