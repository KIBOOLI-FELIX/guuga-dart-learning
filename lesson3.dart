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

class ChessPiece {
  final PieceColor color;
  final PieceType type;
  final String square;

  const ChessPiece({
    required this.color,
    required this.type,
    required this.square,
  });

 String describe() {
  return '${color.name} ${type.name} on $square';
}
}
void main(){

  List<ChessPiece> pieces =[ChessPiece(
  color: PieceColor.white,
  type: PieceType.king,
  square: 'e1',
),ChessPiece(
  color: PieceColor.white,
  type: PieceType.queen,
  square: 'd1',
),ChessPiece(
  color: PieceColor.black,
  type: PieceType.king,
  square: 'e8',
)];

for (final piece in pieces){
  print('${piece.describe()}');
}

}