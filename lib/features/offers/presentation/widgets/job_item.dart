import 'package:everlook_mobile/data/models/job_model/job_model.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/image_widget.dart';

class JobItem extends StatelessWidget {
  const JobItem({
    super.key,
    required this.job,
  });

  final JobModel job;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        if (job.user != null)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 16,
            ),
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: SizedBox(
              height: 72,
              child: Row(
                children: [
                  if (job.images != null)
                    ImageWidget(
                      image: job.images!.first.preview,
                    ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          job.title ?? '',
                          style: theme.textTheme.headlineMedium,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        StatusWidget(
                          status: 'Published',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 16,
          ),
          margin: EdgeInsets.only(
            top: job.user != null ? 0 : 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12,
                ),
                child: Row(
                  children: [
                    AppAvatar(
                      user: job.user,
                      size: 60,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job.user?.name ?? '',
                          style: theme.textTheme.headlineMedium,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            RatingWidget(
                              rating: job.user?.rating,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            DistanceWidget(
                              km: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'Plumbing installation, bathroom renovation',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingWidget(
                    rating: 0.0,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  DistanceWidget(
                    km: 0,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  PhotoCountWidget(
                    photoCount: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Hello. I am Ruslan, a professional electrician and plumber with more than 8 years of experience. The work is done conscientiously, as for yourself. High-quality work is performed on time of ',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 14,
              ),
              LanguageWidget(
                languages: [
                  'English',
                  'German',
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              PriceRangeWidget(
                startPrice: 400,
                endPrice: 3400,
              ),
              const SizedBox(
                height: 8,
              ),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  StatusWidget(
                    status: 'In progress',
                  ),
                  StatusWidget(
                    status: '3 New Messages',
                  ),
                  StatusWidget(
                    status: 'Offer Request',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                title: 'Edit Offer',
                leftIcon: Assets.icons.makeOfferIcon,
                textColor: theme.colorScheme.inversePrimary,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      title: 'Job Chat',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  AppButton(
                    title: 'Invoice',
                    width: 110,
                    color: theme.colorScheme.secondary,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
