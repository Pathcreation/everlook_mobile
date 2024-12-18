import 'package:flutter/material.dart';

class SelectWeekDay extends StatefulWidget {
  const SelectWeekDay({
    super.key,
    required this.onSelect,
    required this.selectedDays,
  });

  final Function(List<String>) onSelect;
  final List<String> selectedDays;

  @override
  State<SelectWeekDay> createState() => _SelectWeekDayState();
}

class _SelectWeekDayState extends State<SelectWeekDay> {
  List<String> weekDays = ['Mo', 'Tu', 'We', 'Th', 'Fr'];
  List<String> weekEnds = ['Sa', 'Su'];
  List<String> selectedDays = [];

  @override
  void initState() {
    selectedDays.addAll(widget.selectedDays);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          height: 38,
          width: 190,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              ...List.generate(
                weekDays.length,
                (i) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedDays.contains(weekDays[i])) {
                          selectedDays.remove(weekDays[i]);
                        } else {
                          selectedDays.add(weekDays[i]);
                        }
                        widget.onSelect(selectedDays);
                      });
                    },
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectedDays.contains(weekDays[i]) ? theme.colorScheme.primary : theme.colorScheme.secondary,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(selectedDays.contains(weekDays[i - (i == 0 ? 0 : 1)])
                              ? i == 0
                                  ? 14
                                  : 0
                              : 14),
                          right: Radius.circular(selectedDays.contains(weekDays[i + ((weekDays.length - 1) == i ? 0 : 1)])
                              ? (weekDays.length - 1) == i
                                  ? 14
                                  : 0
                              : 14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          weekDays[i],
                          style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: theme.colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          height: 38,
          width: 76,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              ...List.generate(
                weekEnds.length,
                (i) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedDays.contains(weekEnds[i])) {
                          selectedDays.remove(weekEnds[i]);
                        } else {
                          selectedDays.add(weekEnds[i]);
                        }
                        widget.onSelect(selectedDays);
                      });
                    },
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectedDays.contains(weekEnds[i]) ? theme.colorScheme.onError : theme.colorScheme.secondary,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(selectedDays.contains(weekEnds[i - (i == 0 ? 0 : 1)])
                              ? i == 0
                                  ? 14
                                  : 0
                              : 14),
                          right: Radius.circular(selectedDays.contains(weekEnds[i + ((weekEnds.length - 1) == i ? 0 : 1)])
                              ? (weekEnds.length - 1) == i
                                  ? 14
                                  : 0
                              : 14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          weekEnds[i],
                          style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: theme.colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
