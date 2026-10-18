
void main() {
  final legalMoves = ['e3', 'e4', 'f3'];
  final highlightedSquares = <String>{
  'e3',
  'e4',
  'e4',
  'f3',
 };
 final board = <String, String>{
  'e1': 'white_king',
  'd1': 'white_queen',
  'e8': 'black_king',
};
  //first move
  print(legalMoves[0]);
  //number of legal moves
  print(legalMoves.length);
  //ceheck whether a legal move exists
  print(legalMoves.contains('e4'));

  //print all legal moves
  for (final legalMove in legalMoves){
    print(legalMove);
  }

  //whole set
  print(highlightedSquares);
  print(highlightedSquares.length);
  print(highlightedSquares.contains('e4'));
  print(highlightedSquares.contains('z9'));

  //map
  print(board['e1']);
  print(board['d1']);
  print(board.containsKey('e4'));
  board.forEach((square, piece) {
    print('$square -> $piece');
  });

}
