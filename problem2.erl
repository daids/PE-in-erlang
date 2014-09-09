sumeven(N)->sum(evenF(N)).
sum([])->0;
sum([H|T])->H+sum(T).
evenF(N)->[X||X<-fc(N), (X rem 2)==0].
fc(N)->fc([2,1],N).
fc([2,1], N)->fc([3,2,1],N);
fc([H|[T|P]],N) when (H+T)<N ->fc([H+T]++[H]++[T]++P,N);
fc([H|[T|P]],N) -> [H|[T|P]].
