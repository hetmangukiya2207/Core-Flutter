void main() 
{
  List a = [-3, -2, -1, 0, 1, 2, 3];

  a.forEach((e) 
  {
    if (e < 0) 
    {
      print(e);
    }
  });
}