class Article extends Equatable {
  final String id;
  final String title,
  final String subtitle,
  final String  body,
  final String author,
  final String  authorImageURl,
  final String  category,
  final String  imageURL,
  final String veiws,
  final String createAt, 


  const Article (
    {required this.author,  
    required this.body,
    required this.category,
    required this.id,
    required this.createAt,
    required this.imageURL,
    required this.title,
    required this.subtitle,
    required this.veiws,}
  );

@override
List<Object?> get props => [];


}
