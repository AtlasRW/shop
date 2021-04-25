class Player
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 10
  end

  def show_state
    puts "#{@name} a #{@life} points de vie"
  end

  def gets_damage(damage)
    @life -= damage
    if @life < 1
      puts "#{@name} a été tué !"
    end
  end

  def attacks(victim)
    damage = compute_damage
    puts "#{@name} attaque #{victim.name}"
    puts "#{damage} points de dommages !"
    victim.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon}"
    if new_weapon > @weapon_level
      @weapon_level = new_weapon
      puts "Elle est meilleure que ton arme actuelle ! LVL #{@weapon_level} !"
    else
      puts "Encore un loot de m@*#$ ! Dommage."
      puts ""
    end
  end

  def search_health_pack
    health_pack = rand(1..6)

    if health_pack == 1
      puts "Tu n'as rien trouvé..."
    elsif health_pack ==6
      @life += 80
      puts "+80 PV"
    else
      @life += 50
      puts "+50 PV"
    end

    if @life > 100
      @life = 100
    end
  end
end