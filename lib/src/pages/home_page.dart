import 'package:flutter/material.dart';
import 'package:hola_mundo/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categorias = [
      "Comida",
      "Bebidas",
      "Postres",
      "Rápida",
      "Saludable",
      "Vegana",
      "Italiana",
      "China",
      "Mexicana",
      "India",
    ];

    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(
            onNotificationPressed: () {
              // Lógica para notificaciones
            },
            onFilterPressed: () {
              // Lógica para filtros
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Sección Especial
                  SectionTitleWidget(
                    title: "Especial",
                    actionText: "Ver todo",
                    onActionPressed: () {
                      // Navegar a página de especiales
                    },
                  ),
                  const SizedBox(height: 20),
                  const SpecialCarouselWidget(),

                  const SizedBox(height: 20),

                  // Sección Categorías
                  SectionTitleWidget(
                    title: "Categorías",
                    actionText: "Ver todo",
                    onActionPressed: () {
                      // Navegar a página de categorías
                    },
                  ),
                  CircularCategoriesWidget(categories: categorias),

                  // Chips de categorías
                  CategoryChipsWidget(
                    categories: categorias,
                    onCategorySelected: (index) {
                      // Filtrar por categoría seleccionada
                    },
                  ),

                  // Grid de productos
                  const ProductGridWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
