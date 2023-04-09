import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { ChabotComponent } from './components/chabot/chabot.component';
import { ResumeComponent } from './components/resume/resume.component';
import { EmptionsComponent } from './components/emptions/emptions.component';
import { NotfoundComponent } from './components/notfound/notfound.component';


const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'chatbot', component: ChabotComponent },
  { path: 'resume', component: ResumeComponent },
  { path: 'emotions', component: EmptionsComponent },
  { path: '**', component: NotfoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
