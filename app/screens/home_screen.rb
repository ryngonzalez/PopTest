class HomeScreen < PM::Screen
  title "Home"

  def on_load
    @popped = false
    @button = add Button.new, frame: [[0, 0], [100, 100]], 
                              position: CGPointMake(view.size.width / 2, view.size.height / 2)

    gesture = UITapGestureRecognizer.alloc.initWithTarget(self, action: "tapped_square")
    @button.addGestureRecognizer gesture
  end

  def tapped_square
    size = @popped ? CGSizeMake(100, 100) : CGSizeMake(300, 300)

    animation = POPSpringAnimation.animationWithPropertyNamed(KPOPLayerSize)
    animation.toValue = NSValue.valueWithCGSize(size)
    animation.springBounciness = 12
    animation.springSpeed = 10

    @button.pop_addAnimation(animation, forKey: "animation")

    @popped = !@popped
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color("#FFFFFF")
    }
  end
end
