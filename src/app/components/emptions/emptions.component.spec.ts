import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EmptionsComponent } from './emptions.component';

describe('EmptionsComponent', () => {
  let component: EmptionsComponent;
  let fixture: ComponentFixture<EmptionsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EmptionsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EmptionsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
