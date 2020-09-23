/*
I cannot figure out for the life of me how to get the list iterating.
Name: Mitchell Niesar
*/

import { StatusBar } from 'expo-status-bar';
import React, { useState } from 'react';
import { StyleSheet, Text, View, Button, TextInput, FlatList } from 'react-native';

//Functional Compent Called "App"
export default function App() {
  const [name, setName] = useState('...');
  const [age, setAge] = useState('')
  const [birthday, setBirthdays, newAge = ''] = useState([])

  const clickHandler = () => {
    setBirthdays(
      birthday.concat({ key: newAge.toString() })
    );
  }

  return (
    //JSX Template
    <View style={styles.container}>
      <Text>Enter Name:</Text>

      <TextInput
        style={styles.input}
        placeholder='e.g. John Doe'
        onChangeText={(val) => setName(val)} />

      <Text>{name} is {newAge} years old</Text>

      <View style={styles.buttonContainer}>
        <Button title='Birthday' onPress={clickHandler} />
      </View>


      <View style={styles.container}>
        <FlatList
          data={birthday}
          renderItem={({ item }) => (
            <Text>{item.key}</Text>
          )}
        />
      </View>

    </View >
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },

  buttonContainer: {
    marginTop: 20
  },

  //textInput styling
  input: {
    borderWidth: 1,
    borderColor: '#777',
    padding: 8,
    margin: 10,
    width: 200,
  }

});
