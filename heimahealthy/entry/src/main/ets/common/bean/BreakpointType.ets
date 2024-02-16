import { expect } from '@ohos/hypium'
import defaultAppManager from '@ohos.bundle.defaultAppManager'
declare interface BreakpointTypeOptions<T>{
  sm?: T,
  md?: T,
  lg?: T
}

export default class BreakpointType<T>{
  options: BreakpointTypeOptions<T>

  constructor(options: BreakpointTypeOptions<T>) {
    this.options = options
  }

  getValue(breakpoint: string): T{
    return this.options[breakpoint]
  }
}