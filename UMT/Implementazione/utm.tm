input: '[ L+,0R.,1R.!1L+,1L+,0L.:,0L.,1L.:]1011'
blank: ' '
start state: 0
table:
  0:
      ']': {write: ']', R: go}
      '<': {write: '<', R: 0}
      '>': {write: '>', R: 0}
      '#': {write: '#', R: 0}
      '0': {write: '0', R: 0}
      '+': {write: '+', R: 0}
      '1': {write: '1', R: 0}
      ' ': {write: ' ', R: 0}
      '!': {write: '!', R: 0}
      'L': {write: 'L', R: 0}
      '[': {write: '[', R: 0}
      '.': {write: '.', R: 0}
      ':': {write: ':', R: 0}
      'R': {write: 'R', R: 0}
      '-': {write: '-', R: 0}
      ',': {write: ',', R: 0}
  go:
      ' ': {write: ' ', L: getStateB}
      '0': {write: '0', L: getState0}
      '1': {write: '1', L: getState1}
  getStateB:
      '!': {write: '!', L: getTR3}
      '<': {write: '<', L: getStateB}
      '>': {write: '>', L: getStateB}
      '#': {write: '#', L: getStateB}
      '0': {write: '0', L: getStateB}
      '+': {write: '+', L: getStateB}
      '1': {write: '1', L: getStateB}
      ' ': {write: ' ', L: getStateB}
      ']': {write: ']', L: getStateB}
      'L': {write: 'L', L: getStateB}
      '[': {write: '[', L: getStateB}
      '.': {write: '.', L: getStateB}
      ':': {write: ':', L: getStateB}
      'R': {write: 'R', L: getStateB}
      '-': {write: '-', L: getStateB}
      ',': {write: ',', L: getStateB}
  getState0:
      '!': {write: '!', L: getTR2}
      '<': {write: '<', L: getState0}
      '>': {write: '>', L: getState0}
      '#': {write: '#', L: getState0}
      '0': {write: '0', L: getState0}
      '+': {write: '+', L: getState0}
      '1': {write: '1', L: getState0}
      ' ': {write: ' ', L: getState0}
      ']': {write: ']', L: getState0}
      'L': {write: 'L', L: getState0}
      '[': {write: '[', L: getState0}
      '.': {write: '.', L: getState0}
      ':': {write: ':', L: getState0}
      'R': {write: 'R', L: getState0}
      '-': {write: '-', L: getState0}
      ',': {write: ',', L: getState0}
  getState1:
      '!': {write: '!', L: markTR}
      '<': {write: '<', L: getState1}
      '>': {write: '>', L: getState1}
      '#': {write: '#', L: getState1}
      '0': {write: '0', L: getState1}
      '+': {write: '+', L: getState1}
      '1': {write: '1', L: getState1}
      ' ': {write: ' ', L: getState1}
      ']': {write: ']', L: getState1}
      'L': {write: 'L', L: getState1}
      '[': {write: '[', L: getState1}
      '.': {write: '.', L: getState1}
      ':': {write: ':', L: getState1}
      'R': {write: 'R', L: getState1}
      '-': {write: '-', L: getState1}
      ',': {write: ',', L: getState1}
  getTR2:
      ',': {write: ',', L: markTR}
      '<': {write: '<', L: getTR2}
      '>': {write: '>', L: getTR2}
      '#': {write: '#', L: getTR2}
      '0': {write: '0', L: getTR2}
      '+': {write: '+', L: getTR2}
      '1': {write: '1', L: getTR2}
      ' ': {write: ' ', L: getTR2}
      ']': {write: ']', L: getTR2}
      '!': {write: '!', L: getTR2}
      'L': {write: 'L', L: getTR2}
      '[': {write: '[', L: getTR2}
      '.': {write: '.', L: getTR2}
      ':': {write: ':', L: getTR2}
      '-': {write: '-', L: getTR2}
      'R': {write: 'R', L: getTR2}
  getTR3:
      ',': {write: ',', L: getTR2}
      '<': {write: '<', L: getTR3}
      '>': {write: '>', L: getTR3}
      '#': {write: '#', L: getTR3}
      '0': {write: '0', L: getTR3}
      '+': {write: '+', L: getTR3}
      '1': {write: '1', L: getTR3}
      ' ': {write: ' ', L: getTR3}
      ']': {write: ']', L: getTR3}
      '!': {write: '!', L: getTR3}
      'L': {write: 'L', L: getTR3}
      '[': {write: '[', L: getTR3}
      '.': {write: '.', L: getTR3}
      ':': {write: ':', L: getTR3}
      '-': {write: '-', L: getTR3}
      'R': {write: 'R', L: getTR3}
  markTR:
      '.': {write: '#', L: markTR}
      '-': {write: '<', L: markTR}
      '+': {write: '>', L: markTR}
      'L': {write: 'L', L: markTR}
      'R': {write: 'R', L: markTR}
      ' ': {write: ' ', R: goWriteB}
      '0': {write: '0', R: goWrite0}
      '1': {write: '1', R: goWrite1}
      '<': {write: '<', R: done}
      '>': {write: '>', R: done}
      '#': {write: '#', R: done}
      ']': {write: ']', R: done}
      '!': {write: '!', R: done}
      '[': {write: '[', R: done}
      ',': {write: ',', R: done}
      ':': {write: ':', R: done}
  goWriteB:
      ']': {write: ']', R: writeB}
      '<': {write: '<', R: goWriteB}
      '>': {write: '>', R: goWriteB}
      '#': {write: '#', R: goWriteB}
      '0': {write: '0', R: goWriteB}
      '+': {write: '+', R: goWriteB}
      '1': {write: '1', R: goWriteB}
      ' ': {write: ' ', R: goWriteB}
      '!': {write: '!', R: goWriteB}
      'L': {write: 'L', R: goWriteB}
      '[': {write: '[', R: goWriteB}
      '.': {write: '.', R: goWriteB}
      ':': {write: ':', R: goWriteB}
      'R': {write: 'R', R: goWriteB}
      '-': {write: '-', R: goWriteB}
      ',': {write: ',', R: goWriteB}
  goWrite0:
      ']': {write: ']', R: write0}
      '<': {write: '<', R: goWrite0}
      '>': {write: '>', R: goWrite0}
      '#': {write: '#', R: goWrite0}
      '0': {write: '0', R: goWrite0}
      '+': {write: '+', R: goWrite0}
      '1': {write: '1', R: goWrite0}
      ' ': {write: ' ', R: goWrite0}
      '!': {write: '!', R: goWrite0}
      'L': {write: 'L', R: goWrite0}
      '[': {write: '[', R: goWrite0}
      '.': {write: '.', R: goWrite0}
      ':': {write: ':', R: goWrite0}
      'R': {write: 'R', R: goWrite0}
      '-': {write: '-', R: goWrite0}
      ',': {write: ',', R: goWrite0}
  goWrite1:
      ']': {write: ']', R: write1}
      '<': {write: '<', R: goWrite1}
      '>': {write: '>', R: goWrite1}
      '#': {write: '#', R: goWrite1}
      '0': {write: '0', R: goWrite1}
      '+': {write: '+', R: goWrite1}
      '1': {write: '1', R: goWrite1}
      ' ': {write: ' ', R: goWrite1}
      '!': {write: '!', R: goWrite1}
      'L': {write: 'L', R: goWrite1}
      '[': {write: '[', R: goWrite1}
      '.': {write: '.', R: goWrite1}
      ':': {write: ':', R: goWrite1}
      'R': {write: 'R', R: goWrite1}
      '-': {write: '-', R: goWrite1}
      ',': {write: ',', R: goWrite1}
  writeB:
      '<': {write: ' ', L: getShift}
      '>': {write: ' ', L: getShift}
      '#': {write: ' ', L: getShift}
      '0': {write: ' ', L: getShift}
      '+': {write: ' ', L: getShift}
      '1': {write: ' ', L: getShift}
      ' ': {write: ' ', L: getShift}
      ']': {write: ' ', L: getShift}
      '!': {write: ' ', L: getShift}
      'L': {write: ' ', L: getShift}
      '[': {write: ' ', L: getShift}
      '.': {write: ' ', L: getShift}
      ':': {write: ' ', L: getShift}
      'R': {write: ' ', L: getShift}
      '-': {write: ' ', L: getShift}
      ',': {write: ' ', L: getShift}
  write0:
      '<': {write: '0', L: getShift}
      '>': {write: '0', L: getShift}
      '#': {write: '0', L: getShift}
      '0': {write: '0', L: getShift}
      '+': {write: '0', L: getShift}
      '1': {write: '0', L: getShift}
      ' ': {write: '0', L: getShift}
      ']': {write: '0', L: getShift}
      '!': {write: '0', L: getShift}
      'L': {write: '0', L: getShift}
      '[': {write: '0', L: getShift}
      '.': {write: '0', L: getShift}
      ':': {write: '0', L: getShift}
      'R': {write: '0', L: getShift}
      '-': {write: '0', L: getShift}
      ',': {write: '0', L: getShift}
  write1:
      '<': {write: '1', L: getShift}
      '>': {write: '1', L: getShift}
      '#': {write: '1', L: getShift}
      '0': {write: '1', L: getShift}
      '+': {write: '1', L: getShift}
      '1': {write: '1', L: getShift}
      ' ': {write: '1', L: getShift}
      ']': {write: '1', L: getShift}
      '!': {write: '1', L: getShift}
      'L': {write: '1', L: getShift}
      '[': {write: '1', L: getShift}
      '.': {write: '1', L: getShift}
      ':': {write: '1', L: getShift}
      'R': {write: '1', L: getShift}
      '-': {write: '1', L: getShift}
      ',': {write: '1', L: getShift}
  getShift:
      '#': {write: '#', L: getShift2}
      '<': {write: '<', L: getShift2}
      '>': {write: '>', L: getShift2}
      '0': {write: '0', L: getShift}
      '+': {write: '+', L: getShift}
      '1': {write: '1', L: getShift}
      ' ': {write: ' ', L: getShift}
      ']': {write: ']', L: getShift}
      '!': {write: '!', L: getShift}
      'L': {write: 'L', L: getShift}
      '[': {write: '[', L: getShift}
      '.': {write: '.', L: getShift}
      ':': {write: ':', L: getShift}
      'R': {write: 'R', L: getShift}
      '-': {write: '-', L: getShift}
      ',': {write: ',', L: getShift}
  getShift2:
      'L': {write: 'L', R: doShiftL}
      'R': {write: 'R', L: doShiftR}
      '<': {write: '<', L: getShift2}
      '>': {write: '>', L: getShift2}
      '#': {write: '#', L: getShift2}
      '0': {write: '0', L: getShift2}
      '+': {write: '+', L: getShift2}
      '1': {write: '1', L: getShift2}
      ' ': {write: ' ', L: getShift2}
      ']': {write: ']', L: getShift2}
      '!': {write: '!', L: getShift2}
      '[': {write: '[', L: getShift2}
      '.': {write: '.', L: getShift2}
      ',': {write: ',', L: getShift2}
      '-': {write: '-', L: getShift2}
      ':': {write: ':', L: getShift2}
  doShiftL:
      ']': {write: ' ', L: shiftLBra}
      '<': {write: '<', R: doShiftL}
      '>': {write: '>', R: doShiftL}
      '#': {write: '#', R: doShiftL}
      '0': {write: '0', R: doShiftL}
      '+': {write: '+', R: doShiftL}
      '1': {write: '1', R: doShiftL}
      ' ': {write: ' ', R: doShiftL}
      '!': {write: '!', R: doShiftL}
      'L': {write: 'L', R: doShiftL}
      '[': {write: '[', R: doShiftL}
      '.': {write: '.', R: doShiftL}
      ':': {write: ':', R: doShiftL}
      'R': {write: 'R', R: doShiftL}
      '-': {write: '-', R: doShiftL}
      ',': {write: ',', R: doShiftL}
  shiftLBra:
      ',': {write: ']', L: shiftLCom}
      ':': {write: ']', L: shiftLCol}
      '!': {write: ']', L: shiftLExc}
  shiftLCom:
      '.': {write: ',', L: shiftLDot}
      '-': {write: ',', L: shiftLMin}
      '+': {write: ',', L: shiftLPlu}
      '#': {write: ',', L: shiftLHas}
      '<': {write: ',', L: shiftLLes}
      '>': {write: ',', L: shiftLGre}
      ',': {write: ',', L: shiftLCom}
      ':': {write: ',', L: shiftLCol}
      '!': {write: ',', L: shiftLExc}
      '[': {write: ',', L: shiftLEnd}
  shiftLCol:
      '.': {write: ':', L: shiftLDot}
      '-': {write: ':', L: shiftLMin}
      '+': {write: ':', L: shiftLPlu}
      '#': {write: ':', L: shiftLHas}
      '<': {write: ':', L: shiftLLes}
      '>': {write: ':', L: shiftLGre}
      ',': {write: ':', L: shiftLCom}
      ':': {write: ':', L: shiftLCol}
      '!': {write: ':', L: shiftLExc}
      '[': {write: ':', L: shiftLEnd}
  shiftLExc:
      '.': {write: '!', L: shiftLDot}
      '-': {write: '!', L: shiftLMin}
      '+': {write: '!', L: shiftLPlu}
      '#': {write: '!', L: shiftLHas}
      '<': {write: '!', L: shiftLLes}
      '>': {write: '!', L: shiftLGre}
      ',': {write: '!', L: shiftLCom}
      ':': {write: '!', L: shiftLCol}
      '!': {write: '!', L: shiftLExc}
      '[': {write: '!', L: shiftLEnd}
  shiftLDot:
      'L': {write: '.', L: shiftLL}
      'R': {write: '.', L: shiftLR}
  shiftLHas:
      'L': {write: '#', L: shiftLL}
      'R': {write: '#', L: shiftLR}
  shiftLMin:
      '-': {write: '-', L: shiftLMin}
      'L': {write: '-', L: shiftLL}
      'R': {write: '-', L: shiftLR}
  shiftLPlu:
      '+': {write: '+', L: shiftLPlu}
      'L': {write: '+', L: shiftLL}
      'R': {write: '+', L: shiftLR}
  shiftLLes:
      '<': {write: '<', L: shiftLLes}
      'L': {write: '<', L: shiftLL}
      'R': {write: '<', L: shiftLR}
  shiftLGre:
      '>': {write: '>', L: shiftLGre}
      'L': {write: '>', L: shiftLL}
      'R': {write: '>', L: shiftLR}
  shiftLL:
      ' ': {write: 'L', L: shiftLB}
      '0': {write: 'L', L: shiftL0}
      '1': {write: 'L', L: shiftL1}
  shiftLR:
      ' ': {write: 'R', L: shiftLB}
      '0': {write: 'R', L: shiftL0}
      '1': {write: 'R', L: shiftL1}
  shiftLB:
      ',': {write: ' ', L: shiftLCom}
      ':': {write: ' ', L: shiftLCol}
      '!': {write: ' ', L: shiftLExc}
      '[': {write: ' ', L: shiftLEnd}
  shiftL0:
      ',': {write: '0', L: shiftLCom}
      ':': {write: '0', L: shiftLCol}
      '!': {write: '0', L: shiftLExc}
      '[': {write: '0', L: shiftLEnd}
  shiftL1:
      ',': {write: '1', L: shiftLCom}
      ':': {write: '1', L: shiftLCol}
      '!': {write: '1', L: shiftLExc}
      '[': {write: '1', L: shiftLEnd}
  shiftLEnd:
      ' ': {write: '[', R: goWriteBb}
      '0': {write: '[', R: goWrite0b}
      '1': {write: '[', R: goWrite1b}
  goWriteBb:
      ']': {write: ']', R: writeBb}
      '<': {write: '<', R: goWriteBb}
      '>': {write: '>', R: goWriteBb}
      '#': {write: '#', R: goWriteBb}
      '0': {write: '0', R: goWriteBb}
      '+': {write: '+', R: goWriteBb}
      '1': {write: '1', R: goWriteBb}
      ' ': {write: ' ', R: goWriteBb}
      '!': {write: '!', R: goWriteBb}
      'L': {write: 'L', R: goWriteBb}
      '[': {write: '[', R: goWriteBb}
      '.': {write: '.', R: goWriteBb}
      ':': {write: ':', R: goWriteBb}
      'R': {write: 'R', R: goWriteBb}
      '-': {write: '-', R: goWriteBb}
      ',': {write: ',', R: goWriteBb}
  goWrite0b:
      ']': {write: ']', R: write0b}
      '<': {write: '<', R: goWrite0b}
      '>': {write: '>', R: goWrite0b}
      '#': {write: '#', R: goWrite0b}
      '0': {write: '0', R: goWrite0b}
      '+': {write: '+', R: goWrite0b}
      '1': {write: '1', R: goWrite0b}
      ' ': {write: ' ', R: goWrite0b}
      '!': {write: '!', R: goWrite0b}
      'L': {write: 'L', R: goWrite0b}
      '[': {write: '[', R: goWrite0b}
      '.': {write: '.', R: goWrite0b}
      ':': {write: ':', R: goWrite0b}
      'R': {write: 'R', R: goWrite0b}
      '-': {write: '-', R: goWrite0b}
      ',': {write: ',', R: goWrite0b}
  goWrite1b:
      ']': {write: ']', R: write1b}
      '<': {write: '<', R: goWrite1b}
      '>': {write: '>', R: goWrite1b}
      '#': {write: '#', R: goWrite1b}
      '0': {write: '0', R: goWrite1b}
      '+': {write: '+', R: goWrite1b}
      '1': {write: '1', R: goWrite1b}
      ' ': {write: ' ', R: goWrite1b}
      '!': {write: '!', R: goWrite1b}
      'L': {write: 'L', R: goWrite1b}
      '[': {write: '[', R: goWrite1b}
      '.': {write: '.', R: goWrite1b}
      ':': {write: ':', R: goWrite1b}
      'R': {write: 'R', R: goWrite1b}
      '-': {write: '-', R: goWrite1b}
      ',': {write: ',', R: goWrite1b}
  writeBb:
      '<': {write: ' ', L: changeState}
      '>': {write: ' ', L: changeState}
      '#': {write: ' ', L: changeState}
      '0': {write: ' ', L: changeState}
      '+': {write: ' ', L: changeState}
      '1': {write: ' ', L: changeState}
      ' ': {write: ' ', L: changeState}
      ']': {write: ' ', L: changeState}
      '!': {write: ' ', L: changeState}
      'L': {write: ' ', L: changeState}
      '[': {write: ' ', L: changeState}
      '.': {write: ' ', L: changeState}
      ':': {write: ' ', L: changeState}
      'R': {write: ' ', L: changeState}
      '-': {write: ' ', L: changeState}
      ',': {write: ' ', L: changeState}
  write0b:
      '<': {write: '0', L: changeState}
      '>': {write: '0', L: changeState}
      '#': {write: '0', L: changeState}
      '0': {write: '0', L: changeState}
      '+': {write: '0', L: changeState}
      '1': {write: '0', L: changeState}
      ' ': {write: '0', L: changeState}
      ']': {write: '0', L: changeState}
      '!': {write: '0', L: changeState}
      'L': {write: '0', L: changeState}
      '[': {write: '0', L: changeState}
      '.': {write: '0', L: changeState}
      ':': {write: '0', L: changeState}
      'R': {write: '0', L: changeState}
      '-': {write: '0', L: changeState}
      ',': {write: '0', L: changeState}
  write1b:
      '<': {write: '1', L: changeState}
      '>': {write: '1', L: changeState}
      '#': {write: '1', L: changeState}
      '0': {write: '1', L: changeState}
      '+': {write: '1', L: changeState}
      '1': {write: '1', L: changeState}
      ' ': {write: '1', L: changeState}
      ']': {write: '1', L: changeState}
      '!': {write: '1', L: changeState}
      'L': {write: '1', L: changeState}
      '[': {write: '1', L: changeState}
      '.': {write: '1', L: changeState}
      ':': {write: '1', L: changeState}
      'R': {write: '1', L: changeState}
      '-': {write: '1', L: changeState}
      ',': {write: '1', L: changeState}
  doShiftR:
      ']': {write: ']', R: shiftR}
      '<': {write: '<', R: doShiftR}
      '>': {write: '>', R: doShiftR}
      '#': {write: '#', R: doShiftR}
      '0': {write: '0', R: doShiftR}
      '+': {write: '+', R: doShiftR}
      '1': {write: '1', R: doShiftR}
      ' ': {write: ' ', R: doShiftR}
      '!': {write: '!', R: doShiftR}
      'L': {write: 'L', R: doShiftR}
      '[': {write: '[', R: doShiftR}
      '.': {write: '.', R: doShiftR}
      ':': {write: ':', R: doShiftR}
      'R': {write: 'R', R: doShiftR}
      '-': {write: '-', R: doShiftR}
      ',': {write: ',', R: doShiftR}
  shiftR:
      ' ': {write: ' ', L: shiftRB}
      '0': {write: '0', L: shiftR0}
      '1': {write: '1', L: shiftR1}
  shiftRB:
      ']': {write: ']', R: shiftRBBra}
      ',': {write: ',', R: shiftRBCom}
      ':': {write: ':', R: shiftRBCol}
      '!': {write: '!', R: shiftRBExc}
      '.': {write: '.', R: shiftRBDot}
      '-': {write: '-', R: shiftRBMin}
      '+': {write: '+', R: shiftRBPlu}
      '#': {write: '#', R: shiftRBHas}
      '<': {write: '<', R: shiftRBLes}
      '>': {write: '>', R: shiftRBGre}
      'L': {write: 'L', R: shiftRBL}
      'R': {write: 'R', R: shiftRBR}
      ' ': {write: ' ', R: shiftRBB}
      '0': {write: '0', R: shiftRB0}
      '1': {write: '1', R: shiftRB1}
      '[': {write: ' ', R: shiftREnd}
  shiftRBBra:
      '<': {write: ']', L: shiftRBStep}
      '>': {write: ']', L: shiftRBStep}
      '#': {write: ']', L: shiftRBStep}
      '0': {write: ']', L: shiftRBStep}
      '+': {write: ']', L: shiftRBStep}
      '1': {write: ']', L: shiftRBStep}
      ' ': {write: ']', L: shiftRBStep}
      ']': {write: ']', L: shiftRBStep}
      '!': {write: ']', L: shiftRBStep}
      'L': {write: ']', L: shiftRBStep}
      '[': {write: ']', L: shiftRBStep}
      '.': {write: ']', L: shiftRBStep}
      ':': {write: ']', L: shiftRBStep}
      'R': {write: ']', L: shiftRBStep}
      '-': {write: ']', L: shiftRBStep}
      ',': {write: ']', L: shiftRBStep}
  shiftRBCom:
      '<': {write: ',', L: shiftRBStep}
      '>': {write: ',', L: shiftRBStep}
      '#': {write: ',', L: shiftRBStep}
      '0': {write: ',', L: shiftRBStep}
      '+': {write: ',', L: shiftRBStep}
      '1': {write: ',', L: shiftRBStep}
      ' ': {write: ',', L: shiftRBStep}
      ']': {write: ',', L: shiftRBStep}
      '!': {write: ',', L: shiftRBStep}
      'L': {write: ',', L: shiftRBStep}
      '[': {write: ',', L: shiftRBStep}
      '.': {write: ',', L: shiftRBStep}
      ':': {write: ',', L: shiftRBStep}
      'R': {write: ',', L: shiftRBStep}
      '-': {write: ',', L: shiftRBStep}
      ',': {write: ',', L: shiftRBStep}
  shiftRBCol:
      '<': {write: ':', L: shiftRBStep}
      '>': {write: ':', L: shiftRBStep}
      '#': {write: ':', L: shiftRBStep}
      '0': {write: ':', L: shiftRBStep}
      '+': {write: ':', L: shiftRBStep}
      '1': {write: ':', L: shiftRBStep}
      ' ': {write: ':', L: shiftRBStep}
      ']': {write: ':', L: shiftRBStep}
      '!': {write: ':', L: shiftRBStep}
      'L': {write: ':', L: shiftRBStep}
      '[': {write: ':', L: shiftRBStep}
      '.': {write: ':', L: shiftRBStep}
      ':': {write: ':', L: shiftRBStep}
      'R': {write: ':', L: shiftRBStep}
      '-': {write: ':', L: shiftRBStep}
      ',': {write: ':', L: shiftRBStep}
  shiftRBExc:
      '<': {write: '!', L: shiftRBStep}
      '>': {write: '!', L: shiftRBStep}
      '#': {write: '!', L: shiftRBStep}
      '0': {write: '!', L: shiftRBStep}
      '+': {write: '!', L: shiftRBStep}
      '1': {write: '!', L: shiftRBStep}
      ' ': {write: '!', L: shiftRBStep}
      ']': {write: '!', L: shiftRBStep}
      '!': {write: '!', L: shiftRBStep}
      'L': {write: '!', L: shiftRBStep}
      '[': {write: '!', L: shiftRBStep}
      '.': {write: '!', L: shiftRBStep}
      ':': {write: '!', L: shiftRBStep}
      'R': {write: '!', L: shiftRBStep}
      '-': {write: '!', L: shiftRBStep}
      ',': {write: '!', L: shiftRBStep}
  shiftRBDot:
      '<': {write: '.', L: shiftRBStep}
      '>': {write: '.', L: shiftRBStep}
      '#': {write: '.', L: shiftRBStep}
      '0': {write: '.', L: shiftRBStep}
      '+': {write: '.', L: shiftRBStep}
      '1': {write: '.', L: shiftRBStep}
      ' ': {write: '.', L: shiftRBStep}
      ']': {write: '.', L: shiftRBStep}
      '!': {write: '.', L: shiftRBStep}
      'L': {write: '.', L: shiftRBStep}
      '[': {write: '.', L: shiftRBStep}
      '.': {write: '.', L: shiftRBStep}
      ':': {write: '.', L: shiftRBStep}
      'R': {write: '.', L: shiftRBStep}
      '-': {write: '.', L: shiftRBStep}
      ',': {write: '.', L: shiftRBStep}
  shiftRBMin:
      '<': {write: '-', L: shiftRBStep}
      '>': {write: '-', L: shiftRBStep}
      '#': {write: '-', L: shiftRBStep}
      '0': {write: '-', L: shiftRBStep}
      '+': {write: '-', L: shiftRBStep}
      '1': {write: '-', L: shiftRBStep}
      ' ': {write: '-', L: shiftRBStep}
      ']': {write: '-', L: shiftRBStep}
      '!': {write: '-', L: shiftRBStep}
      'L': {write: '-', L: shiftRBStep}
      '[': {write: '-', L: shiftRBStep}
      '.': {write: '-', L: shiftRBStep}
      ':': {write: '-', L: shiftRBStep}
      'R': {write: '-', L: shiftRBStep}
      '-': {write: '-', L: shiftRBStep}
      ',': {write: '-', L: shiftRBStep}
  shiftRBPlu:
      '<': {write: '+', L: shiftRBStep}
      '>': {write: '+', L: shiftRBStep}
      '#': {write: '+', L: shiftRBStep}
      '0': {write: '+', L: shiftRBStep}
      '+': {write: '+', L: shiftRBStep}
      '1': {write: '+', L: shiftRBStep}
      ' ': {write: '+', L: shiftRBStep}
      ']': {write: '+', L: shiftRBStep}
      '!': {write: '+', L: shiftRBStep}
      'L': {write: '+', L: shiftRBStep}
      '[': {write: '+', L: shiftRBStep}
      '.': {write: '+', L: shiftRBStep}
      ':': {write: '+', L: shiftRBStep}
      'R': {write: '+', L: shiftRBStep}
      '-': {write: '+', L: shiftRBStep}
      ',': {write: '+', L: shiftRBStep}
  shiftRBHas:
      '<': {write: '#', L: shiftRBStep}
      '>': {write: '#', L: shiftRBStep}
      '#': {write: '#', L: shiftRBStep}
      '0': {write: '#', L: shiftRBStep}
      '+': {write: '#', L: shiftRBStep}
      '1': {write: '#', L: shiftRBStep}
      ' ': {write: '#', L: shiftRBStep}
      ']': {write: '#', L: shiftRBStep}
      '!': {write: '#', L: shiftRBStep}
      'L': {write: '#', L: shiftRBStep}
      '[': {write: '#', L: shiftRBStep}
      '.': {write: '#', L: shiftRBStep}
      ':': {write: '#', L: shiftRBStep}
      'R': {write: '#', L: shiftRBStep}
      '-': {write: '#', L: shiftRBStep}
      ',': {write: '#', L: shiftRBStep}
  shiftRBLes:
      '<': {write: '<', L: shiftRBStep}
      '>': {write: '<', L: shiftRBStep}
      '#': {write: '<', L: shiftRBStep}
      '0': {write: '<', L: shiftRBStep}
      '+': {write: '<', L: shiftRBStep}
      '1': {write: '<', L: shiftRBStep}
      ' ': {write: '<', L: shiftRBStep}
      ']': {write: '<', L: shiftRBStep}
      '!': {write: '<', L: shiftRBStep}
      'L': {write: '<', L: shiftRBStep}
      '[': {write: '<', L: shiftRBStep}
      '.': {write: '<', L: shiftRBStep}
      ':': {write: '<', L: shiftRBStep}
      'R': {write: '<', L: shiftRBStep}
      '-': {write: '<', L: shiftRBStep}
      ',': {write: '<', L: shiftRBStep}
  shiftRBGre:
      '<': {write: '>', L: shiftRBStep}
      '>': {write: '>', L: shiftRBStep}
      '#': {write: '>', L: shiftRBStep}
      '0': {write: '>', L: shiftRBStep}
      '+': {write: '>', L: shiftRBStep}
      '1': {write: '>', L: shiftRBStep}
      ' ': {write: '>', L: shiftRBStep}
      ']': {write: '>', L: shiftRBStep}
      '!': {write: '>', L: shiftRBStep}
      'L': {write: '>', L: shiftRBStep}
      '[': {write: '>', L: shiftRBStep}
      '.': {write: '>', L: shiftRBStep}
      ':': {write: '>', L: shiftRBStep}
      'R': {write: '>', L: shiftRBStep}
      '-': {write: '>', L: shiftRBStep}
      ',': {write: '>', L: shiftRBStep}
  shiftRBL:
      '<': {write: 'L', L: shiftRBStep}
      '>': {write: 'L', L: shiftRBStep}
      '#': {write: 'L', L: shiftRBStep}
      '0': {write: 'L', L: shiftRBStep}
      '+': {write: 'L', L: shiftRBStep}
      '1': {write: 'L', L: shiftRBStep}
      ' ': {write: 'L', L: shiftRBStep}
      ']': {write: 'L', L: shiftRBStep}
      '!': {write: 'L', L: shiftRBStep}
      'L': {write: 'L', L: shiftRBStep}
      '[': {write: 'L', L: shiftRBStep}
      '.': {write: 'L', L: shiftRBStep}
      ':': {write: 'L', L: shiftRBStep}
      'R': {write: 'L', L: shiftRBStep}
      '-': {write: 'L', L: shiftRBStep}
      ',': {write: 'L', L: shiftRBStep}
  shiftRBR:
      '<': {write: 'R', L: shiftRBStep}
      '>': {write: 'R', L: shiftRBStep}
      '#': {write: 'R', L: shiftRBStep}
      '0': {write: 'R', L: shiftRBStep}
      '+': {write: 'R', L: shiftRBStep}
      '1': {write: 'R', L: shiftRBStep}
      ' ': {write: 'R', L: shiftRBStep}
      ']': {write: 'R', L: shiftRBStep}
      '!': {write: 'R', L: shiftRBStep}
      'L': {write: 'R', L: shiftRBStep}
      '[': {write: 'R', L: shiftRBStep}
      '.': {write: 'R', L: shiftRBStep}
      ':': {write: 'R', L: shiftRBStep}
      'R': {write: 'R', L: shiftRBStep}
      '-': {write: 'R', L: shiftRBStep}
      ',': {write: 'R', L: shiftRBStep}
  shiftRBB:
      '<': {write: ' ', L: shiftRBStep}
      '>': {write: ' ', L: shiftRBStep}
      '#': {write: ' ', L: shiftRBStep}
      '0': {write: ' ', L: shiftRBStep}
      '+': {write: ' ', L: shiftRBStep}
      '1': {write: ' ', L: shiftRBStep}
      ' ': {write: ' ', L: shiftRBStep}
      ']': {write: ' ', L: shiftRBStep}
      '!': {write: ' ', L: shiftRBStep}
      'L': {write: ' ', L: shiftRBStep}
      '[': {write: ' ', L: shiftRBStep}
      '.': {write: ' ', L: shiftRBStep}
      ':': {write: ' ', L: shiftRBStep}
      'R': {write: ' ', L: shiftRBStep}
      '-': {write: ' ', L: shiftRBStep}
      ',': {write: ' ', L: shiftRBStep}
  shiftRB0:
      '<': {write: '0', L: shiftRBStep}
      '>': {write: '0', L: shiftRBStep}
      '#': {write: '0', L: shiftRBStep}
      '0': {write: '0', L: shiftRBStep}
      '+': {write: '0', L: shiftRBStep}
      '1': {write: '0', L: shiftRBStep}
      ' ': {write: '0', L: shiftRBStep}
      ']': {write: '0', L: shiftRBStep}
      '!': {write: '0', L: shiftRBStep}
      'L': {write: '0', L: shiftRBStep}
      '[': {write: '0', L: shiftRBStep}
      '.': {write: '0', L: shiftRBStep}
      ':': {write: '0', L: shiftRBStep}
      'R': {write: '0', L: shiftRBStep}
      '-': {write: '0', L: shiftRBStep}
      ',': {write: '0', L: shiftRBStep}
  shiftRB1:
      '<': {write: '1', L: shiftRBStep}
      '>': {write: '1', L: shiftRBStep}
      '#': {write: '1', L: shiftRBStep}
      '0': {write: '1', L: shiftRBStep}
      '+': {write: '1', L: shiftRBStep}
      '1': {write: '1', L: shiftRBStep}
      ' ': {write: '1', L: shiftRBStep}
      ']': {write: '1', L: shiftRBStep}
      '!': {write: '1', L: shiftRBStep}
      'L': {write: '1', L: shiftRBStep}
      '[': {write: '1', L: shiftRBStep}
      '.': {write: '1', L: shiftRBStep}
      ':': {write: '1', L: shiftRBStep}
      'R': {write: '1', L: shiftRBStep}
      '-': {write: '1', L: shiftRBStep}
      ',': {write: '1', L: shiftRBStep}
  shiftRBStep:
      '<': {write: '<', L: shiftRB}
      '>': {write: '>', L: shiftRB}
      '#': {write: '#', L: shiftRB}
      '0': {write: '0', L: shiftRB}
      '+': {write: '+', L: shiftRB}
      '1': {write: '1', L: shiftRB}
      ' ': {write: ' ', L: shiftRB}
      ']': {write: ']', L: shiftRB}
      '!': {write: '!', L: shiftRB}
      'L': {write: 'L', L: shiftRB}
      '[': {write: '[', L: shiftRB}
      '.': {write: '.', L: shiftRB}
      ':': {write: ':', L: shiftRB}
      'R': {write: 'R', L: shiftRB}
      '-': {write: '-', L: shiftRB}
      ',': {write: ',', L: shiftRB}
  shiftR0:
      ']': {write: ']', R: shiftR0Bra}
      ',': {write: ',', R: shiftR0Com}
      ':': {write: ':', R: shiftR0Col}
      '!': {write: '!', R: shiftR0Exc}
      '.': {write: '.', R: shiftR0Dot}
      '-': {write: '-', R: shiftR0Min}
      '+': {write: '+', R: shiftR0Plu}
      '#': {write: '#', R: shiftR0Has}
      '<': {write: '<', R: shiftR0Les}
      '>': {write: '>', R: shiftR0Gre}
      'L': {write: 'L', R: shiftR0L}
      'R': {write: 'R', R: shiftR0R}
      ' ': {write: ' ', R: shiftR0B}
      '0': {write: '0', R: shiftR00}
      '1': {write: '1', R: shiftR01}
      '[': {write: '0', R: shiftREnd}
  shiftR0Bra:
      '<': {write: ']', L: shiftR0Step}
      '>': {write: ']', L: shiftR0Step}
      '#': {write: ']', L: shiftR0Step}
      '0': {write: ']', L: shiftR0Step}
      '+': {write: ']', L: shiftR0Step}
      '1': {write: ']', L: shiftR0Step}
      ' ': {write: ']', L: shiftR0Step}
      ']': {write: ']', L: shiftR0Step}
      '!': {write: ']', L: shiftR0Step}
      'L': {write: ']', L: shiftR0Step}
      '[': {write: ']', L: shiftR0Step}
      '.': {write: ']', L: shiftR0Step}
      ':': {write: ']', L: shiftR0Step}
      'R': {write: ']', L: shiftR0Step}
      '-': {write: ']', L: shiftR0Step}
      ',': {write: ']', L: shiftR0Step}
  shiftR0Com:
      '<': {write: ',', L: shiftR0Step}
      '>': {write: ',', L: shiftR0Step}
      '#': {write: ',', L: shiftR0Step}
      '0': {write: ',', L: shiftR0Step}
      '+': {write: ',', L: shiftR0Step}
      '1': {write: ',', L: shiftR0Step}
      ' ': {write: ',', L: shiftR0Step}
      ']': {write: ',', L: shiftR0Step}
      '!': {write: ',', L: shiftR0Step}
      'L': {write: ',', L: shiftR0Step}
      '[': {write: ',', L: shiftR0Step}
      '.': {write: ',', L: shiftR0Step}
      ':': {write: ',', L: shiftR0Step}
      'R': {write: ',', L: shiftR0Step}
      '-': {write: ',', L: shiftR0Step}
      ',': {write: ',', L: shiftR0Step}
  shiftR0Col:
      '<': {write: ':', L: shiftR0Step}
      '>': {write: ':', L: shiftR0Step}
      '#': {write: ':', L: shiftR0Step}
      '0': {write: ':', L: shiftR0Step}
      '+': {write: ':', L: shiftR0Step}
      '1': {write: ':', L: shiftR0Step}
      ' ': {write: ':', L: shiftR0Step}
      ']': {write: ':', L: shiftR0Step}
      '!': {write: ':', L: shiftR0Step}
      'L': {write: ':', L: shiftR0Step}
      '[': {write: ':', L: shiftR0Step}
      '.': {write: ':', L: shiftR0Step}
      ':': {write: ':', L: shiftR0Step}
      'R': {write: ':', L: shiftR0Step}
      '-': {write: ':', L: shiftR0Step}
      ',': {write: ':', L: shiftR0Step}
  shiftR0Exc:
      '<': {write: '!', L: shiftR0Step}
      '>': {write: '!', L: shiftR0Step}
      '#': {write: '!', L: shiftR0Step}
      '0': {write: '!', L: shiftR0Step}
      '+': {write: '!', L: shiftR0Step}
      '1': {write: '!', L: shiftR0Step}
      ' ': {write: '!', L: shiftR0Step}
      ']': {write: '!', L: shiftR0Step}
      '!': {write: '!', L: shiftR0Step}
      'L': {write: '!', L: shiftR0Step}
      '[': {write: '!', L: shiftR0Step}
      '.': {write: '!', L: shiftR0Step}
      ':': {write: '!', L: shiftR0Step}
      'R': {write: '!', L: shiftR0Step}
      '-': {write: '!', L: shiftR0Step}
      ',': {write: '!', L: shiftR0Step}
  shiftR0Dot:
      '<': {write: '.', L: shiftR0Step}
      '>': {write: '.', L: shiftR0Step}
      '#': {write: '.', L: shiftR0Step}
      '0': {write: '.', L: shiftR0Step}
      '+': {write: '.', L: shiftR0Step}
      '1': {write: '.', L: shiftR0Step}
      ' ': {write: '.', L: shiftR0Step}
      ']': {write: '.', L: shiftR0Step}
      '!': {write: '.', L: shiftR0Step}
      'L': {write: '.', L: shiftR0Step}
      '[': {write: '.', L: shiftR0Step}
      '.': {write: '.', L: shiftR0Step}
      ':': {write: '.', L: shiftR0Step}
      'R': {write: '.', L: shiftR0Step}
      '-': {write: '.', L: shiftR0Step}
      ',': {write: '.', L: shiftR0Step}
  shiftR0Min:
      '<': {write: '-', L: shiftR0Step}
      '>': {write: '-', L: shiftR0Step}
      '#': {write: '-', L: shiftR0Step}
      '0': {write: '-', L: shiftR0Step}
      '+': {write: '-', L: shiftR0Step}
      '1': {write: '-', L: shiftR0Step}
      ' ': {write: '-', L: shiftR0Step}
      ']': {write: '-', L: shiftR0Step}
      '!': {write: '-', L: shiftR0Step}
      'L': {write: '-', L: shiftR0Step}
      '[': {write: '-', L: shiftR0Step}
      '.': {write: '-', L: shiftR0Step}
      ':': {write: '-', L: shiftR0Step}
      'R': {write: '-', L: shiftR0Step}
      '-': {write: '-', L: shiftR0Step}
      ',': {write: '-', L: shiftR0Step}
  shiftR0Plu:
      '<': {write: '+', L: shiftR0Step}
      '>': {write: '+', L: shiftR0Step}
      '#': {write: '+', L: shiftR0Step}
      '0': {write: '+', L: shiftR0Step}
      '+': {write: '+', L: shiftR0Step}
      '1': {write: '+', L: shiftR0Step}
      ' ': {write: '+', L: shiftR0Step}
      ']': {write: '+', L: shiftR0Step}
      '!': {write: '+', L: shiftR0Step}
      'L': {write: '+', L: shiftR0Step}
      '[': {write: '+', L: shiftR0Step}
      '.': {write: '+', L: shiftR0Step}
      ':': {write: '+', L: shiftR0Step}
      'R': {write: '+', L: shiftR0Step}
      '-': {write: '+', L: shiftR0Step}
      ',': {write: '+', L: shiftR0Step}
  shiftR0Has:
      '<': {write: '#', L: shiftR0Step}
      '>': {write: '#', L: shiftR0Step}
      '#': {write: '#', L: shiftR0Step}
      '0': {write: '#', L: shiftR0Step}
      '+': {write: '#', L: shiftR0Step}
      '1': {write: '#', L: shiftR0Step}
      ' ': {write: '#', L: shiftR0Step}
      ']': {write: '#', L: shiftR0Step}
      '!': {write: '#', L: shiftR0Step}
      'L': {write: '#', L: shiftR0Step}
      '[': {write: '#', L: shiftR0Step}
      '.': {write: '#', L: shiftR0Step}
      ':': {write: '#', L: shiftR0Step}
      'R': {write: '#', L: shiftR0Step}
      '-': {write: '#', L: shiftR0Step}
      ',': {write: '#', L: shiftR0Step}
  shiftR0Les:
      '<': {write: '<', L: shiftR0Step}
      '>': {write: '<', L: shiftR0Step}
      '#': {write: '<', L: shiftR0Step}
      '0': {write: '<', L: shiftR0Step}
      '+': {write: '<', L: shiftR0Step}
      '1': {write: '<', L: shiftR0Step}
      ' ': {write: '<', L: shiftR0Step}
      ']': {write: '<', L: shiftR0Step}
      '!': {write: '<', L: shiftR0Step}
      'L': {write: '<', L: shiftR0Step}
      '[': {write: '<', L: shiftR0Step}
      '.': {write: '<', L: shiftR0Step}
      ':': {write: '<', L: shiftR0Step}
      'R': {write: '<', L: shiftR0Step}
      '-': {write: '<', L: shiftR0Step}
      ',': {write: '<', L: shiftR0Step}
  shiftR0Gre:
      '<': {write: '>', L: shiftR0Step}
      '>': {write: '>', L: shiftR0Step}
      '#': {write: '>', L: shiftR0Step}
      '0': {write: '>', L: shiftR0Step}
      '+': {write: '>', L: shiftR0Step}
      '1': {write: '>', L: shiftR0Step}
      ' ': {write: '>', L: shiftR0Step}
      ']': {write: '>', L: shiftR0Step}
      '!': {write: '>', L: shiftR0Step}
      'L': {write: '>', L: shiftR0Step}
      '[': {write: '>', L: shiftR0Step}
      '.': {write: '>', L: shiftR0Step}
      ':': {write: '>', L: shiftR0Step}
      'R': {write: '>', L: shiftR0Step}
      '-': {write: '>', L: shiftR0Step}
      ',': {write: '>', L: shiftR0Step}
  shiftR0L:
      '<': {write: 'L', L: shiftR0Step}
      '>': {write: 'L', L: shiftR0Step}
      '#': {write: 'L', L: shiftR0Step}
      '0': {write: 'L', L: shiftR0Step}
      '+': {write: 'L', L: shiftR0Step}
      '1': {write: 'L', L: shiftR0Step}
      ' ': {write: 'L', L: shiftR0Step}
      ']': {write: 'L', L: shiftR0Step}
      '!': {write: 'L', L: shiftR0Step}
      'L': {write: 'L', L: shiftR0Step}
      '[': {write: 'L', L: shiftR0Step}
      '.': {write: 'L', L: shiftR0Step}
      ':': {write: 'L', L: shiftR0Step}
      'R': {write: 'L', L: shiftR0Step}
      '-': {write: 'L', L: shiftR0Step}
      ',': {write: 'L', L: shiftR0Step}
  shiftR0R:
      '<': {write: 'R', L: shiftR0Step}
      '>': {write: 'R', L: shiftR0Step}
      '#': {write: 'R', L: shiftR0Step}
      '0': {write: 'R', L: shiftR0Step}
      '+': {write: 'R', L: shiftR0Step}
      '1': {write: 'R', L: shiftR0Step}
      ' ': {write: 'R', L: shiftR0Step}
      ']': {write: 'R', L: shiftR0Step}
      '!': {write: 'R', L: shiftR0Step}
      'L': {write: 'R', L: shiftR0Step}
      '[': {write: 'R', L: shiftR0Step}
      '.': {write: 'R', L: shiftR0Step}
      ':': {write: 'R', L: shiftR0Step}
      'R': {write: 'R', L: shiftR0Step}
      '-': {write: 'R', L: shiftR0Step}
      ',': {write: 'R', L: shiftR0Step}
  shiftR0B:
      '<': {write: ' ', L: shiftR0Step}
      '>': {write: ' ', L: shiftR0Step}
      '#': {write: ' ', L: shiftR0Step}
      '0': {write: ' ', L: shiftR0Step}
      '+': {write: ' ', L: shiftR0Step}
      '1': {write: ' ', L: shiftR0Step}
      ' ': {write: ' ', L: shiftR0Step}
      ']': {write: ' ', L: shiftR0Step}
      '!': {write: ' ', L: shiftR0Step}
      'L': {write: ' ', L: shiftR0Step}
      '[': {write: ' ', L: shiftR0Step}
      '.': {write: ' ', L: shiftR0Step}
      ':': {write: ' ', L: shiftR0Step}
      'R': {write: ' ', L: shiftR0Step}
      '-': {write: ' ', L: shiftR0Step}
      ',': {write: ' ', L: shiftR0Step}
  shiftR00:
      '<': {write: '0', L: shiftR0Step}
      '>': {write: '0', L: shiftR0Step}
      '#': {write: '0', L: shiftR0Step}
      '0': {write: '0', L: shiftR0Step}
      '+': {write: '0', L: shiftR0Step}
      '1': {write: '0', L: shiftR0Step}
      ' ': {write: '0', L: shiftR0Step}
      ']': {write: '0', L: shiftR0Step}
      '!': {write: '0', L: shiftR0Step}
      'L': {write: '0', L: shiftR0Step}
      '[': {write: '0', L: shiftR0Step}
      '.': {write: '0', L: shiftR0Step}
      ':': {write: '0', L: shiftR0Step}
      'R': {write: '0', L: shiftR0Step}
      '-': {write: '0', L: shiftR0Step}
      ',': {write: '0', L: shiftR0Step}
  shiftR01:
      '<': {write: '1', L: shiftR0Step}
      '>': {write: '1', L: shiftR0Step}
      '#': {write: '1', L: shiftR0Step}
      '0': {write: '1', L: shiftR0Step}
      '+': {write: '1', L: shiftR0Step}
      '1': {write: '1', L: shiftR0Step}
      ' ': {write: '1', L: shiftR0Step}
      ']': {write: '1', L: shiftR0Step}
      '!': {write: '1', L: shiftR0Step}
      'L': {write: '1', L: shiftR0Step}
      '[': {write: '1', L: shiftR0Step}
      '.': {write: '1', L: shiftR0Step}
      ':': {write: '1', L: shiftR0Step}
      'R': {write: '1', L: shiftR0Step}
      '-': {write: '1', L: shiftR0Step}
      ',': {write: '1', L: shiftR0Step}
  shiftR0Step:
      '<': {write: '<', L: shiftR0}
      '>': {write: '>', L: shiftR0}
      '#': {write: '#', L: shiftR0}
      '0': {write: '0', L: shiftR0}
      '+': {write: '+', L: shiftR0}
      '1': {write: '1', L: shiftR0}
      ' ': {write: ' ', L: shiftR0}
      ']': {write: ']', L: shiftR0}
      '!': {write: '!', L: shiftR0}
      'L': {write: 'L', L: shiftR0}
      '[': {write: '[', L: shiftR0}
      '.': {write: '.', L: shiftR0}
      ':': {write: ':', L: shiftR0}
      'R': {write: 'R', L: shiftR0}
      '-': {write: '-', L: shiftR0}
      ',': {write: ',', L: shiftR0}
  shiftR1:
      ']': {write: ']', R: shiftR1Bra}
      ',': {write: ',', R: shiftR1Com}
      ':': {write: ':', R: shiftR1Col}
      '!': {write: '!', R: shiftR1Exc}
      '.': {write: '.', R: shiftR1Dot}
      '-': {write: '-', R: shiftR1Min}
      '+': {write: '+', R: shiftR1Plu}
      '#': {write: '#', R: shiftR1Has}
      '<': {write: '<', R: shiftR1Les}
      '>': {write: '>', R: shiftR1Gre}
      'L': {write: 'L', R: shiftR1L}
      'R': {write: 'R', R: shiftR1R}
      ' ': {write: ' ', R: shiftR1B}
      '0': {write: '0', R: shiftR10}
      '1': {write: '1', R: shiftR11}
      '[': {write: '1', R: shiftREnd}
  shiftR1Bra:
      '<': {write: ']', L: shiftR1Step}
      '>': {write: ']', L: shiftR1Step}
      '#': {write: ']', L: shiftR1Step}
      '0': {write: ']', L: shiftR1Step}
      '+': {write: ']', L: shiftR1Step}
      '1': {write: ']', L: shiftR1Step}
      ' ': {write: ']', L: shiftR1Step}
      ']': {write: ']', L: shiftR1Step}
      '!': {write: ']', L: shiftR1Step}
      'L': {write: ']', L: shiftR1Step}
      '[': {write: ']', L: shiftR1Step}
      '.': {write: ']', L: shiftR1Step}
      ':': {write: ']', L: shiftR1Step}
      'R': {write: ']', L: shiftR1Step}
      '-': {write: ']', L: shiftR1Step}
      ',': {write: ']', L: shiftR1Step}
  shiftR1Com:
      '<': {write: ',', L: shiftR1Step}
      '>': {write: ',', L: shiftR1Step}
      '#': {write: ',', L: shiftR1Step}
      '0': {write: ',', L: shiftR1Step}
      '+': {write: ',', L: shiftR1Step}
      '1': {write: ',', L: shiftR1Step}
      ' ': {write: ',', L: shiftR1Step}
      ']': {write: ',', L: shiftR1Step}
      '!': {write: ',', L: shiftR1Step}
      'L': {write: ',', L: shiftR1Step}
      '[': {write: ',', L: shiftR1Step}
      '.': {write: ',', L: shiftR1Step}
      ':': {write: ',', L: shiftR1Step}
      'R': {write: ',', L: shiftR1Step}
      '-': {write: ',', L: shiftR1Step}
      ',': {write: ',', L: shiftR1Step}
  shiftR1Col:
      '<': {write: ':', L: shiftR1Step}
      '>': {write: ':', L: shiftR1Step}
      '#': {write: ':', L: shiftR1Step}
      '0': {write: ':', L: shiftR1Step}
      '+': {write: ':', L: shiftR1Step}
      '1': {write: ':', L: shiftR1Step}
      ' ': {write: ':', L: shiftR1Step}
      ']': {write: ':', L: shiftR1Step}
      '!': {write: ':', L: shiftR1Step}
      'L': {write: ':', L: shiftR1Step}
      '[': {write: ':', L: shiftR1Step}
      '.': {write: ':', L: shiftR1Step}
      ':': {write: ':', L: shiftR1Step}
      'R': {write: ':', L: shiftR1Step}
      '-': {write: ':', L: shiftR1Step}
      ',': {write: ':', L: shiftR1Step}
  shiftR1Exc:
      '<': {write: '!', L: shiftR1Step}
      '>': {write: '!', L: shiftR1Step}
      '#': {write: '!', L: shiftR1Step}
      '0': {write: '!', L: shiftR1Step}
      '+': {write: '!', L: shiftR1Step}
      '1': {write: '!', L: shiftR1Step}
      ' ': {write: '!', L: shiftR1Step}
      ']': {write: '!', L: shiftR1Step}
      '!': {write: '!', L: shiftR1Step}
      'L': {write: '!', L: shiftR1Step}
      '[': {write: '!', L: shiftR1Step}
      '.': {write: '!', L: shiftR1Step}
      ':': {write: '!', L: shiftR1Step}
      'R': {write: '!', L: shiftR1Step}
      '-': {write: '!', L: shiftR1Step}
      ',': {write: '!', L: shiftR1Step}
  shiftR1Dot:
      '<': {write: '.', L: shiftR1Step}
      '>': {write: '.', L: shiftR1Step}
      '#': {write: '.', L: shiftR1Step}
      '0': {write: '.', L: shiftR1Step}
      '+': {write: '.', L: shiftR1Step}
      '1': {write: '.', L: shiftR1Step}
      ' ': {write: '.', L: shiftR1Step}
      ']': {write: '.', L: shiftR1Step}
      '!': {write: '.', L: shiftR1Step}
      'L': {write: '.', L: shiftR1Step}
      '[': {write: '.', L: shiftR1Step}
      '.': {write: '.', L: shiftR1Step}
      ':': {write: '.', L: shiftR1Step}
      'R': {write: '.', L: shiftR1Step}
      '-': {write: '.', L: shiftR1Step}
      ',': {write: '.', L: shiftR1Step}
  shiftR1Min:
      '<': {write: '-', L: shiftR1Step}
      '>': {write: '-', L: shiftR1Step}
      '#': {write: '-', L: shiftR1Step}
      '0': {write: '-', L: shiftR1Step}
      '+': {write: '-', L: shiftR1Step}
      '1': {write: '-', L: shiftR1Step}
      ' ': {write: '-', L: shiftR1Step}
      ']': {write: '-', L: shiftR1Step}
      '!': {write: '-', L: shiftR1Step}
      'L': {write: '-', L: shiftR1Step}
      '[': {write: '-', L: shiftR1Step}
      '.': {write: '-', L: shiftR1Step}
      ':': {write: '-', L: shiftR1Step}
      'R': {write: '-', L: shiftR1Step}
      '-': {write: '-', L: shiftR1Step}
      ',': {write: '-', L: shiftR1Step}
  shiftR1Plu:
      '<': {write: '+', L: shiftR1Step}
      '>': {write: '+', L: shiftR1Step}
      '#': {write: '+', L: shiftR1Step}
      '0': {write: '+', L: shiftR1Step}
      '+': {write: '+', L: shiftR1Step}
      '1': {write: '+', L: shiftR1Step}
      ' ': {write: '+', L: shiftR1Step}
      ']': {write: '+', L: shiftR1Step}
      '!': {write: '+', L: shiftR1Step}
      'L': {write: '+', L: shiftR1Step}
      '[': {write: '+', L: shiftR1Step}
      '.': {write: '+', L: shiftR1Step}
      ':': {write: '+', L: shiftR1Step}
      'R': {write: '+', L: shiftR1Step}
      '-': {write: '+', L: shiftR1Step}
      ',': {write: '+', L: shiftR1Step}
  shiftR1Has:
      '<': {write: '#', L: shiftR1Step}
      '>': {write: '#', L: shiftR1Step}
      '#': {write: '#', L: shiftR1Step}
      '0': {write: '#', L: shiftR1Step}
      '+': {write: '#', L: shiftR1Step}
      '1': {write: '#', L: shiftR1Step}
      ' ': {write: '#', L: shiftR1Step}
      ']': {write: '#', L: shiftR1Step}
      '!': {write: '#', L: shiftR1Step}
      'L': {write: '#', L: shiftR1Step}
      '[': {write: '#', L: shiftR1Step}
      '.': {write: '#', L: shiftR1Step}
      ':': {write: '#', L: shiftR1Step}
      'R': {write: '#', L: shiftR1Step}
      '-': {write: '#', L: shiftR1Step}
      ',': {write: '#', L: shiftR1Step}
  shiftR1Les:
      '<': {write: '<', L: shiftR1Step}
      '>': {write: '<', L: shiftR1Step}
      '#': {write: '<', L: shiftR1Step}
      '0': {write: '<', L: shiftR1Step}
      '+': {write: '<', L: shiftR1Step}
      '1': {write: '<', L: shiftR1Step}
      ' ': {write: '<', L: shiftR1Step}
      ']': {write: '<', L: shiftR1Step}
      '!': {write: '<', L: shiftR1Step}
      'L': {write: '<', L: shiftR1Step}
      '[': {write: '<', L: shiftR1Step}
      '.': {write: '<', L: shiftR1Step}
      ':': {write: '<', L: shiftR1Step}
      'R': {write: '<', L: shiftR1Step}
      '-': {write: '<', L: shiftR1Step}
      ',': {write: '<', L: shiftR1Step}
  shiftR1Gre:
      '<': {write: '>', L: shiftR1Step}
      '>': {write: '>', L: shiftR1Step}
      '#': {write: '>', L: shiftR1Step}
      '0': {write: '>', L: shiftR1Step}
      '+': {write: '>', L: shiftR1Step}
      '1': {write: '>', L: shiftR1Step}
      ' ': {write: '>', L: shiftR1Step}
      ']': {write: '>', L: shiftR1Step}
      '!': {write: '>', L: shiftR1Step}
      'L': {write: '>', L: shiftR1Step}
      '[': {write: '>', L: shiftR1Step}
      '.': {write: '>', L: shiftR1Step}
      ':': {write: '>', L: shiftR1Step}
      'R': {write: '>', L: shiftR1Step}
      '-': {write: '>', L: shiftR1Step}
      ',': {write: '>', L: shiftR1Step}
  shiftR1L:
      '<': {write: 'L', L: shiftR1Step}
      '>': {write: 'L', L: shiftR1Step}
      '#': {write: 'L', L: shiftR1Step}
      '0': {write: 'L', L: shiftR1Step}
      '+': {write: 'L', L: shiftR1Step}
      '1': {write: 'L', L: shiftR1Step}
      ' ': {write: 'L', L: shiftR1Step}
      ']': {write: 'L', L: shiftR1Step}
      '!': {write: 'L', L: shiftR1Step}
      'L': {write: 'L', L: shiftR1Step}
      '[': {write: 'L', L: shiftR1Step}
      '.': {write: 'L', L: shiftR1Step}
      ':': {write: 'L', L: shiftR1Step}
      'R': {write: 'L', L: shiftR1Step}
      '-': {write: 'L', L: shiftR1Step}
      ',': {write: 'L', L: shiftR1Step}
  shiftR1R:
      '<': {write: 'R', L: shiftR1Step}
      '>': {write: 'R', L: shiftR1Step}
      '#': {write: 'R', L: shiftR1Step}
      '0': {write: 'R', L: shiftR1Step}
      '+': {write: 'R', L: shiftR1Step}
      '1': {write: 'R', L: shiftR1Step}
      ' ': {write: 'R', L: shiftR1Step}
      ']': {write: 'R', L: shiftR1Step}
      '!': {write: 'R', L: shiftR1Step}
      'L': {write: 'R', L: shiftR1Step}
      '[': {write: 'R', L: shiftR1Step}
      '.': {write: 'R', L: shiftR1Step}
      ':': {write: 'R', L: shiftR1Step}
      'R': {write: 'R', L: shiftR1Step}
      '-': {write: 'R', L: shiftR1Step}
      ',': {write: 'R', L: shiftR1Step}
  shiftR1B:
      '<': {write: ' ', L: shiftR1Step}
      '>': {write: ' ', L: shiftR1Step}
      '#': {write: ' ', L: shiftR1Step}
      '0': {write: ' ', L: shiftR1Step}
      '+': {write: ' ', L: shiftR1Step}
      '1': {write: ' ', L: shiftR1Step}
      ' ': {write: ' ', L: shiftR1Step}
      ']': {write: ' ', L: shiftR1Step}
      '!': {write: ' ', L: shiftR1Step}
      'L': {write: ' ', L: shiftR1Step}
      '[': {write: ' ', L: shiftR1Step}
      '.': {write: ' ', L: shiftR1Step}
      ':': {write: ' ', L: shiftR1Step}
      'R': {write: ' ', L: shiftR1Step}
      '-': {write: ' ', L: shiftR1Step}
      ',': {write: ' ', L: shiftR1Step}
  shiftR10:
      '<': {write: '0', L: shiftR1Step}
      '>': {write: '0', L: shiftR1Step}
      '#': {write: '0', L: shiftR1Step}
      '0': {write: '0', L: shiftR1Step}
      '+': {write: '0', L: shiftR1Step}
      '1': {write: '0', L: shiftR1Step}
      ' ': {write: '0', L: shiftR1Step}
      ']': {write: '0', L: shiftR1Step}
      '!': {write: '0', L: shiftR1Step}
      'L': {write: '0', L: shiftR1Step}
      '[': {write: '0', L: shiftR1Step}
      '.': {write: '0', L: shiftR1Step}
      ':': {write: '0', L: shiftR1Step}
      'R': {write: '0', L: shiftR1Step}
      '-': {write: '0', L: shiftR1Step}
      ',': {write: '0', L: shiftR1Step}
  shiftR11:
      '<': {write: '1', L: shiftR1Step}
      '>': {write: '1', L: shiftR1Step}
      '#': {write: '1', L: shiftR1Step}
      '0': {write: '1', L: shiftR1Step}
      '+': {write: '1', L: shiftR1Step}
      '1': {write: '1', L: shiftR1Step}
      ' ': {write: '1', L: shiftR1Step}
      ']': {write: '1', L: shiftR1Step}
      '!': {write: '1', L: shiftR1Step}
      'L': {write: '1', L: shiftR1Step}
      '[': {write: '1', L: shiftR1Step}
      '.': {write: '1', L: shiftR1Step}
      ':': {write: '1', L: shiftR1Step}
      'R': {write: '1', L: shiftR1Step}
      '-': {write: '1', L: shiftR1Step}
      ',': {write: '1', L: shiftR1Step}
  shiftR1Step:
      '<': {write: '<', L: shiftR1}
      '>': {write: '>', L: shiftR1}
      '#': {write: '#', L: shiftR1}
      '0': {write: '0', L: shiftR1}
      '+': {write: '+', L: shiftR1}
      '1': {write: '1', L: shiftR1}
      ' ': {write: ' ', L: shiftR1}
      ']': {write: ']', L: shiftR1}
      '!': {write: '!', L: shiftR1}
      'L': {write: 'L', L: shiftR1}
      '[': {write: '[', L: shiftR1}
      '.': {write: '.', L: shiftR1}
      ':': {write: ':', L: shiftR1}
      'R': {write: 'R', L: shiftR1}
      '-': {write: '-', L: shiftR1}
      ',': {write: ',', L: shiftR1}
  shiftREnd:
      '<': {write: '[', R: changeStateR}
      '>': {write: '[', R: changeStateR}
      '#': {write: '[', R: changeStateR}
      '0': {write: '[', R: changeStateR}
      '+': {write: '[', R: changeStateR}
      '1': {write: '[', R: changeStateR}
      ' ': {write: '[', R: changeStateR}
      ']': {write: ']', R: changeStateR}
      '!': {write: '[', R: changeStateR}
      'L': {write: '[', R: changeStateR}
      '[': {write: '[', R: changeStateR}
      '.': {write: '[', R: changeStateR}
      ':': {write: '[', R: changeStateR}
      'R': {write: '[', R: changeStateR}
      '-': {write: '[', R: changeStateR}
      ',': {write: '[', R: changeStateR}
  changeState:
      '#': {write: '.', R: 0}
      '[': {write: '[', R: 0}
      '<': {write: '-', R: downState}
      '>': {write: '+', R: upState}
      '0': {write: '0', L: changeState}
      '+': {write: '+', L: changeState}
      '1': {write: '1', L: changeState}
      ' ': {write: ' ', L: changeState}
      '!': {write: '!', L: changeState}
      'L': {write: 'L', L: changeState}
      ']': {write: ']', L: changeState}
      '.': {write: '.', L: changeState}
      ':': {write: ':', L: changeState}
      'R': {write: 'R', L: changeState}
      '-': {write: '-', L: changeState}
      ',': {write: ',', L: changeState}
  changeStateR:
      '#': {write: '.', R: 0}
      '<': {write: '-', R: downState}
      '>': {write: '+', R: upState}
      '0': {write: '0', R: changeStateR}
      '+': {write: '+', R: changeStateR}
      '1': {write: '1', R: changeStateR}
      ' ': {write: ' ', R: changeStateR}
      ']': {write: ']', R: changeStateR}
      '!': {write: '!', R: changeStateR}
      'L': {write: 'L', R: changeStateR}
      '[': {write: '[', R: changeStateR}
      '.': {write: '.', R: changeStateR}
      ':': {write: ':', R: changeStateR}
      'R': {write: 'R', R: changeStateR}
      '-': {write: '-', R: changeStateR}
      ',': {write: ',', R: changeStateR}
  upState:
      '!': {write: ':', R: upState2}
      '<': {write: '<', R: upState}
      '>': {write: '>', R: upState}
      '#': {write: '#', R: upState}
      '0': {write: '0', R: upState}
      '+': {write: '+', R: upState}
      '1': {write: '1', R: upState}
      ' ': {write: ' ', R: upState}
      ']': {write: ']', R: upState}
      'L': {write: 'L', R: upState}
      '[': {write: '[', R: upState}
      '.': {write: '.', R: upState}
      ':': {write: ':', R: upState}
      'R': {write: 'R', R: upState}
      '-': {write: '-', R: upState}
      ',': {write: ',', R: upState}
  upState2:
      ':': {write: '!', L: changeState}
      '<': {write: '<', R: upState2}
      '>': {write: '>', R: upState2}
      '#': {write: '#', R: upState2}
      '0': {write: '0', R: upState2}
      '+': {write: '+', R: upState2}
      '1': {write: '1', R: upState2}
      ' ': {write: ' ', R: upState2}
      ']': {write: ']', R: upState2}
      '!': {write: '!', R: upState2}
      'L': {write: 'L', R: upState2}
      '[': {write: '[', R: upState2}
      '.': {write: '.', R: upState2}
      ',': {write: ',', R: upState2}
      'R': {write: 'R', R: upState2}
      '-': {write: '-', R: upState2}
  downState:
      '!': {write: ':', L: downState2}
      '<': {write: '<', R: downState}
      '>': {write: '>', R: downState}
      '#': {write: '#', R: downState}
      '0': {write: '0', R: downState}
      '+': {write: '+', R: downState}
      '1': {write: '1', R: downState}
      ' ': {write: ' ', R: downState}
      ']': {write: ']', R: downState}
      'L': {write: 'L', R: downState}
      '[': {write: '[', R: downState}
      '.': {write: '.', R: downState}
      ':': {write: ':', R: downState}
      'R': {write: 'R', R: downState}
      '-': {write: '-', R: downState}
      ',': {write: ',', R: downState}
  downState2:
      ':': {write: '!', R: downStateR}
      '<': {write: '<', L: downState2}
      '>': {write: '>', L: downState2}
      '#': {write: '#', L: downState2}
      '0': {write: '0', L: downState2}
      '+': {write: '+', L: downState2}
      '1': {write: '1', L: downState2}
      ' ': {write: ' ', L: downState2}
      ']': {write: ']', L: downState2}
      '!': {write: '!', L: downState2}
      'L': {write: 'L', L: downState2}
      '[': {write: '[', L: downState2}
      '.': {write: '.', L: downState2}
      ',': {write: ',', L: downState2}
      'R': {write: 'R', L: downState2}
      '-': {write: '-', L: downState2}
  downStateR:
      '<': {write: '-', L: downStateL}
      ']': {write: ']', R: go}
      '>': {write: '>', R: downStateR}
      '#': {write: '#', R: downStateR}
      '0': {write: '0', R: downStateR}
      '+': {write: '+', R: downStateR}
      '1': {write: '1', R: downStateR}
      ' ': {write: ' ', R: downStateR}
      '!': {write: '!', R: downStateR}
      'L': {write: 'L', R: downStateR}
      '[': {write: '[', R: downStateR}
      '.': {write: '.', R: downStateR}
      ':': {write: ':', R: downStateR}
      'R': {write: 'R', R: downStateR}
      '-': {write: '-', R: downStateR}
      ',': {write: ',', R: downStateR}
  downStateL:
      '!': {write: ':', L: downState2}
      '<': {write: '<', L: downStateL}
      '>': {write: '>', L: downStateL}
      '#': {write: '#', L: downStateL}
      '0': {write: '0', L: downStateL}
      '+': {write: '+', L: downStateL}
      '1': {write: '1', L: downStateL}
      ' ': {write: ' ', L: downStateL}
      ']': {write: ']', L: downStateL}
      'L': {write: 'L', L: downStateL}
      '[': {write: '[', L: downStateL}
      '.': {write: '.', L: downStateL}
      ':': {write: ':', L: downStateL}
      'R': {write: 'R', L: downStateL}
      '-': {write: '-', L: downStateL}
      ',': {write: ',', L: downStateL}
  done:
