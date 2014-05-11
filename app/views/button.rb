class Button < UIView
  include PM::Styling

  def self.new
    button = alloc.initWithFrame(CGRectZero)
    button.position = CGPointMake(0, 0)
    button
  end

  def initWithFrame(frame)
    super
    set_attributes self, {
      background_color: hex_color("23cffd"),
      layer: {
        shadow_radius: 4.0,
        shadow_opacity: 0.2,
        corner_radius: 50.0,
        shadow_offset: CGSizeMake(0.0, 0.0),
        shadow_color: UIColor.blackColor.CGColor
      }
    }
    self
  end

end
