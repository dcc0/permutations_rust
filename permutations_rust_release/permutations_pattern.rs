 fn main ()

 {
	 
    let mut a = vec![1,0];
    let b = vec![0,1];
    let mut  i;
    let mut j;
    let mut c;


    loop  {
	    
       println! ("{:?}", a) ;

	if a == b { break; }

       	i = 1;

	/*Searching next element, which is greater*/
     loop {
        if  a[i] < a[i-1]  {break};
        i = i + 1;
      }

        j = 0;

     loop {
        if  a[j] > a[i]  {break};
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
