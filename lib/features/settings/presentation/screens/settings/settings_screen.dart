import 'package:collection/collection.dart';
import 'package:everlook_mobile/source/extensions.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/select_week_day.dart';
import 'package:everlook_mobile/ui_kit/text_field/helpers/types.dart';

import 'settings_wm.dart';

/// {@template profile_screen.class}
/// ProfileScreen.
/// {@endtemplate}
class SettingsScreen extends ElementaryWidget<ISettingsWM> {
  /// {@macro profile_screen.class}
  const SettingsScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultSettingsWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(ISettingsWM wm) {
    return UnionStateListenableBuilder(
        unionStateListenable: wm.state,
        loadingBuilder: (_, __) => const CircularProgressIndicatorWidget(),
        failureBuilder: (_, ex, ___) => Text(ex?.toString() ?? 'Error'),
        builder: (context, state) {
          return UnionStateListenableBuilder(
            unionStateListenable: wm.user,
            loadingBuilder: (ctx, user) {
              return _Body(
                wm: wm,
                user: user,
                isLoading: true,
              );
            },
            failureBuilder: (_, ex, ___) => Text(ex?.toString() ?? 'Error'),
            builder: (context, user) {
              return _Body(
                wm: wm,
                user: user,
                isLoading: false,
              );
            },
          );
        });
  }
}

class _Body extends StatefulWidget {
  const _Body({
    super.key,
    required this.wm,
    required this.user,
    required this.isLoading,
  });

