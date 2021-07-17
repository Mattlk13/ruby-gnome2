# Copyright (C) 2014-2021  Ruby-GNOME Project Team
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

require "vte3"

module VteTestUtils
  private
  def omit_if_not_respond(instance, method_name)
    unless instance.respond_to?(method_name)
      omit("#{instance.class}##{method_name} is not respond.")
    end
  end

  def omit_if_not_const_defined(constant_name)
    unless Object.const_defined?(constant_name)
      omit("#{constant_name} is not defined.")
    end
  end

  def only_vte_version(major, minor, micro=nil)
    micro ||= 0
    unless Vte::Version.or_later?(major, minor, micro)
      omit("Require VTE >= #{major}.#{minor}.#{micro}")
    end
  end
end
