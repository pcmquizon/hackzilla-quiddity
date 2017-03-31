import { Component } from '@angular/core';

import { Platform } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { ViewController } from 'ionic-angular';

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

  public labels = [];
  public value = '';
  public selected = [];
  public query = '';
  public title = '';
  public items = [];

  constructor(public platform: Platform,
              private navParams: NavParams,
              public viewCtrl: ViewController) {

    platform.ready().then(() => {
      this.items = this.navParams.get('items');
      this.labels = this.navParams.get('labels');
      this.value = this.navParams.get('value');
      this.title = this.navParams.get('title');
      this.query = '';
    });
  }

  setSelected() {
    let selected = this.items.filter((item) => {
      return (item['checked'] === true);
    });

    let unique_selected = this.selected.concat(selected);

    this.selected = unique_selected.filter((value, index, self) => {
      return self.indexOf(value) === index;
    }).sort();
  }

  cancel() {
    this.viewCtrl.dismiss({});
  }

  close() {
    this.viewCtrl.dismiss(this.selected);
  }

  public getItems(ev) {
    // Reset items back to all of the items
    this.initializeItems();

    // set val to the value of the searchbar
    let val = ev.target.value;

    // if the value is an empty string don't filter the items
    if (val && val.trim() != '') {
      this.items = this.items.filter((item) => {
        return ( (item[this.labels[0]].toLowerCase().indexOf(val.toLowerCase()) > -1) ||
                (item[this.labels[1]].toLowerCase().indexOf(val.toLowerCase()) > -1));
      })
    }
  }

  private initializeItems(){
    this.items = this.navParams.get('items');
  }

}
