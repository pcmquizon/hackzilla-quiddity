import { Component } from '@angular/core';

/*
  Generated class for the SearchSelectMuli component.

  See https://angular.io/docs/ts/latest/api/core/index/ComponentMetadata-class.html
  for more info on Angular 2 Components.
*/
@Component({
  selector: 'search-select-muli',
  templateUrl: 'search-select-muli.html'
})
export class SearchSelectMuliComponent {

  text: string;

  constructor() {
    console.log('Hello SearchSelectMuli Component');
    this.text = 'Hello World';
  }

}
