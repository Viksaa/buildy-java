import {Injectable} from '@angular/core';
import {BaseApiService} from '../base/base-api.service';
import {Observable} from 'rxjs';
import {IComputerComponentNameDto, IComputerDto} from 'src/app/models/computer.interfaces';

@Injectable({
  providedIn: 'root'
})
export class ComputersService {

  private computersApiRoute = 'computers';

  constructor(private baseApiService: BaseApiService) { }

  public getComputerComponentNames(): Observable<IComputerComponentNameDto[]> {
    return this.baseApiService.get<IComputerComponentNameDto[]>(`${this.computersApiRoute}/component-names`);
  }

  public getComputer(id: number): Observable<IComputerDto> {
    return this.baseApiService.get<IComputerDto>(`${this.computersApiRoute}/${id}`);
  }
}
