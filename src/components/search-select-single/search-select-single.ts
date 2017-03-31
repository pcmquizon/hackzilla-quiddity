import { Component } from '@angular/core';

import { Platform } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { ViewController } from 'ionic-angular';

/*
  Generated class for the SearchSelectSingle component.

  See https://angular.io/docs/ts/latest/api/core/index/ComponentMetadata-class.html
  for more info on Angular 2 Components.
*/
@Component({
  selector: 'search-select-single',
  templateUrl: 'search-select-single.html'
})
export class SearchSelectSingleComponent {

  public label = '';
  public value = '';
  public selected = '';
  public query = '';
  public title = '';
  public intent = '';
  public items = [];

  constructor(public platform: Platform,
              private navParams: NavParams,
              public viewCtrl: ViewController) {

    platform.ready().then(() => {
      console.log("Search select ready");
      this.items = this.navParams.get('items');
      this.label = this.navParams.get('label');
      this.value = this.navParams.get('value');
      this.title = this.navParams.get('title');
      this.intent
       = this.navParams.get('intent');
      this.query = '';

      // if(this.intent === 'find-food'){
      //  this.items= [{
      //                   restaurant_id: 1,
      //                   restaurant_name: "Jonas"
      //                 },
      //                 {
      //                   restaurant_id: 2,
      //                   restaurant_name: "Heaven's Barbeque"
      //                 },
      //                 {
      //                   restaurant_id: 3,
      //                   restaurant_name: "KFC"
      //                 },
      //                 {
      //                   restaurant_id: 4,
      //                   restaurant_name: "S&R"
      //                 },
      //                 {
      //                   restaurant_id: 5,
      //                   restaurant_name: "Jollibee"
      //                 },
      //                 {
      //                   restaurant_id: 6,
      //                   restaurant_name: "Brothers Burger"
      //                 },
      //                 {
      //                   restaurant_id: 7,
      //                   restaurant_name: "Chowking"
      //                 },
      //                 {
      //                   restaurant_id: 8,
      //                   restaurant_name: "McDonald's"
      //                 },
      //                 {
      //                   restaurant_id: 9,
      //                   restaurant_name: "Burger King"
      //                 },
      //                 {
      //                   restaurant_id: 10,
      //                   restaurant_name: "Max's Restaurant"
      //                 }];
      // }
    });
  }

  select(item) {
    let data = {
      selected: [],
      label: ''
    };

    switch (this.intent) {
      case "find-food":
        data['selected'] = item[this.value];

        data['label'] = item[this.label];
        break;
    }

    this.viewCtrl.dismiss(data);
  }

  cancel() {
    this.viewCtrl.dismiss({});
  }

  close() {
    this.viewCtrl.dismiss({});
  }

  public getItems(ev) {
    // Reset items back to all of the items
    this.initializeItems();

    // set val to the value of the searchbar
    let val = ev.target.value;

    // if the value is an empty string don't filter the items
    if (val && val.trim() != '') {
      this.items = this.items.filter((item) => {
        return (item[this.label].toLowerCase().indexOf(val.toLowerCase()) > -1);
      })
    }
  }

  private initializeItems(){
    this.items = this.navParams.get('items');
  }

}
