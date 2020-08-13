import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { ICpuDto } from 'src/app/models/cpu.interfaces';
import { CpuService } from 'src/app/services/cpu/cpu.service';
import { DestroyBaseComponent } from 'src/app/helpers/components/destroy-base.component';
import { takeUntil } from 'rxjs/operators';
import { Router } from '@angular/router';
import { DataService } from 'src/app/services/data/data.service';
import { IPart } from 'src/app/models/computer.interfaces';
import { ComputerComponentName } from 'src/app/models/computer.models';

@Component({
  selector: 'app-cpu-add',
  templateUrl: './cpu-add.component.html',
  styleUrls: ['./cpu-add.component.scss']
})
export class CpuAddComponent extends DestroyBaseComponent implements OnInit {
  public displayedColumns: string[] = ['image', 'name', 'manufacturer', 'socket', 'cores', 'threads', 'frequency', 'cache', 'cooling', 'price', 'actions'];
  public dataSource: MatTableDataSource<ICpuDto>;
  public cpus: ICpuDto[];

  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) sort: MatSort;

  constructor(
    private cpuService: CpuService,
    private router: Router,
    private dataService: DataService
  ) {
    super();
  }

  ngOnInit() {
    this.cpuService
      .getCpus()
      .pipe(takeUntil(this.destroyed))
      .subscribe({
        next: cpus => {
          this.cpus = cpus;
          this.dataSource = new MatTableDataSource(cpus);
          this.dataSource.paginator = this.paginator;
          this.dataSource.sort = this.sort;
        },
        error: error => console.error(error)
      });
  }

  public applyFilter(event: Event): void {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }

  public addToMyComputer(partUid: string): void {
    const cpu = this.cpus.find(c => c.uid === partUid);

    const part: IPart = {
      part: ComputerComponentName.CPU.longName,
      selectedPart: cpu.name,
      price: cpu.price
    };
    sessionStorage.setItem(ComputerComponentName.CPU.shortName, JSON.stringify(part));
    this.dataService.changeCpu(part);

    this.router.navigate(['build']);
  }
}