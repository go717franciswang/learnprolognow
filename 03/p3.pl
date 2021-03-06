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

directTravel(X, Y, go(X,Y)) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).
travel(X, Y, Path) :- directTravel(X, Y, Path).
travel(X, Y, go(X,Path)) :- directTravel(X, Z, go(X,Z)), travel(Z, Y, Path).
