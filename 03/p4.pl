byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

directTravel(X, Y, byCar(X,Y)) :- byCar(X, Y).
directTravel(X, Y, byTrain(X,Y)) :- byTrain(X, Y).
directTravel(X, Y, byPlane(X,Y)) :- byPlane(X, Y).

travel(X, Y, Path) :- directTravel(X, Y, Path).
travel(X, Y, byCar(X,Path)) :- directTravel(X, Z, byCar(X,Z)), travel(Z, Y, Path).
travel(X, Y, byTrain(X,Path)) :- directTravel(X, Z, byTrain(X,Z)), travel(Z, Y, Path).
travel(X, Y, byPlane(X,Path)) :- directTravel(X, Z, byPlane(X,Z)), travel(Z, Y, Path).