  final ISettingsWM wm;
  final UserModel? user;
  final bool isLoading;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        UnionStateListenableBuilder(
            unionStateListenable: widget.wm.formatHourDay,
            loadingBuilder: (_, __) => const SizedBox(),
            failureBuilder: (_, ex, ___) => const SizedBox(),
            builder: (context, formatHourDay) {
              return Column(
                children: [
                  const CustomAppBar(
                    title: AppLocale.settings,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 16,
                      ),
                      child: Column(
                        children: [
                          AppAvatar(
                            user: widget.user,
                            size: 112,
                            isEdit: widget.user?.avatar != null,
                            onTap: () async {
                              await getImage().then((file) {
                                if (file != null) {
                                  widget.wm.changeAvatar(file);
                                }
                              });
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${widget.user?.name ?? 'Your name'} ${widget.user?.lastName ?? 'and last name'}',
                              style: widget.wm.textScheme.headlineLarge!.copyWith(
                                fontSize: 22,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            '${widget.user?.viewsMonth ?? '0'} ${AppLocale.profileViewsPerMonth}',
                            style: widget.wm.textScheme.bodyMedium!.copyWith(
                              color: widget.wm.colorScheme.secondary,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: widget.wm.colorScheme.scrim,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '${widget.user?.rating ?? '0.0'} ',
                                  style: widget.wm.textScheme.bodyMedium!.copyWith(
                                    color: widget.wm.colorScheme.tertiary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '(${widget.user?.reviewsCount ?? '0'} ${AppLocale.reviews})',
                                      style: widget.wm.textScheme.bodyMedium!.copyWith(
                                        color: widget.wm.colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          ElementContainer(
                            children: [
                              labelText(
                                context,
                                AppLocale.workAs,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SelectableWidget(
                                title: AppLocale.workAs,
                                onPressed: (value) {
                                  if (value != null) {
                                    widget.wm.changeWorkAs(value.name ?? 'Private Constructor');
                                  }
                                },
                                data: ItemModel(
                                  name: widget.user?.workAs,
                                ),
                                items: const [
                                  ItemModel(
                                    name: 'Private Constructor',
                                  ),
                                  ItemModel(
                                    name: 'Company',
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),
                              labelText(
                                context,
                                AppLocale.person,
                              ),

                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${widget.user?.name ?? ' '} ${widget.user?.lastName ?? ' '}',
                                style: widget.wm.textScheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// License number
                              labelText(
                                context,
                                AppLocale.licenseNumber,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: AppTextField(
                                      minHeight: 38,
                                      textController: widget.wm.licenseTextController,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: AppButton(
                                      height: 36,
                                      title: 'Change',
                                      titlePadding: 0,
                                      onPressed: widget.wm.addLicenseFiles,
                                    ),
                                  ),
                                ],
                              ),

                              if (widget.user?.licenseApproved ?? false)
                                Container(
                                  height: 24,
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: widget.wm.colorScheme.outline,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Verified / Exp. Date ${widget.user?.licenceExp?.chatFormatDate ?? ''}',
                                      style: widget.wm.textScheme.bodySmall!.copyWith(
                                        color: widget.wm.colorScheme.tertiaryContainer,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          ElementContainer(
                            children: [
                              labelText(
                                context,
                                AppLocale.emailAddress,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.user?.email ?? ' ',
                                style: widget.wm.textScheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Email
                              labelText(
                                context,
                                AppLocale.password,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              AppButton(
                                height: 36,
                                width: 180,
                                titlePadding: 0,
                                color: widget.wm.colorScheme.secondary,
                                title: 'Change Password',
                                onPressed: widget.wm.changePassword,
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Phone
                              labelText(
                                context,
                                AppLocale.phone,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UnionStateListenableBuilder(
                                  unionStateListenable: widget.wm.verifyPhoneSend,
                                  loadingBuilder: (_, __) => const SizedBox(),
                                  failureBuilder: (_, ex, ___) => const SizedBox(),
                                  builder: (context, verifyPhoneSend) {
                                    return Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: AppTextField(
                                            minHeight: 38,
                                            type: TextFieldType.phoneNumber,
                                            textController: verifyPhoneSend ? widget.wm.codeTextController : widget.wm.phoneTextController,
                                            onChange: (text) {
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                        if (widget.wm.phoneTextController.text.length > 10 || verifyPhoneSend)
                                          Expanded(
                                            flex: (widget.user?.phoneVerified ?? false) ? 2 : 3,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: AppButton(
                                                height: 36,
                                                color: (widget.user?.phoneVerified ?? false) ? widget.wm.colorScheme.outline : widget.wm.colorScheme.primary,
                                                titlePadding: 0,
                                                borderRadius: 14,
                                                textColor: (widget.user?.phoneVerified ?? false) ? widget.wm.colorScheme.tertiaryContainer : widget.wm.colorScheme.inversePrimary,
                                                title: (widget.user?.phoneVerified ?? false)
                                                    ? 'Verified'
                                                    : verifyPhoneSend
                                                        ? 'Send code'
                                                        : 'Get code',
                                                onPressed: () {
                                                  if (!(widget.user?.phoneVerified ?? false)) {
                                                    if (verifyPhoneSend) {
                                                      widget.wm.sendCode();
                                                    } else {
                                                      widget.wm.verifyPhone();
                                                    }
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    );
                                  }),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Working time
                              labelText(
                                context,
                                AppLocale.workingTime,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: AppTextField(
                                      minHeight: 38,
                                      type: TextFieldType.time,
                                      textController: widget.wm.startWorkingTimeController,
                                    ),
                                  ),
                                  if (!formatHourDay)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: UnionStateListenableBuilder(
                                          unionStateListenable: widget.wm.amPmFrom,
                                          loadingBuilder: (_, __) => const SizedBox(),
                                          failureBuilder: (_, ex, ___) => const SizedBox(),
                                          builder: (context, amPmFrom) {
                                            return FlutterSwitch(
                                              width: 78,
                                              height: 38,
                                              activeColor: widget.wm.colorScheme.secondary,
                                              inactiveColor: widget.wm.colorScheme.secondary,
                                              activeTextColor: widget.wm.colorScheme.inversePrimary,
                                              inactiveTextColor: widget.wm.colorScheme.inversePrimary,
                                              valueFontSize: 15,
                                              activeTextFontWeight: FontWeight.normal,
                                              inactiveTextFontWeight: FontWeight.normal,
                                              toggleColor: widget.wm.colorScheme.primary,
                                              activeText: 'AM',
                                              inactiveText: 'PM',
                                              value: amPmFrom,
                                              padding: 0,
                                              showOnOff: true,
                                              onToggle: (val) {
                                                widget.wm.changeAmPmFrom();
                                              },
                                            );
                                          }),
                                    ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: AppTextField(
                                      minHeight: 38,
                                      type: TextFieldType.time,
                                      textController: widget.wm.endWorkingTimeController,
                                    ),
                                  ),
                                  if (!formatHourDay)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: UnionStateListenableBuilder(
                                          unionStateListenable: widget.wm.amPmTo,
                                          loadingBuilder: (_, __) => const SizedBox(),
                                          failureBuilder: (_, ex, ___) => const SizedBox(),
                                          builder: (context, amPmTo) {
                                            return FlutterSwitch(
                                              width: 78,
                                              height: 38,
                                              activeColor: widget.wm.colorScheme.secondary,
                                              inactiveColor: widget.wm.colorScheme.secondary,
                                              activeTextColor: widget.wm.colorScheme.inversePrimary,
                                              inactiveTextColor: widget.wm.colorScheme.inversePrimary,
                                              valueFontSize: 14,
                                              activeTextFontWeight: FontWeight.normal,
                                              inactiveTextFontWeight: FontWeight.normal,
                                              toggleColor: widget.wm.colorScheme.primary,
                                              activeText: 'AM',
                                              inactiveText: 'PM',
                                              value: amPmTo,
                                              padding: 0,
                                              showOnOff: true,
                                              onToggle: (val) {
                                                widget.wm.changeAmPmTo();
                                              },
                                            );
                                          }),
                                    ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Format
                              labelText(
                                context,
                                AppLocale.format,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  FlutterSwitch(
                                    width: 34,
                                    height: 22,
                                    activeColor: widget.wm.colorScheme.primary,
                                    inactiveColor: widget.wm.colorScheme.secondary,
                                    valueFontSize: 25.0,
                                    value: formatHourDay,
                                    borderRadius: 17,
                                    padding: 3,
                                    showOnOff: false,
                                    onToggle: (val) {
                                      widget.wm.changeFormatHourDay();
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '24h',
                                    style: widget.wm.textScheme.titleLarge!.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Expanded(
                                    child: SelectableWidget(
                                      title: AppLocale.measuring,
                                      onPressed: (value) {
                                        widget.wm.changeUnits(value?.description ?? '');
                                      },
                                      data: widget.wm.measuringList.firstWhereOrNull(
                                        (e) => e.description == widget.user?.measuring,
                                      ),
                                      items: widget.wm.measuringList,
                                    ),
                                  ),
                                ],
                              ),

                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Working Days
                              labelText(
                                context,
                                AppLocale.workingDays,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SelectWeekDay(
                                onSelect: widget.wm.changeWorkingDays,
                                selectedDays: widget.user?.workingDays ?? [],
                              ),
                              const Divider(
                                height: 33,
                                thickness: 1,
                              ),

                              /// Address
                              labelText(
                                context,
                                AppLocale.address,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  AppButton(
                                    title: 'Choose on a Map',
                                    titlePadding: 0,
                                    color: widget.wm.colorScheme.secondary,
                                    onPressed: () {
                                      widget.wm.chooseOnMap();
                                    },
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  AppButton(
                                    title: 'Delete',
                                    titlePadding: 0,
                                    color: widget.wm.colorScheme.secondary,
                                    onPressed: () {
                                      widget.wm.chooseOnMap(isDelete: true);
                                    },
                                  ),
                                ],
                              ),
                              if (widget.user?.address != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: labelText(
                                    context,
                                    widget.user!.address!,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ElementContainer(
                            children: [
                              labelText(
                                context,
                                'Languages',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (widget.user?.nativeLanguage != null)
                                ...List.generate(
                                  widget.wm.languagesList.length,
                                  (i) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: widget.wm.languagesList.length - 1 == i ? 0 : 18,
                                      ),
                                      child: Row(
                                        children: [
                                          FlutterSwitch(
                                            width: 38,
                                            height: 24,
                                            activeColor: widget.wm.colorScheme.primary,
                                            inactiveColor: widget.wm.colorScheme.secondary,
                                            valueFontSize: 25.0,
                                            value: widget.user!.nativeLanguage!.contains(widget.wm.languagesList[i].description!),
                                            borderRadius: 17,
                                            padding: 4,
                                            showOnOff: false,
                                            onToggle: (val) {
                                              List<String> langs = [];
                                              langs.addAll(widget.user?.nativeLanguage ?? []);
                                              if (langs.contains(widget.wm.languagesList[i].description!)) {
                                                langs.remove(widget.wm.languagesList[i].description!);
                                              } else {
                                                langs.add(widget.wm.languagesList[i].description!);
                                              }
                                              widget.wm.changeLanguages(langs);
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            widget.wm.languagesList[i].name ?? '',
                                            style: widget.wm.textScheme.bodyMedium!.copyWith(),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ElementContainer(
                            children: [
                              labelText(
                                context,
                                'Push Notifications',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (widget.user?.notificationTypes != null)
                                ...List.generate(
                                  widget.wm.notificationTypes.length,
                                  (i) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: widget.wm.notificationTypes.length - 1 == i ? 0 : 18,
                                      ),
                                      child: Row(
                                        children: [
                                          FlutterSwitch(
                                            width: 38,
                                            height: 24,
                                            activeColor: widget.wm.colorScheme.primary,
                                            inactiveColor: widget.wm.colorScheme.secondary,
                                            valueFontSize: 25.0,
                                            value: widget.user!.notificationTypes!.contains(widget.wm.notificationTypes[i].id!),
                                            borderRadius: 17,
                                            padding: 4,
                                            showOnOff: false,
                                            onToggle: (val) {
                                              List<int> types = [];
                                              types.addAll(widget.user!.notificationTypes!);
                                              if (types.contains(widget.wm.notificationTypes[i].id!)) {
                                                types.remove(widget.wm.notificationTypes[i].id!);
                                              } else {
                                                types.add(widget.wm.notificationTypes[i].id!);
                                              }
                                              widget.wm.changeNotifications(types);
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            widget.wm.notificationTypes[i].name ?? '',
                                            style: widget.wm.textScheme.bodyMedium!.copyWith(),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AppButton(
                              titlePadding: 0,
                              title: 'Save change',
                              onPressed: () {
                                widget.wm.saveUser();
                              },
                            ),
                          ),
                          // /// Emirates ID
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       flex: 1,
                          //       child: Text(
                          //         AppLocale.person,
                          //         style: wm.textScheme.headlineMedium,
                          //       ),
                          //     ),
                          //     Expanded(
                          //       flex: 3,
                          //       child: RichText(
                          //         text: TextSpan(
                          //           text: user?.personalId ?? '123456',
                          //           style: wm.textScheme.bodyMedium,
                          //           children: [
                          //             TextSpan(
                          //               text: ' Emirates ID',
                          //               style: wm.textScheme.headlineMedium!.copyWith(
                          //                 color: wm.colorScheme.secondary,
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
        if (widget.isLoading) const CircularProgressIndicatorWidget(),
      ],
    );
  }

  Widget labelText(
    BuildContext context,
    String label,
  ) {
    final theme = Theme.of(context);
    return Text(
      label,
      style: theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.tertiaryFixed,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
