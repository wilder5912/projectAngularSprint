import {Component, OnInit} from '@angular/core';
import { Router } from '@angular/router';

@Component({
    selector:'my-app',
    templateUrl: 'app/app-component.html',
})

export class AppComponent implements OnInit{
    titulo:string = 'Lista de Heroes';
    public loginState: boolean = true;
    public sesion: boolean =true;
   // public path: string = '';
    constructor(private router: Router){
        //this.path = this.router.url;
    }
    ngOnInit():void{


        if(this.loginState){
          this.sesion=false;
      }  else{
          this.loginState = false;
          this.sesion=true;
      }



    }

}

