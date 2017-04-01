import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

import { Headers } from '@angular/http';
import { RequestOptions } from '@angular/http';
import 'rxjs/add/operator/toPromise';

/*
  Generated class for the Bot provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class Bot {

  constructor(public http: Http) {}

  private toUrlEncoded(keys, values, toUriEncoded = true){
    if(keys.length !== values.length){
      return null;
    }

    var str = [];
    for (var i=0; i<keys.length; i++) {
      let key = keys[i];
      let value = values[i];

      if(toUriEncoded){
        if(typeof value === 'object'){
          value = encodeURIComponent(JSON.stringify(value));
        }
      }

      str.push(key + '=' + value);
    }

    return str.join('&');
  }

  public sendToApiAi(data){
    let headers = new Headers();
    headers.append('Accept', 'application/json');
    headers.append('Content-Type', 'application/x-www-form-urlencoded; charset=utf-8');

    let options = new RequestOptions({
      headers: headers
    });

    let keys = ['query', 'location', 'username'];
    let values = [data['msg'], data['location'], data['username']];

    let postData = this.toUrlEncoded(keys, values);
    console.log('sending '+JSON.stringify(postData));

    return this.http
               // .post('http://10.239.119.194:8000/query', postData, options)
               .post('http://10.239.119.174:8000/query', postData, options)
               .map(res => res.json())
               .map(data => { console.log(JSON.stringify(data)); return data; })
               .toPromise();
  }

}
