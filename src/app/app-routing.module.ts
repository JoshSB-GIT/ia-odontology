import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ChabotComponent } from './components/chabot/chabot.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'chatbot', component: ChabotComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
