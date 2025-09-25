import 'dart.io';
import 'produto.dart';
import 'itemcompra.dart';
import 'carrinhocompra.dart';

  class PDVApp{

      void iniciar(){

        bool continuar = true ;

          while(continuar){

            print('Deseja adcionar um produto ao carrinho ? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N'

          if(resposta == 'S'){

            ItemCompra item = lerDadosCompra();
            carrinho.adicionarItem(item);
            print('\nProduto adicionado com sucesso!');
          }else{

            continuar = false;

          }

        }

        if (carrinho.estavazio()){

            print('\n nenhum produto foi adicionado ao carrinho.');
            print('\n obrigada por usa o sitema pvd!');
        }else{

          exibirresultado();

        }

          ItemCompra lerDadosproduto(){

            print('\nNome ')

          }  
            

    }

}

