// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main()  {

  runApp(new PerguntaApp());

}

class _PerguntaAppState extends  State<PerguntaApp>{



  var _perguntaSelecionada = 0;

  
  void _responder () {

    setState(() {

     _perguntaSelecionada++;

      if (_perguntaSelecionada == perguntas.length){
          _perguntaSelecionada = 0;

          
      } 
      
    });

    print(_perguntaSelecionada);
    print('Pergunta respondida!');

  }

  var perguntas = [

          { 
            'texto': 'Tem quantos estados no brasil?',
            'resposta': ['35','26','23','29'],
          },
          { 
            'texto': 'Qual é a Capital do Brasil?',
            'resposta': ['São Paulo','Brasilia','Rio de Janeiro','Bahia'],
          },
          { 
            'texto': 'Porque é mais facil ir para a Lua do que ir para o fundo do oceano do nosso planeta?',
            'resposta': ['Por causa da preção do mar','Por causa da preção da lua','Porque a lua fica no espaço','Todas as Alternativas'],
          },
          { 
            'texto': 'O nome do resultado obtido atravez de uma divisão é?',
            'resposta':['Subjacente','Quociente','Resto','Dividendo'],
          },
          { 
            'texto': 'Quais foram os 2 movimento politicos-sociais que mais mataram pessoas na historia da huminidade?', 
            'resposta': ['Ditadura chines','Nazismo e Comunismo','Primeira Guerra mundial','Pandemia'],
          },
          { 
            'texto': 'Nome do virus que é o principal pela morte de milhares de pessoas atravez da pandemia que enfrentamos é?',
            'resposta':['2019-n-CoV,', 'Peste negra', 'Marburg','H5N1'],
          }
          
      ];


  

  @override
  Widget build(BuildContext context) {

    
    

      List<Widget> respostas = [];
      for (String resposta in perguntas[_perguntaSelecionada].cast()['resposta']) 
      {respostas.add(Resposta(resposta, _responder)); } 


       return MaterialApp(
          home: Scaffold(
                appBar: AppBar(
                  title:Text('Perguntas'),
                ),
                body:Column(children:<Widget> [
                  Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas,
                ],),
               
          )
        );


        

        




        

       
  }

  Object? resposta(Object? respostas) => respostas;
}




class PerguntaApp extends StatefulWidget {
  


  
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }




}