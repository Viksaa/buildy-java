import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AboutComponent } from './components/about/about.component';
import { ContactComponent } from './components/contact/contact.component';
import { HomeComponent } from './components/home/home.component';
import { BuildComponent } from './components/build-form/build.component';
import { CpuAddComponent } from './components/build-computer/cpu/cpu-add/cpu-add.component';


const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'build/add/cpu', component: CpuAddComponent },
  { path: 'build/:id', component: BuildComponent },
  { path: 'build', component: BuildComponent },
  { path: 'about', component: AboutComponent },
  { path: 'contact', component: ContactComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
