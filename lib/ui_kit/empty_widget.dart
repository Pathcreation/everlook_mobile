import 'package:everlook_mobile/source/imports.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
    required this.getLoading,
  }) : super(key: key);
  final Stream<bool> getLoading;

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textTheme;
    return StreamBuilder<bool>(
      initialData: true,
      stream: getLoading,
      builder: (context, loading) {
        return Center(
          child: loading.data!
              ? const SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                )
              : Text(
                  'Здесь ещё никто не писал',
                  style: styles.bodyMedium!.copyWith(
                    fontSize: 13,
                    color: AppColors.additional2,
                  ),
                ),
        );
      },
    );
  }
}
