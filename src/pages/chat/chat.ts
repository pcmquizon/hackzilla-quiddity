import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';

import { ViewChild } from '@angular/core';
import { Content } from 'ionic-angular';
import { AlertController } from 'ionic-angular';
import { PopoverController } from 'ionic-angular';
import { Platform } from 'ionic-angular';
import { Geolocation } from '@ionic-native/geolocation';

import { Bot } from '../../providers/bot';

import { LoginPage } from '../login/login';

import { SpinnerPopoverComponent } from '../../components/spinner-popover/spinner-popover';
import { BudgetPopoverComponent } from '../../components/budget-popover/budget-popover';
import { SearchSelectMultiComponent } from '../../components/search-select-multi/search-select-multi';
import { SearchSelectSingleComponent } from '../../components/search-select-single/search-select-single';

/*
  Generated class for the Chat page.

  See http://ionicframework.com/docs/v2/components/#navigation for more info on
  Ionic pages and navigation.
*/
@Component({
  selector: 'page-chat',
  templateUrl: 'chat.html'
})
export class ChatPage {

  @ViewChild(Content) content: Content;

  public food = '';
  public messages = [];
  public chatMsg = '';
  public popover: any;
  public userLocation: any;
  public selected = [];
  public budget = 0;
  public popoverOpts = {};
  public intent = '';

  public data = {
    msg: '',
    location: this.userLocation,
    username: ''
  };

  constructor(private platform: Platform,
              private navCtrl: NavController,
              private navParams: NavParams,
              private alertCtrl: AlertController,
              private popoverCtrl: PopoverController,
              private geolocation: Geolocation,
              private bot: Bot) {

       platform.ready().then(() => {

         this.data['username'] = this.navParams.data.user['username'];
         this.data['username'] = 'jdamanalo';

         // get current position
         // this.showLoading();
         // this.geolocation.getCurrentPosition()
         //     .then((resp) => {
         //       this.hideLoading();
         //       this.userLocation = {
         //          latitude: resp.coords.latitude,
         //          longitude: resp.coords.longitude
         //        };

         //       // this.addMessage('You are at '+resp.coords.latitude+', '+resp.coords.longitude, false);
         //     }).catch((error) => {
         //       console.log('Error getting location', error);
         //       this.showError("Sorry, I can't get your location");
         //     });
    });

  }

  public logout() {
    this.navCtrl.setRoot(LoginPage, {}, {
      animate: true,
      direction: 'forward'
    });
  }

  public scrollToBottom() {
    this.content.scrollToBottom(500);
  }

  public send(message){
    // add user's message
    this.addMessage(message);

    // clear text area
    this.chatMsg = '';

    // this.intent = 'find-food';

    // talk to api.ai
    this.processResponse(message);
  }

  public addMessage(message, sentByUser=true){
    this.messages.push({
      content: message,
      sentByUser: sentByUser
    });
  }


  public processResponse(message){
    // return new Promise((resolve, reject) => {
      // send something to api ai
      // api ai responds

    this.data['location'] = this.userLocation;
    this.data['msg'] = message;

    this.bot.sendToApiAi(this.data)
            .then(
                  (data) => {



                    // api.ai recognized something
                    this.intent = data['intent'];
                    this.food = data['food']
                    this.userLocation = data['location'];
                    this.data.username = data['username'];


                    // add some interaction here,
                    // say show popover for menu?
                    // append some bot responses

                    switch (this.intent) {
                      // case "confirm-order":
                      //   this.showBuyConfirm();
                      //   break;
                      // case "ask-budget":
                      //   this.showAskBudget();
                      //   break;P
                      case "find-food":
                        this.popoverOpts = {
                          items: data['data'],
                          label: 'name',
                          value: 'resto_id',
                          title: 'Find restaurant of choice:',
                          intent: this.intent
                        };



                        this.showSingleMenu();

                        // this.intent = 'find-restaurant';
                        break;
                      case "find-food-restaurant":
                        // this.showAskBudget()
                        //     .then((budget) => {
                        //       let rows = data['data'].filter((item) => {
                        //         if(item['price'] <= budget){
                        //           return item;
                        //         }
                        //       });

                              this.popoverOpts = {
                                items: data['data'],
                                labels: ['name', 'price'],
                                values: ['food_id', 'qty'],
                                title: 'Find food of choice:',
                                intent: this.intent,
                                // budget: budget
                              };

                              this.showMultiMenu();
                            // });
                        // this.intent = 'confirm-order';
                        break;
                      case "find-restaurant":
                          // this.popoverOpts = {
                          //   items: data['data'],
                          //   labels: ['name'],
                          //   values: ['food_id', 'qty'],
                          //   title: 'Find food of choice:',
                          //   intent: this.intent,
                          // };

                          // this.showMultiMenu();
                          // this.showAskBudget()
                          //   .then((budget) => {
                          //     let rows = data['data'].filter((item) => {
                          //       if(item['price'] <= budget){
                          //         return item;
                          //       }
                          //     });

                              this.popoverOpts = {
                                items: data['data'],
                                labels: ['name', 'price'],
                                values: ['food_id', 'qty'],
                                title: 'Find food of choice:',
                                intent: this.intent,
                                // budget: budget
                              };

                              this.showMultiMenu();
                            // });
                        // this.intent = 'confirm-order';
                        break;
                      case "find-meal":
                          // this.popoverOpts = {
                          //   items: data['data'],
                          //   labels: ['name'],
                          //   values: ['food_id', 'qty'],
                          //   title: 'Find food of choice:',
                          //   intent: this.intent,
                          // };

                          // this.showMultiMenu();
                          // this.showAskBudget()
                          //   .then((budget) => {
                          //     let rows = data['data'].filter((item) => {
                          //       if(item['price'] <= budget){
                          //         return item;
                          //       }
                          //     });

                              this.popoverOpts = {
                                items: data['data'],
                                labels: ['name', 'price'],
                                values: ['food_id', 'qty'],
                                title: 'Find food of choice:',
                                intent: this.intent,
                                // budget: budget
                              };

                              this.showMultiMenu();
                            // });
                        // this.intent = 'confirm-order';
                        break;
                      default:
                        let msg = data['result']['fulfillment']['speech'];
                        this.showError(msg);
                        break;
                    }


                    this.data = data = {
                      msg: '',
                      location: '',
                      username: 'jdamanalo'
                    };

                    // resolve(data);
                  },
                  (error) => {
                    // sabi ni api.ai di nagets ng bot
                    // or something else
                    // reject();
                    this.showError("Oooh, snap! Something went wrong.");
                  });
  }

