import { Injectable } from '@angular/core';
import { BaseApiService } from '../base/base-api.service';
import { Observable } from 'rxjs';
import { ICpuDto } from 'src/app/models/cpu.interfaces';

@Injectable({
  providedIn: 'root'
})
export class CpuService {

  private cpusApiRoute = 'cpus';

  constructor(private baseApiService: BaseApiService) { }

  public getCpus(): Observable<ICpuDto[]> {
    return this.baseApiService.get<ICpuDto[]>(`${this.cpusApiRoute}`);
  }
}
