require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan
  def test_everything_is_an_object
    assert __, 1.is_a?(Object)
    assert __, 1.5.is_a?(Object)
    assert __, "string".is_a?(Object)
    assert __, nil.is_a?(Object)
    assert __, Object.is_a?(Object)
  end

  def test_objects_can_be_converted_to_strings
    assert __, 123.to_s
    assert __, nil.to_s
  end

  def test_objects_can_be_inspected
    assert __, 123.inspect
    assert __, nil.inspect
  end

  def test_every_object_has_an_id
    obj = Object.new
    assert __, obj.object_id.class
  end

  def test_every_object_has_different_id
    obj = Object.new
    another_obj = Object.new
    assert __, obj.object_id != another_obj.object_id
  end

  def test_small_integers_have_fixed_ids
    assert __, 0.object_id
    assert __, 1.object_id
    assert __, 2.object_id
    assert __, 100.object_id

    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?
  end

  def test_clone_creates_a_different_object
    obj = Object.new
    copy = obj.clone

    assert __, obj           != copy
    assert __, obj.object_id != copy.object_id
  end
end
