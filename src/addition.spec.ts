import { addition } from './addition';

describe('addition', () => {
  it('should return the correct sum', () => {
    expect(addition(1, 2)).toBe(3);
  });
});
