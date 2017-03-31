import { NgModule, ErrorHandler } from '@angular/core';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { LoginPage } from '../pages/login/login';
import { ChatPage } from '../pages/chat/chat';

import { User } from '../providers/user';
import { Bot } from '../providers/bot';

import { SearchSelectMultiComponent } from '../components/search-select-multi/search-select-multi';
import { SearchSelectSingleComponent } from '../components/search-select-single/search-select-single';

import { SearchSelectPopoverComponent } from '../components/search-select-popover/search-select-popover';
import { SpinnerPopoverComponent } from '../components/spinner-popover/spinner-popover';
import { BudgetPopoverComponent } from '../components/budget-popover/budget-popover';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { Geolocation } from '@ionic-native/geolocation';

@NgModule({
  declarations: [
    MyApp,
    LoginPage,
    ChatPage,
    SearchSelectMultiComponent,
    SearchSelectSingleComponent,
    SearchSelectPopoverComponent,
    SpinnerPopoverComponent,
    BudgetPopoverComponent
  ],
  imports: [
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    LoginPage,
    ChatPage,
    SearchSelectMultiComponent,
    SearchSelectSingleComponent,
    SearchSelectPopoverComponent,
    SpinnerPopoverComponent,
    BudgetPopoverComponent
  ],
  providers: [
    StatusBar,
    SplashScreen,
    User,
    Bot,
    Geolocation,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
