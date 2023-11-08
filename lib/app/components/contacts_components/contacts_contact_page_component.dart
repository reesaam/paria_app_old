import 'package:flutter/material.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_icon.dart';
import 'package:paria_app/data/app_extensions/extension_int.dart';

import '../../../core/admin/app_core_functions.dart';
import '../../../data/data_models/accounts_data_models/account_balance/account_balance.dart';
import '../../../data/data_models/core_data_models/app_contact/app_contact.dart';
import '../../../data/resources/app_elements.dart';
import '../../../data/resources/app_icons.dart';
import '../../../data/resources/app_paddings.dart';
import '../../../data/resources/app_sizes.dart';
import '../../../data/resources/app_spaces.dart';
import '../../../data/resources/app_text_styles.dart';
import '../../../data/resources/app_texts.dart';
import '../app_general_components/app_dialogs.dart';
import 'contacts_components.dart';

class ContactPageComponent {
  late AppContact _contact;
  late AppAccountBalance _balance;

  Widget contactForm() => Form(
        child: Column(children: [
          Row(children: [
            AppContactComponents.getAvatar(
                _contact, AppElements.contactsContactAvatarMaxRadius),
            AppSpaces.w20,
            Text(_contact.getContactFullName,
                style: AppTextStyles.contactsShowContactFullName),
          ]),
          _widgetInfo(),
          _widgetAccount(),
        ]),
      );

  Widget _title(String title) =>
      Text(title, style: AppTextStyles.contactsShowContactSectionTitle);

  Widget _widgetInfo() => Padding(
      padding: AppPaddings.contactsShowContactItems,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _title(AppTexts.contactsShowContactTitleInfo),
        AppSpaces.h10,
        _widgetInfoItem(AppIcons.mobile, AppTexts.contactsShowContactItemMobile,
            _contact.mobile ?? ''),
        _widgetInfoItem(AppIcons.phone, AppTexts.contactsShowContactItemPhone,
            _contact.phone ?? ''),
        _widgetInfoItem(AppIcons.email, AppTexts.contactsShowContactItemEmail,
            _contact.email ?? ''),
        _widgetInfoItem(AppIcons.web, AppTexts.contactsShowContactItemWebLink,
            _contact.webLink ?? ''),
      ]));

  Widget _widgetInfoItem(Icon icon, String title, String item) => Padding(
      padding: AppPaddings.contactsShowContactItem,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          icon.withSize(AppSizes.contactsShowContactIcon),
          AppSpaces.w10,
          Text(title, style: AppTextStyles.contactsShowContactInfoTitle)
        ]),
        Text(item, style: AppTextStyles.contactsShowContactInfoItem),
      ]));

  Widget _widgetAccount() => Padding(
      padding: AppPaddings.contactsShowContactItems,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _title(AppTexts.contactsShowContactTitleAccount),
        AppSpaces.h10,
        _widgetInfoItem(
            AppIcons.account,
            AppTexts.contactsShowContactTitleBalance,
            _balance.balance.toCurrency),
        _widgetInfoItem(AppIcons.list, AppTexts.contactsShowContactTitleRecords,
            _balance.count.toCurrency),
      ]));

  showContact(AppContact selectedContact) async {
    _contact = selectedContact;
    _balance = _contact.calculateBalance(false);
    await AppDialogs.appBottomDialogWithoutButton(
        AppTexts.contactsShowContactTitle, contactForm(), true);
    appDebugPrint('Show Contact Modal Closed');
  }
}
