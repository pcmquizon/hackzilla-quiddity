import { Component } from '@angular/core';

/*
  Generated class for the SpinnerPopover component.

  See https://angular.io/docs/ts/latest/api/core/index/ComponentMetadata-class.html
  for more info on Angular 2 Components.
*/
@Component({
  selector: 'spinner-popover',
  templateUrl: 'spinner-popover.html'
})
export class SpinnerPopoverComponent {

  text: string;

  constructor() {
    console.log('Hello SpinnerPopover Component');
    this.text = 'Hello World';
  }

}
