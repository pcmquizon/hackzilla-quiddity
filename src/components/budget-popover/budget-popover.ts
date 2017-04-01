import { Component } from '@angular/core';

import { ViewController } from 'ionic-angular';

/*
  Generated class for the BudgetPopover component.

  See https://angular.io/docs/ts/latest/api/core/index/ComponentMetadata-class.html
  for more info on Angular 2 Components.
*/
@Component({
  selector: 'budget-popover',
  templateUrl: 'budget-popover.html'
})
export class BudgetPopoverComponent {

  public budget = 0;

  constructor(public viewCtrl: ViewController) {}

  close() {
    this.viewCtrl.dismiss(this.budget);
  }

}
