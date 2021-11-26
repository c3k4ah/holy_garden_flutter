import 'package:flutter/material.dart';
import 'package:holy_garden/constante.dart';

class ProductFilters extends StatefulWidget {
  @override
  _ProductFiltersState createState() => _ProductFiltersState();
}

class _ProductFiltersState extends State<ProductFilters> {
  static const _filters = <String>[
    'Plante malade',
    'PLante saint',
    'Fruit',
    'Legume'
  ];

  String _selectedFilter = 'Plante saint';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 20,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        ..._filters.map((filterText) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: () => setState(() => _selectedFilter = filterText),
                style: TextButton.styleFrom(
                    backgroundColor: _selectedFilter == filterText
                        ? Colors.green
                        : Colors.transparent,
                    side: _selectedFilter != filterText
                        ? BorderSide(color: Colors.grey.shade300)
                        : null,
                    padding: EdgeInsets.all(4),
                    primary: Colors.green,
                    minimumSize: Size(100, 2)),
                child: Text(
                  filterText,
                  style: TextStyle(
                      color: _selectedFilter == filterText
                          ? backgroundWhite
                          : darkBlue,
                      fontSize: 13),
                ),
              ),
            ))
      ]),
    );
  }
}
