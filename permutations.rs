/*Перестановки на языке Rust. Permutations in Rust*/
 fn main ()

 {
    let mut a = vec![4,3,2,1];

    let mut  i = 1;
    let mut j = 0;
    let mut c = 0;
    let mut f = 24; /*Факториал числа*/


    loop  {
	/*Печатаем массив*/
       println! ("{:#?}", a) ;
	f = f - 1;
	if (f == 0) { break; }

       i = 1;

	/*Searching next element, which is greater*/
      loop {
        if (a[i] < a[i-1] ) {break;}
        i = i + 1;
      }

        j = 0;

        loop {
        if (a[j] > a[i] ) {break;}
        j = j + 1;
     }


	/*Change*/
        c = a[j];
        a[j] = a[i];
        a[i] = c;

	i = i - 1;


	/*Tail change*/
        for j in 0..i {

        c = a[i];
        a[i] = a[j];
        a[j] = c;
		   
        i = i - 1;


       }
    }
 }
