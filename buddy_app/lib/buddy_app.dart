import 'package:asyncstate/asyncstate.dart';
import 'package:buddy_app/core/ui/buddy_loader.dart';
import 'package:flutter/material.dart';

class BuddyApp extends StatelessWidget {

  const BuddyApp({ super.key });

   @override
   Widget build(BuildContext context) {
        
       return AsyncStateBuilder(customLoader: const BuddyLoader(), builder: (asyncNavigatorBuilder) => const MaterialApp(
        title: "Buddy",
        
       ));
  }
}