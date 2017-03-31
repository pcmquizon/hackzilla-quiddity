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

    //   if(this.intent === 'find-restaurant'){
    //     this.items= [{
    //                     food_id: 36,
    //                     food_name: "Caesar Salad with Chicken",
    //                     restaurant_id: 1,
    //                     restaurant_name: "Jonas",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 1,
    //                     food_name: "Buffalo Wings with Blue Cheese Dip",
    //                     restaurant_id: 2,
    //                     restaurant_name: "Heaven's Barbeque",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 146,
    //                     food_name: "1-pc Chicken Spaghetti",
    //                     restaurant_id: 3,
    //                     restaurant_name: "KFC",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 82,
    //                     food_name: "Chicken Caesar Salad",
    //                     restaurant_id: 4,
    //                     restaurant_name: "S&R",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 98,
    //                     food_name: "1-pc. Chickenjoy Meal",
    //                     restaurant_id: 5,
    //                     restaurant_name: "Jollibee",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 72,
    //                     food_name: "Grilled Chicken Sandwich",
    //                     restaurant_id: 6,
    //                     restaurant_name: "Brothers Burger",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 129,
    //                     food_name: "1-pc Chinese-Style Fried Chicken",
    //                     restaurant_id: 7,
    //                     restaurant_name: "Chowking",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 118,
    //                     food_name: "McChicken Sandwich",
    //                     restaurant_id: 8,
    //                     restaurant_name: "McDonald's",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 142,
    //                     food_name: "X-tra Long Chicken",
    //                     restaurant_id: 9,
    //                     restaurant_name: "Burger King",
    //                     price: 500,
    //                   },
    //                   {
    //                     food_id: 84,
    //                     food_name: "Chicken Dinner Meal",
    //                     restaurant_id: 10,
    //                     restaurant_name: "Max's Restaurant"
    //                   }];
    //   }
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

    // extra tasks
    switch (this.intent) {
      case "find-restaurant":
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

    switch (this.intent) {
      case "find-restaurant":
        data['selected'] = this.selected.map((item) => {
          return {
            food_id: item['food_id'],
            qty: item['qty']
          };
        });

        let labels = this.selected.map((item) => {
          return item['food_name'];
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
