require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutHashes < Neo::Koan
  def test_creating_hashes
    empty_hash = Hash.new
    assert __, empty_hash.class
    assert __, empty_hash
    assert __, empty_hash.size
  end

  def test_hash_literals
    hash = { :one => "uno", :two => "dos" }
    assert __, hash.size
  end

  def test_accessing_hashes
    hash = { :one => "uno", :two => "dos" }
    assert __, hash[:one]
    assert __, hash[:two]
    assert __, hash[:doesnt_exist]
  end

  def test_accessing_hashes_with_fetch
    hash = { :one => "uno" }
    assert __, hash.fetch(:one)
    assert(___) do
      hash.fetch(:doesnt_exist)
    end

    # THINK ABOUT IT:
    #
    # Why might you want to use #fetch instead of #[] when accessing hash keys?
  end

  def test_changing_hashes
    hash = { :one => "uno", :two => "dos" }
    hash[:one] = "eins"

    expected = { :one => __, :two => "dos" }
    assert __, hash

    # Bonus Question: Why was "expected" broken out into a variable
    # rather than used as a literal?
  end

  def test_hash_is_unordered
    hash1 = { :one => "uno", :two => "dos" }
    hash2 = { :two => "dos", :one => "uno" }

    assert __, hash1 == hash2
  end

  def test_hash_keys
    hash = { :one => "uno", :two => "dos" }
    assert __, hash.keys.size
    assert __, hash.keys.include?(:one)
    assert __, hash.keys.include?(:two)
    assert __, hash.keys.class
  end

  def test_hash_values
    hash = { :one => "uno", :two => "dos" }
    assert __, hash.values.size
    assert __, hash.values.include?("uno")
    assert __, hash.values.include?("dos")
    assert __, hash.values.class
  end

  def test_combining_hashes
    hash = { "jim" => 53, "amy" => 20, "dan" => 23 }
    new_hash = hash.merge({ "jim" => 54, "jenny" => 26 })

    assert __, hash != new_hash

    expected = { "jim" => __, "amy" => 20, "dan" => 23, "jenny" => __ }
    assert __, expected == new_hash
  end

  def test_default_value
    hash1 = Hash.new
    hash1[:one] = 1

    assert __, hash1[:one]
    assert __, hash1[:two]

    hash2 = Hash.new("dos")
    hash2[:one] = 1

    assert __, hash2[:one]
    assert __, hash2[:two]
  end

  def test_default_value_is_the_same_object
    hash = Hash.new([])

    hash[:one] << "uno"
    hash[:two] << "dos"

    assert __, hash[:one]
    assert __, hash[:two]
    assert __, hash[:three]

    assert __, hash[:one].object_id == hash[:two].object_id
  end

  def test_default_value_with_block
    hash = Hash.new {|hash, key| hash[key] = [] }

    hash[:one] << "uno"
    hash[:two] << "dos"

    assert __, hash[:one]
    assert __, hash[:two]
    assert __, hash[:three]
  end
end
