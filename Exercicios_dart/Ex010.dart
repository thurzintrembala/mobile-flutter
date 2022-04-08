void main() {
  double velAcel = 20;
  double velInicial = 10;
  double tempoPercurso = 600;
  double velTotal = velInicial + (velAcel * tempoPercurso);

  if(velTotal <= 40)
    print("Veiculo muito lento");
  if(velTotal > 40 && velTotal <= 60)
    print("Velocidade permitida");
  if(velTotal > 60 && velTotal <= 80)
    print("Velocidade de cruzeiro");
  if(velTotal > 80 && velTotal <= 120)
    print("Veiculo rapido");
  if(velTotal > 120)
    print("Veiculo muito rapido");
}