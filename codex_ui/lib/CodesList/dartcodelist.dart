List dartcodes = [

  {
    "title" : "Intro To Dart",
    "codes" : [
        '''
        void main(){
          print("Hello From Dart");
        }
    ''',
    '''
        void main(){
          print("Hello From CodeX");
        }
    ''',

    '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    ''',
     '''
        void main(){
          print("Hello From Flutter");
        }
    '''
    ],
    "quiz" : [
       {
      "questions": "Founder of BJP ?",
      "options": ["Advani", "Modi", "Amit shah","Fadnavis"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Congress  ?",
      "options": ["Mohandas Gandhi", "Indira Gandhi", "Nehru", "Rahul Gandhi"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Shivsena ?",
      "options": ["Shinde", "Balsaheb Thakre", "Udhhav Thakre","Raj Thakre"],
      "correctAnswer": 1
    },
    {
      "questions" : "Who has the most 100s in cricket history ?",
      "options": ["Virat Kholi", "Sachin Tendulkar", "Ricky Pointing","Kumar Sangakkara"],
      "correctAnswer": 1

    },
     {
      "questions" : "Who has the most 100s in IPL history ?",
      "options": ["David Warner", "Chirs Gayle", "Jos Buttler","Virat Kholi"],
      "correctAnswer": 3
    }
    ]
  },
  {
    "title" : "Datatypes" ,
    "codes" : [
      
    '''
      void main(){
        int number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        int number = 10;
            number=20;
        print(number);
      }
    ''',
    '''
      void main(){
        num number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        String name = 'ajit';
        print(name);
      }
    ''',

    '''

      void main(){
        double salary = 10000;
        print(salary);
      }
    ''',
    '''
      void main(){
        int number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        int number = 10;
            number=20;
        print(number);
      }
    ''',
    '''
      void main(){
        num number = 10;
        print(number);
      }
    ''',
    '''
      void main(){
        String name = 'ajit';
        print(name);
      }
    ''',

    '''

      void main(){
        double salary = 10000;
        print(salary);
      }
    '''
    ]  ,
    "quiz" : [
       {
      "questions": "Founder of BJP ?",
      "options": ["Advani", "Modi", "Amit shah","Fadnavis"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Congress  ?",
      "options": ["Mohandas Gandhi", "Indira Gandhi", "Nehru", "Rahul Gandhi"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Shivsena ?",
      "options": ["Shinde", "Balsaheb Thakre", "Udhhav Thakre","Raj Thakre"],
      "correctAnswer": 1
    },
    {
      "questions" : "Who has the most 100s in cricket history ?",
      "options": ["Virat Kholi", "Sachin Tendulkar", "Ricky Pointing","Kumar Sangakkara"],
      "correctAnswer": 1

    },
     {
      "questions" : "Who has the most 100s in IPL history ?",
      "options": ["David Warner", "Chirs Gayle", "Jos Buttler","Virat Kholi"],
      "correctAnswer": 3
    }
    ]
  },


  {
    "title" : "Operators" ,
    "codes" : [
      '''
        void main(){
        	int a =10;
	        int b =20;
	        int c =a+b;
	        print(c);
        }
        ''',
        '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        ''',
        '''
        void main(){
	        int a =10;
	        int b =5;
	        int c =a*b;
	        print(c);
        }
        ''',
        '''
        void main(){
	        int a =20;
	        int b =5;
	        int c =a-b;
	        print(c);
        }
        ''',
         '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        ''',
         '''
        void main(){
	        int a =10;
	        int b =5;
        	double c =a/b;
        	print(c);
        }
        '''
    
    ]  ,
    "quiz" : [
       {
      "questions": "Founder of BJP ?",
      "options": ["Advani", "Modi", "Amit shah","Fadnavis"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Congress  ?",
      "options": ["Mohandas Gandhi", "Indira Gandhi", "Nehru", "Rahul Gandhi"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Shivsena ?",
      "options": ["Shinde", "Balsaheb Thakre", "Udhhav Thakre","Raj Thakre"],
      "correctAnswer": 1
    },
    {
      "questions" : "Who has the most 100s in cricket history ?",
      "options": ["Virat Kholi", "Sachin Tendulkar", "Ricky Pointing","Kumar Sangakkara"],
      "correctAnswer": 1

    },
     {
      "questions" : "Who has the most 100s in IPL history ?",
      "options": ["David Warner", "Chirs Gayle", "Jos Buttler","Virat Kholi"],
      "correctAnswer": 3
    }
    ]
  },


  {
    "title" : "Null Safety" ,
    "codes" : [
      
      
    '''
      import"dart:io";  
      void main(){

	      //you can write also - int? a=null;
	      int? a;	

		    stdout.writeln(a);
      }
    ''',
    '''
      import"dart:io";
      void main(){

	      int? a=null;
	
		    if(a==null){
			    stdout.writeln("a is null");
		    }else{
			    stdout.writeln("code running successfully");
	      }
      }
    ''',
    '''
      import"dart:io";
      void main(){

	    String? a;

		    if(a==null){
			    stdout.writeln("a is null");
		    }else{
			    stdout.writeln("code run successfully");
	      }
      }
    ''',
    '''
      import"dart:io";
      void main(){

	      int? a=null;
	        a=10;
		      stdout.writeln(a);
      }
    ''',
    '''
      void PlayerInfo({int? jerNo, String? name}) {			//named arrgu
       print(jerNo);
       print(name);
      }

      void main() {
        PlayerInfo(name: "Virat", jerNo: 18);				//named parameter
        PlayerInfo(name: "MSD");
      }
    '''
    
    ]  ,
    "quiz" : [
       {
      "questions": "Founder of BJP ?",
      "options": ["Advani", "Modi", "Amit shah","Fadnavis"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Congress  ?",
      "options": ["Mohandas Gandhi", "Indira Gandhi", "Nehru", "Rahul Gandhi"],
      "correctAnswer": 0
    },
    {
      "questions": "Founder of Shivsena ?",
      "options": ["Shinde", "Balsaheb Thakre", "Udhhav Thakre","Raj Thakre"],
      "correctAnswer": 1
    },
    {
      "questions" : "Who has the most 100s in cricket history ?",
      "options": ["Virat Kholi", "Sachin Tendulkar", "Ricky Pointing","Kumar Sangakkara"],
      "correctAnswer": 1

    },
     {
      "questions" : "Who has the most 100s in IPL history ?",
      "options": ["David Warner", "Chirs Gayle", "Jos Buttler","Virat Kholi"],
      "correctAnswer": 3
    }
    ]
  }
];