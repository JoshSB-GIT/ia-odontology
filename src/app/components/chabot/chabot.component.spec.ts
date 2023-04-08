import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChabotComponent } from './chabot.component';

describe('ChabotComponent', () => {
  let component: ChabotComponent;
  let fixture: ComponentFixture<ChabotComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ChabotComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ChabotComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
