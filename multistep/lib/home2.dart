import 'package:flutter/material.dart';
import 'done.dart';
  class PersonData {
  String name = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
}
class home2 extends StatefulWidget {

  @override
  _home2State createState() => _home2State();
}

class _home2State extends State<home2> {
  TextEditingController emailController = new TextEditingController();
    TextEditingController nameController = new TextEditingController();
      TextEditingController phoneController = new TextEditingController();
        TextEditingController passController = new TextEditingController();

  int _index=0 ; 
  bool _isCompleted = false;
     PersonData person =PersonData();
        @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_isCompleted?done():Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.dark(primary: Colors.greenAccent),
        ),
        child: Stepper(
          physics: NeverScrollableScrollPhysics(),
        steps:[  Step(title:Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(87, 222, 129, 87),),) , content:Container(
          child: TextFormField(
            controller: nameController,
                restorationId: 'name_field',
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.person),
                ),         
              ),
        ),
        state: _index>0?StepState.complete:StepState.indexed),
                      Step(title:Text( 'Email',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(87, 222, 129, 87),),
                      ), 
                    content:Container(
                        child: TextFormField(
                          controller: emailController,
                restorationId: 'email_field',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
                      ),
                      state: _index>1?StepState.complete:StepState.indexed),
                      Step(title:Text( 'Phone',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(87, 222, 129, 87),),) , content:Container(
                        child: TextFormField(
                          controller: phoneController,
                restorationId: 'phone_number_field',
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.phone),
                  prefixText: '+ ',
                ),
                keyboardType: TextInputType.phone,
               
                maxLength: 14,
              ),
                      ),
                      state: _index>2?StepState.complete:StepState.indexed),
                      Step(title:Text( 'Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(87, 222, 129, 87),),) ,content: Container(
                        child: TextFormField(
                          controller: passController,
                         obscureText: true,
                       /* decoration: const InputDecoration(
                          labelText: 'Password'),*/
                           ),
                      ),state: _index>3?StepState.complete:StepState.indexed),
                      Step(title: Text('Confirmation',style: TextStyle(fontSize: 20,color: Color.fromRGBO(87, 222, 129, 87),),), content: Container(
                        child:Column(children: <Widget>[
                          Row(children: <Widget>[
                            Container(
                             // padding: EdgeInsets.all(10.0),
                              //margin:EdgeInsets.all(10.0) ,
                              alignment:Alignment.centerLeft ,
                              child: Container(
                                 width: 270,
                                height: 50,
                                child: Row(
                                  children: [
                                    Text("Name  : ",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 23),),
                                    Expanded(
                                      child: Text("${person.name}",
                                      maxLines: 1,
                                        style: TextStyle(fontSize: 20,),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(Icons.task_alt,
                            color: Colors.green,
                            size:30.0,
                            ),
                          ],),
                          Row(children: <Widget>[
                            Container(
                             // padding: EdgeInsets.all(10.0),
                             // margin:EdgeInsets.all(10.0) ,
                              alignment:Alignment.centerLeft ,
                              child: Container(
                              width:270,
                                height: 50,
                                child: Row(
                                  children: [
                                    Text("Email  : ",style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 23),),
                                    Expanded(
                                      child: Text("${person.email}",
                                      maxLines: 1,
                                      style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(Icons.task_alt,
                            color: Colors.green,
                            size:30.0,
                            ),
                          ],),
                          Row(children: <Widget>[
                            Container(
                             // color: Colors.amber,
                             // padding: EdgeInsets.all(10.0),
                             // margin:EdgeInsets.all(10.0) ,
                              alignment:Alignment.centerLeft ,
                              child: Container(
                                alignment: Alignment.centerLeft,
                               width:270,
                                height: 50,
                                child: Row(
                                  children: [
                                    Text("Phone  : ",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 23),),
                                    Expanded(
                                      child: Text("${person.phoneNumber}",
                                      maxLines: 1,
                                      style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(Icons.task_alt,
                            color: Colors.green,
                            size:30.0,
                            ),
                          ],),
                          Row(children: <Widget>[
                            Container(
                             //padding: EdgeInsets.all(10.0),
                            // margin:EdgeInsets.all(10.0) ,
                              alignment:Alignment.centerLeft ,
                              child: Container(
                                width:270,
                                height: 50,
                                child: Row(
                                  children: [
                                    Text("Password  : ",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 23),),
                                    Expanded(
                                      child: Text("${person.password}",
                                      maxLines: 1,
                                      style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(Icons.task_alt,
                            color: Colors.green,
                            size:30.0,
                            ),
                          ],),
                        ],)
                                         ),
                      state: _index>4?StepState.complete:StepState.indexed),

                      ],
        currentStep: _index,
        onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () async {
        if (_index <4) {
          setState(() {
            _index += 1;
          });
        }
        
        if(_index ==4)
        {
          person.password = passController.text;
          person.phoneNumber = phoneController.text;
          person.email = emailController.text;
          person.name = nameController.text;
        }
        if(_index==4)
        {
          await Future.delayed(const Duration(seconds: 1));
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const done()),
  );
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
        type: StepperType.vertical,
        
        ),
      ),
        );
    
  }
}