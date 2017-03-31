import { Component } from '@angular/core';

/*
  Generated class for the SearchSelectMulti component.

  See https://angular.io/docs/ts/latest/api/core/index/ComponentMetadata-class.html
  for more info on Angular 2 Components.
*/
@Component({
  selector: 'search-select-multi',
  templateUrl: 'search-select-multi.html'
})
export class SearchSelectMultiComponent {

  text: string;

  constructor() {
    console.log('Hello SearchSelectMulti Component');
    this.text = 'Hello World';
  }

}
