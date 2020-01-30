/* Sprite is an abstract class representing something that will move around the screen
 * a Sprite must know it's current position (x, y) and it's velocity vector <dx, dy>
 * by default a Sprite starts with <0, 0> velocity.
 * included in the Sprite class are a few standard methods that are useful--see comments
 */
class Vector2
{
  // the vector's location
  double x;
  double y;
  
  // initialize a Sprite at a given coordinate.
  Vector2(double x, double y)
  {
    this.x = x;
    this.y = y;
  }

  double magnitude()
  {
    return Math.sqrt(this.x*this.x+this.y*this.y); 
    //returns the magnitude, or the x coordinates squared plus the y coordinates squared
  }
  Vector2 add(Vector2 other)
  {
    return new Vector2(this.x+other.x,this.y+other.y);
    //returns the sum of two vectors by adding the widths and lengths
  }
  
  Vector2 subtract(Vector2 other)
  {
    return new Vector2((this.x-other.x),(this.y-other.y));
    //returns the difference of two vectors by subtracting the widths and lengths
  }
  Vector2 inverse()
  {
    return new Vector2(-(this.x),-(this.y));
    //returns the inverse of a vector by multiplying the widths and lengths by negative one
  }
  Vector2 scale(double s)
  {
    return new Vector2(s*(this.x),s*(this.y));
    //multiplies the vector by a scalar by multiplying both the width and length by it
  }
  Vector2 perpendicular()
  {
    return new Vector2(y,-x);
    //finds the perpindiculat vector by switching the widths and lengths and flipping the subsequent vector over the x axis
  }
  Vector2 unitVector()
  {
    return new Vector2(x/(Math.sqrt(x*x+y*y)),(y/Math.sqrt(x*x+y*y)));
    //returns the unit vector by dividing the width and lengths by the magnitude
  }
  double dotProduct(Vector2 other)
  {
    return this.x*other.x+this.y*other.y;
    //returns the dot product by multiplying the widths and lengths and then adding them
  }
  double angle(Vector2 other)
  {
    return Math.abs(Math.atan(this.y/this.x)-Math.atan(other.y/other.x));
    //returns the angle by taking the arctan of both of the lengths and finding the difference
  }
}
