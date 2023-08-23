import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_floating_buttons.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu_item.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu.dart';
import 'package:paria_app/app/components/app_bottom_navigation_bar.dart';
import 'package:paria_app/app/components/contacts_components/contacts_components.dart';
import 'package:paria_app/app/controllers/contacts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/app_extensions/extension_icon.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class ContactsPage extends CoreView<ContactsController> {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => AppFloatingActionButtons(
      icon: Icons.add, onPressed: controller.addContactFunction);

  @override
  Widget get body => Obx(() => controller.listContacts.isEmpty
      ? widgetNoContacts()
      : widgetContactsTable());

  Widget widgetContactsTable() => Obx(() => Column(
      children: List.generate(
          controller.listContacts.count,
          (index) => widgetContactsTableItem(
              controller.listContacts.membersList[index]))));

  Widget widgetContactsTableItem(AppContact contact) => GestureDetector(
        onTap: () => controller.showContactFunction(contact),
        child: Card(
          shape: AppElements.cardTransparentOutlineBorder,
          child: Padding(
            padding: AppPaddings.contactsItem,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    AppContactComponents.getAvatar(
                        contact, AppElements.contactsListAvatarMaxRadius),
                    AppSpaces.w20,
                    Text(contact.getContactFullName,
                        style: AppTextStyles.contactsListItem),
                  ]),
                  AppPopupMenu(listItems: contactOptions(contact)),
                ]),
          ),
        ),
      );

  List<AppPopupMenuItem> contactOptions(AppContact contact) =>
      List<AppPopupMenuItem>.from([
        AppPopupMenuItem(
            text: AppTexts.contactsOptionShow,
            onTapFunction: () => controller.showContactFunction(contact)),
        AppPopupMenuItem(
            text: AppTexts.contactsOptionEdit,
            onTapFunction: () => controller.editContactFunction(contact)),
        AppPopupMenuItem(
            text: AppTexts.contactsOptionRemove,
            onTapFunction: () => controller.removeContactFunction(contact)),
      ]);

  Widget widgetNoContacts() => Container(
        padding: AppPaddings.contactsNoContacts,
        alignment: Alignment.center,
        child: Text(AppTexts.contactsNoContacts,
            style: AppTextStyles.contactsNoContacts),
      );
}
