import "package:bliss_bites/provider/filters_provider.dart";
import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var active = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Page"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: active[Filter.Vegan]!,
            onChanged: (boolean) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.Vegan, boolean);
            },
            title: const Text("Vegan"),
            subtitle: const Text("curates only Vegan foods"),
          ),
          SwitchListTile(
              value: active[Filter.G]!,
              onChanged: (boolean) {
                ref.read(filtersProvider.notifier).setFilter(Filter.G, boolean);
              },
              title: const Text("Gluten"),
              subtitle: const Text("curates Gluten free foods")),
          SwitchListTile(
              value: active[Filter.L]!,
              onChanged: (boolean) {
                ref.read(filtersProvider.notifier).setFilter(Filter.L, boolean);
              },
              title: const Text("Lactose"),
              subtitle: const Text("curates Lactose free foods")),
          SwitchListTile(
              value: active[Filter.V]!,
              onChanged: (boolean) {
                ref.read(filtersProvider.notifier).setFilter(Filter.V, boolean);
              },
              title: const Text("Vegetairan"),
              subtitle: const Text("curates only Vegetairan foods")),
        ],
      ),
    );
  }
}