  public hideLoading(){
    this.popover.dismiss();
  }

  public showError(message){
    this.addMessage(message, false);
  }

  public showLoading(){
    this.popover = this.popoverCtrl.create(SpinnerPopoverComponent, {}, {
      enableBackdropDismiss: false,
      showBackdrop: true
    });

    this.popover.present();
  }

  public showAskBudget(){
    let popover = this.popoverCtrl.create(BudgetPopoverComponent, {}, {
      enableBackdropDismiss: false,
      showBackdrop: true
    });

    popover.present();

    return new Promise((resolve, reject) => {
      popover.onDidDismiss((data) => {
        this.budget = data;
        // this.addMessage('Budget is '+this.budget, false);
        // let msg = this.data['msg'] + this.budget;
        // this.processResponse(msg);
        resolve(this.budget);
      });
    });
  }

  public showBuyConfirm(){
    let alert = this.alertCtrl.create({
      title: 'Confirm purchase',
      buttons: [
        {
          text: 'Cancel',
          role: 'cancel',
          handler: () => {
            this.addMessage('Order cancelled.', false);
          }
        },
        {
          text: 'Buy',
          handler: () => {
            // pseudo processing
            this.showLoading();
            setTimeout(() => {
              this.hideLoading();
              this.addMessage('Order confirmed. Thanks!', false);
            }, 5000);
          }
        }
       ]
      });

    alert.present();
  }

  public showSingleMenu(){
    let popover = this.popoverCtrl.create(SearchSelectSingleComponent, this.popoverOpts, {
      showBackdrop: true,
      enableBackdropDismiss: false
    });

    popover.present();
    popover.onDidDismiss((data) => {

      let message = 'You selected: ' + data['label'];
      this.addMessage(message, false);

      this.selected = data['selected'];

      // this.addMessage('log: '+JSON.stringify(data));

      // let msg = this.data['msg'] + this.selected;

      console.log(this.selected);

      if( this.intent === 'find-food' ){
        this.data['resto_id'] = this.selected;
        this.data['food'] = this.food;
        this.data['context'] = 'selected-restaurant';
      }
      this.processResponse(this.data['msg']);

    });
  }

  public showMultiMenu(){
    let popover = this.popoverCtrl.create(SearchSelectMultiComponent, this.popoverOpts, {
      showBackdrop: true,
      enableBackdropDismiss: false
    });

    popover.present();
    popover.onDidDismiss((data) => {

      let message = 'You selected: ' + data['label'];
      this.addMessage(message, false);

      this.selected = data['selected'];

      // this.addMessage('log: '+JSON.stringify(data));

      // send selected to backend
      // let msg = this.data['msg'] + JSON.stringify(this.selected);

      switch (this.intent) {
        case "find-food-restaurant":
          this.showBuyConfirm();
          break;
        case "find-meal":
          this.showBuyConfirm();
          break;
        case "find-restaurant":
          this.showBuyConfirm();
          break;
      }
    });
  }

}
