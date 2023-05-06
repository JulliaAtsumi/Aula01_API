import 'package:untitled/repository/api.dart';
import 'package:untitled/registro/registroClient.dart';

class clientRepository {
  final api = API();

  Future<String?> CadastraClient(
      String name, String senha, String email) async {
    var info = {"email": "${email}", "nome": "${name}", "senha": "${senha}"};

    RegistroCliente model =
        RegistroCliente(email: email, nome: name, senha: senha);
    try {
      final response = await api.post(
          "http://ec2-44-211-218-227.compute-1.amazonaws.com:8080/api/cliente/create",
          data: info);

      if (response?.statusCode == 200) {
        return response?.data;
      } else {
        return null;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }

  Future<String?> LoginClient(
      String name, String senha, String email) async {
    var info = {"nome": "${name}", "senha": "${senha}"};

    RegistroCliente model =
        RegistroCliente(email: email, nome: name, senha: senha);
    try {
      final response = await api.post(
          "http://ec2-44-211-218-227.compute-1.amazonaws.com:8080/login",
          data: info);

      if (response?.statusCode == 200) {
        return response?.data;
      } else {
        return null;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }
}

