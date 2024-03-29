#!/bin/bash
GŁÓWNY
1. Wprowadzenie do commitów Gita (zapisanie zmian)
git commit
git commit

2. Rozgałęzienie w Gicie (stwórz nową gałąź o nazwie bugFix i przełącz się na nia)
git checkout -b bugFix

3. Merge w Gicie (stwórz nową gałąź o nazwie bugFix, przełącz się na nią używając polecenie git checkout bugFix, zrób jeden commit, wróć do gałęzi main za pomocą polecenia git checkout, zrób kolejny commit, połącz gałąź bugFix z gałęzią main, używając git merge)
git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit
git merge bugFix

4. Wprowadzenie do rebase (przejdź do nowej gałęzi bugFix, zrób commit, wróć do gałęzi main i zrób kolejny commit, przejdź do bugFix i połącz za pomocą rebase z main)
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

5. Odczep sobie HEAD (odłącz HEADa od gałęzi bugFix i dołącz go do commita)
git checkout C4

6. Referencje względne ^ (checkoutuj commita-rodzica z gałęzi bugFix. To spowoduje odczepienie HEADa.)
git checkout bugFix^

7. Referencje względne ~ (przenieś HEAD, main oraz bugFix do wskazanych celów)
git branch -f main C6
git checkout HEAD~1
git branch -f bugFix HEAD~1

8. Odwracanie zmian w Gicie
git reset HEAD~1
git checkout pushed
git revert HEAD

9. Wprowadzenie do cherry-pick (skopiuj część pracy z trzech pokazanych gałęzi do main. Commity, które należy skopiować, znajdują się na wizualizacji celu)
git cheery-pick C3 C4 C7

10. Wprowadzenie do interaktywnego rebase’a (zrób interaktywny rebase i ustaw kolejność pokazaną w wizualizacji celu)
git rebase -i C1 C5
git branch -f main HEAD

11. Wzięcie tylko 1 commita
git rebase -i C1 C4
git branch -f bugFix HEAD
git branch -f main HEAD

12. Żonglowanie commitami #1
git rebase -i HEAD~2
git commit —amend
git rebase -i HEAD~2
git rebase caption main

13. Żonglowanie commitami #2
git checkout main
git cherry-pick C2
git commit —amend
git cherry-pick C3

14. Tagi Gita (Dla tego poziomu utwórz tagi takie jak w wizualizacji celu, a następnie checkoutuj v1.)
git tag v1 side~1
git tag v0 main~2
git checkout v1

15. Git describe
git commit
git describe side

16. Rebase ponad 8000 razy
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

17. Wielu rodziców (utwórz nową gałąź w określonym miejscu docelowym)
git branch bugWork main^^2^

18. Spaghetti gałęzi
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C2
git branch -f three C2

ZDALNY
1. Wstęp do klonowania 
git clone

2. Zdalne gałęzie (Aby ukończyć ten poziom, zrób jeden commit z main i drugi, po przełączeniu się (check out) na o/main)
git commit
git checkout o/main
git commit

3. Git fetch
git fetch

4. Git pull
git pull

5. Symulacja pracy zespołowej
git clone
git fakeTeamwork 2
git commit
git pull

6. Git push
git commit
git commit
git push

7. Rozbieżna historia
git clone
git fakeTeamwork
git commit
git pull --rebase
git push

8. Zablokowany main
git reset —hard o/main
git checkout -b feature C2
git push origin feature
git branch -f main o/main

9. Wypychanie dla wytrwałych
git fetch
git rebase o/main side1
git rebase side1 sidde2
git rebase side2 side 3
git rebase side3 main
git push

10. Scalanie z remote
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

11. Śledzenie zdalnych repo
git checkout -b side o/main
git commit
git pull --rebase
git push

12. Argumenty git push
git push origin main
git push origin foo

13. Argumenty git push - głębiej
git push origin main^:foo
git push origin foo:main

14. Argumenty fetch
git fetch origin main~1:foo
git fetch origin foo:main
git checkout foo
git merge main

15. Źródło nicości
git push origin :foo
git fetch origin :bar

16. Argument pull
git pull origin bar:foo
git pull origin main:side

