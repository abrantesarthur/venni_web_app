import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/widgets/overallPadding.dart';

class Privacy extends StatelessWidget {
  static String routeName = "/privacidade";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: OverallPadding(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        "images/logo-horizontal-pink.png",
                        width: screenWidth / 6,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 15),
                Text(
                  "Política de Privacidade",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: screenHeight / 15),
                Text(
                  "Ao utilizar o aplicativo da Venni, são coletados alguns dos seus dados." +
                      " Para garantir a sua privacidade e proteger os seus dados, " +
                      "a Venni elaborou esta Política para informar como esses Dados" +
                      " são utilizados e para quais finalidades.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "1. INTRODUÇÃO",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "A Venni, inscrita no CNPJ/ME sob o n. 41.405.821/0001-95, com sede na Cidade de Paracatu, Estado de Minas Gerais, na Rua i, n. 151 denominada neste documento como “Venni”, realiza o tratamento de diversas informações e Dados Pessoais para desenvolver as suas atividades e oferecer o melhor serviço aos seus usuários." +
                      "\n\nOs Dados Pessoais dos usuários dos serviços e produtos da Venni são bens valiosos e devem ser mantidos em segurança, por isso, os melhores esforços são empregados para que os Dados estejam protegidos e sejam tratados da maneira adequada, em conformidade com a legislação de proteção de Dados do Brasil, incluindo a LGPD.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "2. DADOS PESSOAIS TRATADOS E AS FINALIDADES DE TRATAMENTO",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Os tipos e a forma de tratamento de Dados Pessoais dependem de como o titular se relaciona com a Venni. Os Dados utilizados serão diferentes caso o titular seja um piloto parceiro, ou um passageiro do Aplicativo." +
                      "\n\nA Venni, com o objetivo de gerar transparência, detalha abaixo situações nas quais poderá tratar Dados:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "2.1 Passageiros",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Para finalidade de Cadastro na plataforma, poderemos utilizar os seguintes dados pessoais: nome, nº de telefone, foto pessoal, e-mail, CPF, e Dados de cartão de crédito.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para finalidade de uso do Aplicativo, serviços, e realização de viagens, poderemos utilizar os seguintes dados pessoais: Posição geográfica, duração da viagem,  histórico de corridas e solicitações, as avaliações feitas sobre Serviços da Venni, transações financeiras, formas de pagamento, valores do serviço, álbum de fotos, imagem.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para preservar a segurança e conforto durante as viagens, poderemos utilizar os Dados de viagem, nome do motorista parceiro e passageiro, nº de telefone, e trajeto.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para autenticar o usuário e evitar fraudes, poderemos utilizar o número de telefone, email e senha.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para realizar operações de pagamento, poderemos utilizar o nome completo, dados financeiros, e valor da corrida.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para enviar comunicações operacionais e de marketing, poderemos utilizar o nome, email e número de telefone.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Caso o usuário não forneça informações essenciais ao funcionamento dos Aplicativos ou ao fornecimento dos Serviços, ficará impossibilitado de utilizar os nossos Serviços.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "O usuário poderá gerenciar o uso de certos dados e habilitar ou desabilitar certas funcionalidades ao seu exclusivo critério, de acordo com a descrição abaixo. A depender da forma como o titular gerenciar o uso de certos dados, algumas funcionalidades não estarão mais disponíveis. Assim, caso o titular não forneça qualquer das informações solicitadas, a Venni não poderá garantir a qualidade e precisão dos Aplicativos e dos Serviços.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Através do próprio dispositivo, o titular pode:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Gerenciar as permissões de sistema, como Acesso à Câmera, Álbum de Fotos, e Contatos",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Permitir que o aplicativo acesse a localização apenas durante o uso. Os Dados só serão coletados quando o aplicativo estiver aberto. Esta modalidade viabiliza que o titular possa solicitar corridas e entregas sem que seja necessário digitar o endereço.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Negar acesso a localização. A Venni não será capaz de acessar os Dados de localização e, consequentemente, não poderá prover diversas funcionalidades que dependem destas informações.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "2.1 Motoristas Parceiros",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Caso o titular seja um motorista parceiro da Venni, além da forma de utilização descrita nos itens acima, naquilo que for aplicável, os Dados Pessoais também poderão ser utilizados de acordo com a descrição abaixo:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para criação de cadastro, poderemos utilizar nome completo, imagem, nº de telefone, e-mail, CPF, CNH, RENAVAM, placa e modelo da moto, sexo, antecedentes criminais, Dados de pagamento e da conta bancária.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para uso dos aplicativos, poderemos usar posição geográfica, duração da viagem, histórico de corridas e solicitações, as avaliações feitas sobre Serviços da Venni, transações financeiras, formas de pagamento, valores do serviço, e imagem.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Para enviar comunicações operacionais e de marketing, poderemos utilizar o nome, email e número de telefone.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "3. COM QUEM OS DADOS PESSOAIS PODEM SER COMPARTILHADOS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Para fornecer os serviços e desenvolver as atividades, a Venni poderá operar em parceria com uma série de outras organizações. Assim, em certos casos, é necessário compartilhar Dados Pessoais que são confiados com alguns parceiros e fornecedores, bem como com autoridades públicas para cumprir exigências legais, conforme indicado abaixo.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Fornecedores e parceiros: Para viabilizar a operação e oferecer os serviços, a Venni conta com o apoio de fornecedores e parceiros terceiros. E, quando necessário à prestação do serviço, a Venni pode compartilhar os Dados Pessoais coletados com tais parceiros como, por exemplo, aqueles que prestam serviços de prevenção à fraude, e atendimento ao usuário, entre outros.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Autoridades policiais e governamentais: Sempre que houver alguma obrigação legal ou regulatória que determine o fornecimento de Dados Pessoais a alguma autoridade, a Venni é obrigada a fazê-lo. Da mesma forma, se um juiz ou autoridade policial com competência legal ou regulatória exigir que a Venni compartilhe certos Dados Pessoais para, por exemplo, subsidiar uma investigação em curso, a Venni pode ser obrigada a fazê-lo.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "4. RETENÇÃO DOS DADOS PESSOAIS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Para determinar o período de retenção adequado para cada tipo de Dado Pessoal coletado, a Venni considera a sua natureza, necessidade de coleta, a finalidade para a qual ele será tratado, bem como eventuais necessidades de retenção para o cumprimento de obrigações ou o resguardo de direitos.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 40),
                Text(
                  "Assim, os Dados Pessoais são retidos exclusivamente pelo tempo que for necessário para cumprir com as finalidades para as quais foram coletados, salvo se houver outra razão para sua manutenção como, por exemplo, cumprimento de obrigações legais, regulatórias ou contratuais, exercício regular de direitos em processo administrativo, judicial ou arbitral, entre outras permitidas pela LGPD.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "5. COMO OS DADOS PESSOAIS SÃO PROTEGIDOS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Para garantir a privacidade e proteger os Dados Pessoais, a Venni emprega recursos tecnológicos avançados e diversas medidas como, por exemplo, rigorosos controles de acesso a sistemas e ambientes de tratamento de Dados, técnicas de criptografia e instalação de barreiras contra o acesso indevido às bases de Dados (incluindo firewalls), entre outros controles de segurança da informação.",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
