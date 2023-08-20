import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ui/barbershop_icons.dart';
import '../../../core/ui/constants.dart';

class HomeHeader extends ConsumerWidget {
  final bool hideFilter;

  const HomeHeader({super.key, this.hideFilter = false});
  //const HomeHeader({super.key}) : showFilter = true;
  //const HomeHeader.withoutFilter({super.key}) : showFilter = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      margin: const EdgeInsets.only(bottom: 16),
      // height: 400,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(ImageConstants.backgroundChair),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xffbdbdbd),
                child: SizedBox.shrink(),
              ),
              const SizedBox(width: 16),
              const Flexible(
                child: Text(
                  'Laérth Knodt Nardelli',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Editar',
                  style: TextStyle(
                      color: ColorsConstants.brown,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  BarbershopIcons.exit,
                  color: ColorsConstants.brown,
                  size: 32,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Bem Vindo',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Agende um Cliente',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 40,
            ),
          ),
          Offstage(
            offstage: hideFilter,
            child: const SizedBox(height: 24),
          ),
          Offstage(
            offstage: hideFilter,
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text('Buscar Colaborador'),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(
                    BarbershopIcons.search,
                    color: ColorsConstants.brown,
                    size: 26,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}