import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({
    super.key,
    required this.isSelected,
    required this.color,
  });
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 32,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 35,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              },
              child: ColorsItem(
                isSelected: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
