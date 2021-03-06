import 'package:flutter/material.dart';
import 'package:peliculas/models/pelicula_model.dart';

class PeliculaDetalle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Pelicula pelicula = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: CustomScrollView(
        slivers:<Widget>[
          _crearAppbar(pelicula),
        ],
      )
    );
  }

  Widget _crearAppbar(Pelicula pelicula){

    return SliverAppBar(
      elevation:2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          pelicula.title,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/img/loading.gif'),
          image: NetworkImage(pelicula.getBackgroundImg()),
          fadeInDuration: Duration(milliseconds:50),
          fit:BoxFit.cover,
         ),
        ),
    );
  }
}