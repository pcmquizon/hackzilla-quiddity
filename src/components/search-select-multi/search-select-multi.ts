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

  public value = '';
  public query = '';
  public title = '';
  public intent = '';
  public total = 0;
  public labels = [];
  public items = [];
  public selected = [];
  public skip_labels = [];

  constructor(public platform: Platform,
              private navParams: NavParams,
              public viewCtrl: ViewController) {

    platform.ready().then(() => {
      this.items = this.navParams.get('items');
      this.labels = this.navParams.get('labels');
      this.skip_labels = this.navParams.get('skip_labels');
      this.value = this.navParams.get('value');
      this.title = this.navParams.get('title');
      this.intent = this.navParams.get('intent');
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
    });

    for(let selected of this.selected){
      selected['qty'] = 1;
    }

    for(let food of this.items){
      if(!food['checked']){
        food['qty'] = 0;
      }
    }

    // extra tasks
    switch (this.intent) {
      case "find-food-restaurant":
        this.computeTotal();
        break;
      case "find-restaurant":
        this.computeTotal();
        break;
      case "find-meal":
        this.computeTotal();
        break;
    }

  }

  private formatNumber(number, precision=2) {
    var factor = Math.pow(10, precision);
    var tempNumber = number * factor;
    var roundedTempNumber = Math.round(tempNumber);
    return roundedTempNumber / factor;
  };

  public computeTotal(){
    let sum = 0.0;
    for(let selected of this.selected){
      let price = parseFloat(selected['price']);

      if(selected['qty']){
        price *= selected['qty'];
      }

      if(isNaN(price)){
        price = 0;
      }

      sum += price;
    }

    sum = this.formatNumber(sum);

    this.total = sum;
  }

  cancel() {
    this.viewCtrl.dismiss({});
  }

  close() {
    let data = {
      selected: [],
      label: ''
    };

    let labels = [];

    switch (this.intent) {
      case "find-restaurant":
        data['selected'] = this.selected.map((item) => {
          return {
            food_id: item['food_id'],
            qty: item['qty']
          };
        });

        labels = this.selected.map((item) => {
          return item['name'];
        });

        data['label'] = labels.join(', ');
        break;
      case "find-food-restaurant":
        data['selected'] = this.selected.map((item) => {
          return {
            food_id: item['food_id'],
            qty: item['qty']
          };
        });

        labels = this.selected.map((item) => {
          return item['name'];
        });

        data['label'] = labels.join(', ');
        break;
      case "find-meal":
        data['selected'] = this.selected.map((item) => {
          return {
            food_id: item['food_id'],
            qty: item['qty']
          };
        });

        labels = this.selected.map((item) => {
          return item['name'];
        });

        data['label'] = labels.join(', ');
        break;

    }

    this.viewCtrl.dismiss(data);
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
