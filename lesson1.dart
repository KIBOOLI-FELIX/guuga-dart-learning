enum PieceColor {
  white,
  black,
}

enum PieceType {
  king,
  queen,
  rook,
  bishop,
  knight,
  pawn,
}

enum BoardFile{
  a,b,c,d,e,f,g,h,
}


String describePiece(
  PieceColor pieceColor,
  PieceType pieceType,
  String squareName,
) {
  final color =
      pieceColor.name[0].toUpperCase() + pieceColor.name.substring(1);

  return '$color ${pieceType.name} on $squareName';
}

bool isValidRank(int rank) => rank >= 1 && rank <= 8;
bool isValidFile(String boardFile) {
  for (final file in BoardFile.values) {
    if (boardFile == file.name) {
      return true;
    }
  }

  return false;
}
bool isValidSquare(String boardFile, int boardRank) =>
    isValidFile(boardFile) && isValidRank(boardRank);

bool isValidSquareEnhanced(String square){
  
  if (square.length != 2) {
    return false;
  }

  final file = square[0];
  final rankText = square[1];
  final rank = int.tryParse(rankText);

  if (rank == null) {
    return false;
  }

  return isValidFile(file) && isValidRank(rank);
  
}
void main() {
  final applicationName = 'Guuga Chess';
  const squareNumbers = 64;

  print('This is $applicationName and there are $squareNumbers squares.');

  print(describePiece(PieceColor.white, PieceType.king, 'f3'));
  print(describePiece(PieceColor.white, PieceType.queen, 'f4'));
  print(describePiece(PieceColor.white, PieceType.pawn, 'e4'));

  print(isValidRank(4)); // true
  print(isValidRank(9)); // false
  print(isValidRank(0)); // false
  print(isValidFile('a'));
  print(isValidFile('z'));
  print(isValidSquare('f',4));
  print(isValidSquare('z',7));
  print(isValidSquareEnhanced('z7'));
  print(isValidSquareEnhanced('f4'));
}