import 'dart:collection';

import 'package:flutter/material.dart';


bool loading =false;
//안 외워진 단어 저장하는 리스트
class unMemory_words {
  String words;
  String word_class;
  String mean;
  String example_hindi;
  String example_korean;
  Map<String, String> _saved_word_list;

  static List<Map<String, String>> list = new List<Map<String, String>>();

  unMemory_words(String words, String word_class, String mean,
      String example_hindi, String example_korean) {
    this.words = words;
    this.word_class = word_class;
    this.mean = mean;
    this.example_hindi = example_hindi;
    this.example_korean = example_korean;

    _saved_word_list = {
      '힌디어': this.words,
      '품사': this.word_class,
      '의미': this.mean,
      '힌디어 예시': this.example_hindi,
      "한국어 예시": this.example_korean
    };
    list.add(_saved_word_list);
  }
}

//안 외워진 단어 저장하는 리스트
class unMemory_sentence {
  String words;
  String word_class;
  String mean;
  String example_hindi;
  String example_korean;
  String example_wrong_korean;
  String right;
  Map<String, String> _saved_word_list;

  static List<Map<String, String>> list_sentence = new List<Map<String, String>>();

  unMemory_sentence(String words, String word_class, String mean,
      String example_hindi, String example_korean,String example_wrong_korean,String right) {
    this.words = words;
    this.word_class = word_class;
    this.mean = mean;
    this.example_hindi = example_hindi;
    this.example_korean = example_korean;
    this.example_wrong_korean = example_wrong_korean;
    this.right = right;

    _saved_word_list = {
      '힌디어': this.words,
      '품사': this.word_class,
      '의미': this.mean,
      '힌디어 예시': this.example_hindi,
      "한국어 예시": this.example_korean,
      "한국어 문제": this.example_wrong_korean,
      "정답": this.right
    };
    list_sentence.add(_saved_word_list);
  }
}
//안 외워진 단어 저장하는 리스트
class temp_unMemory_words {
  String words;

  String mean;

  Map<String, String> _saved_word_list;

  List<Map<String, String>> temp_list = new List<Map<String, String>>();

  temp_unMemory_words(
    String words,
    String mean,
  ) {
    this.words = words;

    this.mean = mean;

    _saved_word_list = {
      '힌디어': this.words,
      '의미': this.mean,
    };
    temp_list.add(_saved_word_list);

  }
}

// //리스트형 안 외워지는 단어를 set형으로 변환시키는 함수
// Set convertList(List<Map<String, String>> list)
// {
//   HashSet<Map<String,String>> setList =new HashSet();
//
//   for(int i =0; i<list.length; i++)
//     {
//       setList.add(list[i]);
//     }
//   for(HashSet i in setList['힌디'])
//     {
//       print(i);
//     }
//   return setList;어
// }
