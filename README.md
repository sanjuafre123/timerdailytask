# timerdailytask

<h3 align="center"> 1.Flutter Buttons </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/timerdailytask/assets/148860124/4324d8de-cc35-4742-84dc-861badf45f1e" height ="550">
</div>

<h3 align="center"> 2.Asynchronous Programming </h3>

# 1. What is asynchronons programming?
asynchronons programming is a paradigm that allows tasks or operators to run independently and concrrently, whithout waiting for each other or complete before moving on to the next task.

# 2. What is Future class?
In Dart,a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

# 3. What is Duration class & Future.delayed() constructor with example?

## Duration class
The Duration class represents a span of time. It allows you to specify time durations in terms of hours, minutes, seconds, and milliseconds.

## Example

```bash
void main()
{
    Time(
        Duration(seconds :3),
        (){
        print('Hello Duration'),
        }
     
    );
}

```
## Future.delayed()

A Dart Delay function creates a future that runs its computation after a delay.( word=1,word=dart delay function) This method returns immediately with a Future that completes after the duration

## Example

```base
void main()
{
    Future delayed(
        Duration(seconds: 3),
        (){
            print('Hello Future delayed'),
        }
    
    );
}

```

# 4.What is the use of the asyn & await keyword?
In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner.

## asyn keyword

The async keyword is used to mark a function as asynchronous.

## await keyword

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.

# 5. What is recursion? With Example?
## recursion

Recursion is the technique of making a function call itself.

## Example

```base

import 'dart:async';
import 'dart:io';

void main() {

  Timer.periodic(Duration(seconds: 1), (Timer) {

    print('hello dart ');

    }
  );
}

```

# 6. What is Timer class with example ?

## Time class

In Dart, the Timer class is used to create a one-shot or repeating timer that executes a function after a specified duration.

## Example

```base

import 'dart:async';
import 'dart:io';

void main() {

  Timer(Duration(seconds: 1), () 
    {
      print('hello dart ');

    }
  );
}

```

# 7. What is Timer.periodic and use with Example?

## Time.periodic

In Dart, the Timer.periodic function is used to create a repeating timer that executes a specified function at regular intervals.

## Example

```base

import 'dart:async';
import 'dart:io';

void main() {

  Timer.periodic(Duration(seconds: 1), (Timer) 
    {
      print('hello dart ');

    }
  );
}

```

<h3 align="center"> 3.Digital Clock App Page </h3>

<div align ="center">

  <img src = "https://github.com/sanjuafre123/timerdailytask/assets/148860124/28565ae4-87f9-4e4f-9991-df3aaadffe17" height ="550">
  
</div>

<h3 align="center"> Digital Clock App Page Video </h3>

<div align="center">
 <video src="https://github.com/sanjuafre123/timerdailytask/assets/148860124/b981e975-fb01-441c-85df-73f659183cb2" type="video/mp4">
</video>
</div>


<h3 align="center"> 4. Analogue Clock </h3>

<div align ="center">

  <img src = "https://github.com/sanjuafre123/timerdailytask/assets/148860124/5db8608d-39b3-4202-8338-b6286faa0d26" height ="550">
  
</div>

<h3 align="center"> Analogue Clock Video </h3>

<div align="center">
 <video src="https://github.com/sanjuafre123/timerdailytask/assets/148860124/6f617762-4414-4398-b35d-b94849e229bf" type="video/mp4">
</video>
</div>

