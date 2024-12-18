import 'package:everlook_mobile/source/imports.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class LicenseVerification extends StatefulWidget {
  const LicenseVerification({super.key, required this.onTap});

  final Function(List<XFile>) onTap;

  @override
  State<LicenseVerification> createState() => _LicenseVerificationState();
}

class _LicenseVerificationState extends State<LicenseVerification> {
  XFile? licenseFile;
  XFile? passportFile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: AppLocale.licenseVerification,
            onBack: () {
              Navigator.pop(context, true);
            },
          ),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  Assets.icons.licenseVerification,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElementContainer(
                  children: [
                    Text(
                      'Upload Documents',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.secondaryFixed,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Commercial License',
                      style: theme.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Issued to you by the government, must be valid by dates',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.secondaryFixed,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppButton(
                      title: 'Select License File',
                      titlePadding: 0,
                      color: theme.colorScheme.secondary,
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                          allowMultiple: false,
                        );
                        licenseFile = result?.xFiles.first;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Emirates ID or Passport',
                      style: theme.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Depends on the document specified in the Commercial License',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.secondaryFixed,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppButton(
                      title: 'Select Passport File',
                      titlePadding: 0,
                      color: theme.colorScheme.secondary,
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                          allowMultiple: false,
                        );
                        passportFile = result?.xFiles.first;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    if (licenseFile != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  licenseFile = null;
                                });
                              },
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: SvgPicture.asset(
                                      Assets.icons.documentIcon,
                                      height: 24,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    Assets.icons.closeBlueIcon2,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Text(
                                licenseFile!.name,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.secondaryFixed,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (passportFile != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  passportFile = null;
                                });
                              },
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: SvgPicture.asset(
                                      Assets.icons.documentIcon,
                                      height: 24,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    Assets.icons.closeBlueIcon2,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Text(
                                passportFile!.name,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.secondaryFixed,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  title: 'Verify Me',
                  titlePadding: 0,
                  onPressed: () {
                    if (licenseFile != null && passportFile != null) {
                      widget.onTap([licenseFile!, passportFile!]);
                      Navigator.pop(context, true);
                    } else {
                      showMessage(
                        message: 'Select files',
                        type: PageState.error,
                      );
                    }
                  },
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
