# xml-html
1. Dla dokumentu xslt_xpath.xml stworzyć dokument walidujacy
   XML Schema który zapewni, że:
   - imie to tekst
   - data ma format daty / (ewentualnie text)
   - wiek to liczba z zakresu 20..120 /(spr. czy wszystkie dane mieszczą się w tym przykładzie) 
   - waga to liczba z zakresu 45..150 /(spr. czy wszystkie dane mieszczą się w tym przykładzie)
   - wzrost to liczba z zakresu 100..220 /(spr. czy wszystkie dane mieszczą się w tym przykładzie)
   - krew to typ wyliczeniowy o wartościach ze zbioru {A,B,AB,0}
   i podlaczyc go pod dokument XML.
2. Stworzyc kilka szablonow XSLT ktore podpiete pod orginalny dokument
   xml pozwola, wygenerowac dokument html, ktory zawsze bedzie mial naglowek
   h1 w ktorym bedzie tytul zestawienia danych, a nastepnie wyswietli sie tabela
   ktora rozwiaze nastepujace problemy:
   a) wyswietli odczytane dane z pliku xml o kolejnych naglowkach:
     imie, data, wiek, waga, wzrost, krew.
   b) wyswietli dane odczytane z pliku xml posortowane rosnaco
     wzgledem pola wiek, a pozniej malejaco wzgledem pola waga.
   c) wyswietli zestawienie podajace ile osob ma dana grupe krwi.
   d) to co w punkcie a) ale z dodatkową informacją o współczynniku BMI
      każdej z osób.
3. Dodatkowo podłączyć plik .css pod dokument xml, który będzie formatował
   kolumny tabeli na co najmniej 3 wybrane kolory, a dodatkowo wiersz 
   nagłowkowy tabeli na iny kolor - kolorystyke prosze dobrac samemu.
 
