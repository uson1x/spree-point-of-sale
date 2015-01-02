# -*- encoding: utf-8 -*-
# stub: spree-point-of-sale 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spree-point-of-sale"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Torsten R, Nishant Tuteja, Manish Kangia"]
  s.date = "2014-12-20"
  s.description = "Extend functionality for spree to give shop like ordering ability through admin end"
  s.email = "info@vinsol.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "Versionfile", "app/assets/images/admin/pos/customer.png", "app/assets/images/admin/pos/del_16.png", "app/assets/images/admin/pos/plus_16.png", "app/assets/images/admin/pos/select.jpg", "app/assets/javascripts/admin/spree_pos.js", "app/assets/stylesheets/admin/html-label.css", "app/assets/stylesheets/admin/spree_pos.css", "app/controllers/spree/admin/barcode_controller.rb", "app/controllers/spree/admin/checkout_controller_decorator.rb", "app/controllers/spree/admin/pos_controller.rb", "app/helpers/admin/barcode_helper.rb", "app/models/spree/line_item_decorator.rb", "app/models/spree/order_decorator.rb", "app/models/spree/payment_decorator.rb", "app/models/spree/payment_method/point_of_sale.rb", "app/models/spree/shipment_decorator.rb", "app/models/spree/stock/coordinator_decorator.rb", "app/models/spree/stock/pos_availability_validator.rb", "app/models/spree/stock_location_decorator.rb", "app/models/spree/user_decorator.rb", "app/models/spree/variant_decorator.rb", "app/overrides/add_barcode_link_for_products_and_variants.rb", "app/overrides/add_is_pos_filter_to_admin_orders.rb", "app/overrides/add_pos_button.rb", "app/overrides/add_store_to_spree_stock_locations.rb", "app/overrides/admin_adds_pos_config.rb", "app/overrides/codes.rb", "app/overrides/pos_tab.rb", "app/views/spree/admin/barcode/basic.html.erb", "app/views/spree/admin/orders/_admin_pos_config.html.erb", "app/views/spree/admin/orders/_pos_button.html.erb", "app/views/spree/admin/pos/find.html.erb", "app/views/spree/admin/pos/show.html.erb", "app/views/spree/admin/pos/update_stock_location.js.erb", "app/views/spree/admin/products/_barcode_product_link.html.erb", "app/views/spree/admin/products/_barcode_variant_link.html.erb", "config/application.rb", "config/boot.rb", "config/initializers/constants.rb", "config/initializers/spree.rb", "config/locales/codes-fi.yml", "config/locales/en.yml", "config/locales/fi.yml", "config/routes.rb", "db/migrate/20130723140316_add_delivered_at_and_canceled_at_to_spree_shipments.rb", "db/migrate/20130730102503_add_store_and_address_id_in_spree_stock_locations.rb", "db/migrate/20131014053417_add_is_pos_to_spree_orders.rb", "db/migrate/20131025110309_add_card_name_to_spree_payments.rb", "lib/generators/spree_pos/install/install_generator.rb", "lib/spree-point-of-sale.rb", "lib/spree_pos/configuration.rb", "lib/spree_pos/engine.rb", "spec/constants_spec.rb", "spec/controllers/spree/admin/barcode_controller_spec.rb", "spec/controllers/spree/admin/pos_controller_spec.rb", "spec/models/spree/line_item_decorator_spec.rb", "spec/models/spree/order_decorator_spec.rb", "spec/models/spree/payment_decorator_spec.rb", "spec/models/spree/payment_method/point_of_sale_spec.rb", "spec/models/spree/shipment_decorator_spec.rb", "spec/models/spree/stock/coordinator_spec.rb", "spec/models/spree/stock/pos_availability_validator_spec.rb", "spec/models/spree/stock_location_decorator_spec.rb", "spec/models/spree/user_decorator_spec.rb", "spec/models/spree/variant_decorator_spec.rb", "spec/spec_helper.rb", "spree-point-of-sale.gemspec"]
  s.homepage = "http://vinsol.com"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.3"
  s.summary = "Point of sale screen for Spree"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.4.0"])
      s.add_runtime_dependency(%q<barby>, [">= 0"])
      s.add_runtime_dependency(%q<prawn>, [">= 0"])
      s.add_runtime_dependency(%q<chunky_png>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.4.0"])
      s.add_dependency(%q<barby>, [">= 0"])
      s.add_dependency(%q<prawn>, [">= 0"])
      s.add_dependency(%q<chunky_png>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.4.0"])
    s.add_dependency(%q<barby>, [">= 0"])
    s.add_dependency(%q<prawn>, [">= 0"])
    s.add_dependency(%q<chunky_png>, [">= 0"])
  end
end
