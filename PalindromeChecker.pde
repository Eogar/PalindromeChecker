public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a = "";
  for (int i = 0; i < word.length(); i++){
    if (Character.isLetter(word.charAt(i)) == true){
      a = a + word.charAt(i);
    }
  }
  a = a.toLowerCase();
  if(a.equals(reverse(a)))
    return true;
  else
    return false;
  }
public String reverse(String str)
{
String result = new String();
  for(int i = str.length()-1; i>=0; i--)
    result=result+str.charAt(i);
  return result;
}
