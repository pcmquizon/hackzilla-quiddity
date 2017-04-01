import { Injectable } from '@angular/core';

/*
  Generated class for the User provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class User {

  constructor() {}

  public login(user){
    let username = user['username'];
    let password = user['password'];

    return new Promise((resolve, reject) => {
      if( password === '123' ){
        resolve();
      }
      else{
        reject();
      }
    });
  }

}
