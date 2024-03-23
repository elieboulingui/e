import 'package:flutter/material.dart';

class Term extends StatefulWidget {
  const Term({super.key});

  @override
  State<Term> createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold
      (
        appBar: AppBar(
          title: Text("Term & condition"),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          
           Expanded(child:  SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment:  MainAxisAlignment.start,
                children: [ Text('Dans un petit village au bord de la mer, vivait une jeune fille nommée Anna. Anna était une rêveuse, elle aimait se promener le long de la plage, laisser le vent caresser ses cheveux et écouter le doux murmure des vagues.Un jour, alors qu\'elle se promenait, Anna trouva une bouteille échouée sur le sable. Intriguée, elle la ramassa et découvrit une carte à l\'intérieur. La carte indiquait un mystérieux trésor caché sur une île lointaine.Anna, animée par la curiosité et l\'aventure, décida de partir à la recherche de ce trésor. Elle prépara son sac, prit quelques provisions et embarqua sur un petit bateau qu\'elle trouva au port.Le voyage fut long et parfois périlleux, mais Anna ne perdit jamais espoir. Finalement, elle arriva sur l\'île indiquée sur la carte. Là, elle dut surmonter de nombreux obstacles : traverser une jungle dense, escalader des montagnes escarpées et même affronter des animaux sauvages.Après des jours d_\'exploration, Anna découvrit enfin l\'endroit où le trésor était caché : une grotte dissimulée derrière une cascade. Avec précaution, elle pénétra à l\'intérieur et trouva un coffre orné de bijoux scintillants et de pièces d\'or.Mais au moment où elle s\'apprêtait à saisir le trésor, elle entendit une voix derrière elle. C\'était un vieil homme, le gardien du trésor, qui lui expliqua qu\'il avait caché ces richesses pour les préserver des personnes avides et égoïstes.Touchée par ses paroles, Anna réalisa que le véritable trésor était le voyage qu\'elle avait entrepris et les leçons qu\'elle avait apprises en chemin. Elle laissa le coffre là où il était et retourna chez elle, enrichie par cette aventure inoubliable.Depuis ce jour, Anna continua à rêver et à explorer le monde, convaincue que les plus grandes richesses ne se trouvent pas dans l\'or ou les bijoux, mais dans les expériences et les rencontres qui enrichissent l\'âme.'),],)
            ),),
            SizedBox(height: 30,),
            ElevatedButton(
          
              onPressed: (){}, child: Text("accept & continue".toUpperCase()))
          ],),
        )
      ),);
  }
  
}