import 'package:everlook_mobile/data/models/job_model/job_model.dart';
import 'package:everlook_mobile/features/offers/presentation/widgets/job_item.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_wm.dart';
import 'package:everlook_mobile/ui_kit/app_chip.dart';
import 'package:everlook_mobile/ui_kit/selectable_widget.dart';

/// {@template offers_screen.class}
/// OffersScreen.
/// {@endtemplate}
class OffersScreen extends ElementaryWidget<IOffersWM> {
  /// {@macro offers_screen.class}
  const OffersScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultOffersWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IOffersWM wm) {
    return Column(
      children: [
        const CustomAppBar(
          title: 'Jobs',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: SizedBox(
            height: 28,
            child: Stack(
              children: [
                const SizedBox(
                  height: 28,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    '#',
                    style: wm.textScheme.labelLarge!.copyWith(
                      color: wm.colorScheme.tertiaryFixedDim,
                    ),
                  ),
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      height: 28,
                      width: 36,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: AppChip(
                        isSelect: true,
                        label: '4+ Stars',
                        onSelect: () {
                          wm.showFilter();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: AppChip(
                        isSelect: true,
                        label: '4+ Stars',
                        onSelect: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: AppChip(
                        isSelect: true,
                        label: '4+ Stars',
                        onSelect: () {},
                      ),
                    ),
                    AppChip(
                      isSelect: false,
                      label: 'Offer Request',
                      onSelect: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 12,
            ),
            child: Column(
              children: [
                JobItem(
                  job: JobModel(
                    user: UserModel(
                      name: 'SHTROSS AND SONS LLC',
                      rating: 4.5,
                      nativeLanguage: ['English', 'German'],
                    ),
                    title: 'Plumbing installation, bathroom installation, bathroom',
                    description:
                        'Hello. I am Ruslan, a professional electrician and plumber with more than 8 years of experience. The work is done conscientiously, as for yourself. High-quality work is performed on time of any complexity and specificity...',
                    images: [
                      ImageModel(
                        preview: 'https://image.fonwall.ru/o/gp/nature-prickly-animal-cute-hugv.jpeg?auto=compress&fit=resize&w=1200&h=831&display=large&domain=img3.fonwall.ru',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
